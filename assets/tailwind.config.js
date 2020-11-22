const colors = require('tailwindcss/colors')

module.exports = {
    purge: [
	"../**/*.html.eex",
	"../**/*.html.leex",
	"../**/views/**/*.ex",
	"../**/live/**/*.ex",
	"./js/**/*.js"
    ],
    darkMode: 'media', // or 'media' or 'class'
    theme: {
	fontFamily: {
	    sans: ['Graphik', 'sans-serif'],
	    serif: ['Merriweather', 'serif']
	},
	extend: {},
    },
    variants: {
	extend: {},
    },
    plugins: [
	require('@tailwindcss/typography'),
    ],
}
