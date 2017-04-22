import QtQuick 2.4
import QtQuick.Controls 2.1

import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.2



MainPageForm {

    property string someNumber: "test"

    textInput.onAccepted: {

        //textInput.selectAll()
        //textInput.maximumLength
        //var a = textInput.getText(textInput.selectionStart, textInput.selectionEnd)
        //console.log(a)

        //textInput.text = "alma"
        //textInput.text.toString()
        //console.log(b)

}

    button.onClicked:
    {
        welcome_label.text = "Hello"
        welcome_label.color = "steelblue" 
    }
}
