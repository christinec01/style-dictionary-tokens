const path = require('path')
const Handlebars = require('handlebars');
const fs = require('fs')
const styleDictionary = require('style-dictionary').extend(
    {
        "source": ["properties/**/*.json"],
        "platforms": {
            "android": {
                "transformGroup": "android",
                "buildPath": "build/android/",
                "files": [{
                  "destination": "font_dimens.xml",
                  "format": "android/fontDimens"
                },{
                  "destination": "colors.xml",
                  "format": "android/colors"
                }]
              },
          "affirm-ios-color": {
            "buildPath": "build/ios-swift/",
            "files": [{
              "destination": "AffirmColors.swift",
              "format": "affirm-ios",
              "className": "StyleDictionaryColor",
              transform: "name/ti/camel",
              "filter": (prop) => {
                //   console.log(prop)
                  return true
              }
            }]
          }
        }
      }
      
);


// console.log(styleDictionary)
const template = Handlebars.compile( fs.readFileSync('templates/UIColor.swift.hbs').toString() );
const Color = require('color');
const camelcase = require('camelcase')
const RGB_NORMAL = 255;

styleDictionary.registerFormat({
    name: 'affirm-ios',
    
    formatter: function(dictionary, platform) {
        // console.log(dictionary.properties)
        const baseColors = dictionary.properties.color.base
        const greys = Object.values(baseColors.gray)
        const red = [baseColors.red]
        const greens = [baseColors.green]

        const colors = [
            ...greys,
            ...red,
            ...greens
        ].map(({ value, ...rest}) => {
            const name = camelcase(rest.path)
            const color = Color(value)

            const rgbArray = color.rgb().array()
            const red = rgbArray[0] / RGB_NORMAL
            const green = rgbArray[1] / RGB_NORMAL
            const blue = rgbArray[2] / RGB_NORMAL 
            return { name, red, green, blue }

        })

        return template({
            colors
        })
    }
})

styleDictionary.buildAllPlatforms();