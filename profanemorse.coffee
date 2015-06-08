MORSE_TABLE = {
    'A': '.-',
    'B': '-...',
    'C': '-.-.',
    'D': '-..',
    'E': '.',
    'F': '..-.',
    'G': '--.',
    'H': '....',
    'I': '..',
    'J': '.---',
    'K': '-.-',
    'L': '.-..',
    'M': '--',
    'N': '-.',
    'O': '---',
    'P': '.--.',
    'Q': '--.-',
    'R': '.-.',
    'S': '...',
    'T': '-',
    'U': '..-',
    'V': '...-',
    'W': '.--',
    'X': '-..-',
    'Y': '-.--',
    'Z': '--..',
    '0': '-----',
    '1': '.----',
    '2': '..---',
    '3': '...--',
    '4': '....-',
    '5': '.....',
    '6': '-....',
    '7': '--...',
    '8': '---..',
    '9': '----.',
    '.': '.-.-.-',
    ',': '--..--',
    ':': '---...',
    '?': '..--..',
    '\'': '.----.',
    '-': '-....-',
    '/': '-..-.',
    '"': '.-..-.',
    '@': '.--.-.',
    '=': '-...-',
}
VALID_MORSE_CHARS = _.keys(MORSE_TABLE)

convertToMorse = (inputString) ->
    return [] if !inputString

    outputString = inputString.replace /./g, (character) ->
        character = character.toUpperCase()
        if !_.contains(VALID_MORSE_CHARS, character)
            return ' '
        return MORSE_TABLE[character]

    # Convert to array of characters
    return _.map(outputString)

angular.module('profanemorse', []).run ($rootScope) ->
    $rootScope.message = 'How do you do?'
    $rootScope.convertToMorse = convertToMorse
    $rootScope.symbolToString = (symbol) ->
        return {
            '.': 'dot',
            '-': 'dash',
            ' ': 'space'
        }[symbol]
