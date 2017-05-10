import QtQuick 2.4
import QtQuick.Controls 2.1

Item {
    id: item1
    width: 450
    height: 570
    property alias searchCSVbutton: searchCSVbutton
    property alias loadCSVbutton: loadCSVbutton

    Label {
        id: welcomeLabel
        x: 191
        y: 40
        width: 69
        height: 20
        text: qsTr("Welcome")
        anchors.verticalCenterOffset: -238
        anchors.horizontalCenterOffset: 1
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Text {
        id: welcomeText
        x: 72
        y: 84
        width: 307
        height: 137
        text: "This is one Dictionary program where you can load your words, and of course you\ncan add new one. \n\n!!IMPORTANT!! If you would load your words from file, the program only can load the .csv format.\n\nWhen you load your words, the program copy to it's directory so when you add new words by QtDictionary it can not damage your original csv file. Of course you can export your QtDictionary words to new csv file."
        anchors.verticalCenterOffset: -131
        anchors.horizontalCenterOffset: 1
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        fontSizeMode: Text.FixedSize
        wrapMode: Text.WordWrap
        verticalAlignment: Text.AlignTop
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: 12
    }

    Button {
        id: loadCSVbutton
        x: 161
        y: 289
        width: 257
        height: 44
        text: qsTr("Load CSV")
        anchors.verticalCenterOffset: 84
        anchors.horizontalCenterOffset: 1
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Button {
        id: searchCSVbutton
        x: 161
        y: 345
        width: 129
        height: 40
        text: qsTr("Search CSV")
        anchors.verticalCenterOffset: 31
        anchors.horizontalCenterOffset: 1
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }
}
