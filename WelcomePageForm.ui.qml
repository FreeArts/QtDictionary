import QtQuick 2.4
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.3

Item {
    width: 640
    height: 480
    property alias loadCSVbutton: loadCSVbutton

    Label {
        id: welcomeLabel
        x: 286
        y: 74
        width: 69
        height: 20
        text: qsTr("Welcome")
    }

    Text {
        id: welcomeText
        x: 167
        y: 119
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
        x: 263
        y: 338
        width: 129
        height: 32
        text: qsTr("Load CSV")
    }
}
