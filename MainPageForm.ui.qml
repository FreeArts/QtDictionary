import QtQuick 2.4
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.0

Item {
    id: item1
    width: 450
    height: 570
    property alias maxWordsLabel: maxWordsLabel
    property alias currentWordNumberLabel: currentWordNumberLabel
    property alias prevWord: prevWord
    property alias nextWord: nextWord
    property alias mouseArea: mouseArea
    property alias hintLabel: hintLabel
    property alias allWordsButton: allWordsButton
    property alias secondHalfButton: secondHalfButton
    property alias firstHalfButton: firstHalfButton
    property alias askedWordLabel: askedWordLabel
    property alias okButton: okButton
    property alias answerInput: answerInput

    Label {
        id: hintLabel
        x: 356
        y: 177
        width: 69
        height: 26
        text: qsTr("Hint")
        anchors.verticalCenterOffset: 48
        anchors.horizontalCenterOffset: 2
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
    }

    MouseArea {
        id: mouseArea
        x: 356
        y: 177
        width: 70
        height: 26
        anchors.horizontalCenterOffset: 2
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenterOffset: 48
        anchors.verticalCenter: parent.verticalCenter
    }

    Button {
        id: allWordsButton
        x: 169
        y: 287
        text: qsTr("All Words")
        anchors.verticalCenterOffset: 0
        anchors.horizontalCenterOffset: 1
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        Layout.preferredHeight: 40
        Layout.preferredWidth: 112
    }

    ColumnLayout {
        x: 136
        y: 53
        width: 202
        height: 165
        anchors.verticalCenterOffset: -189
        anchors.horizontalCenterOffset: 1
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        Label {
            id: askedWordLabel
            text: "?"
            Layout.fillHeight: false
            Layout.fillWidth: true
            Layout.preferredHeight: 23
            Layout.preferredWidth: 102
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }

        TextField {
            id: answerInput
            Layout.fillWidth: true
            horizontalAlignment: Text.AlignHCenter
        }

        Button {
            id: okButton
            text: qsTr("OK")
            Layout.fillWidth: true
            Layout.fillHeight: false
            Layout.preferredHeight: 38
            Layout.preferredWidth: 111
        }
    }

    RowLayout {
        x: 78
        y: 235
        width: 324
        height: 43
        anchors.verticalCenterOffset: -59
        anchors.horizontalCenterOffset: 1
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        spacing: 64.3
        visible: true
        clip: false

        Button {
            id: firstHalfButton
            text: qsTr("Words first Half")
            padding: 3
            Layout.minimumWidth: 0
            Layout.fillHeight: true
            Layout.fillWidth: false
            Layout.preferredHeight: 40
            Layout.preferredWidth: 127
        }

        Button {
            id: secondHalfButton
            text: qsTr("Words Second Half")
            Layout.fillHeight: true
            Layout.rowSpan: 1
            Layout.fillWidth: false
            Layout.preferredHeight: 40
            Layout.preferredWidth: 130
        }
    }

    Button {
        id: nextWord
        x: 287
        y: 439
        text: qsTr("next")
        anchors.verticalCenterOffset: 174
        anchors.horizontalCenterOffset: 112
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Button {
        id: prevWord
        x: 63
        y: 439
        text: qsTr("prev")
        anchors.verticalCenterOffset: 174
        anchors.horizontalCenterOffset: -112
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }

    Label {
        id: divideLabel
        x: 220
        y: 519
        width: 15
        height: 21
        text: qsTr("/")
        anchors.verticalCenterOffset: 244
        anchors.horizontalCenterOffset: 3
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
    }

    Label {
        id: maxWordsLabel
        x: 241
        y: 522
        width: 44
        height: 15
        anchors.verticalCenterOffset: 244
        anchors.horizontalCenterOffset: 29
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
    }

    Label {
        id: currentWordNumberLabel
        x: 167
        y: 521
        width: 47
        height: 16
        text: qsTr("1")
        anchors.verticalCenterOffset: 243
        anchors.horizontalCenterOffset: -25
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
    }
}
