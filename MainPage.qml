import QtQuick 2.4
import QtQuick.Controls 2.1

MainPageForm {
    property int l_counter: 0

    okButton.onClicked: {

        askedWordLabel.text = QtDictionary.firstLangListBuffer[l_counter]
        l_counter++
        console.log(QtDictionary.firstLangListBuffer.length)
}
    answerInput.onAccepted:
    {
        //textInput.selectAll()
        //textInput.maximumLength
        //var a = textInput.getText(textInput.selectionStart, textInput.selectionEnd)
        //console.log(a)

        //textInput.text = "alma"
        //textInput.text.toString()
        //console.log(b)
    }

}
