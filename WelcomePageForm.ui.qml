import QtQuick 2.4
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.3

Item {
    width: 470
    height: 570
    property alias loadCSVbutton: loadCSVbutton

    Label {
        id: welcomeLabel
        x: 201
        y: 46
        width: 69
        height: 20
        text: qsTr("Welcome")
    }

    Text {
        id: welcomeText
        x: 82
        y: 91
        width: 307
        height: 137
        text: "This is one Dictionary program where you can load your words, and of course you\ncan add new one. \n\n!!IMPORTANT!! If you would load your words from file, the program only can load the .csv format.\n\nWhen you load your words, the program copy to it's directory so when you add new words by QtDictionary it can not damage your original csv file. Of course you can export your QtDictionary words to new csv file."
        fontSizeMode: Text.FixedSize
        wrapMode: Text.WordWrap
        verticalAlignment: Text.AlignTop
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: 12
    }

    Button {
        id: loadCSVbutton
        x: 178
        y: 310
        width: 129
        height: 32
        text: qsTr("Load CSV")
    }
}
