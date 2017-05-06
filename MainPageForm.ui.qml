import QtQuick 2.4
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.0

Item {
    id: item1
    width: 470
    height: 570
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
        anchors.verticalCenterOffset: -99
        anchors.horizontalCenterOffset: 158
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
        anchors.horizontalCenterOffset: 158
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenterOffset: -99
        anchors.verticalCenter: parent.verticalCenter
    }

    RowLayout {
        x: 46
        y: 265
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        Button {
            id: firstHalfButton
            text: qsTr("Words first Half")
            Layout.preferredHeight: 40
            Layout.preferredWidth: 127
        }

        Button {
            id: allWordsButton
            text: qsTr("All Words")
            Layout.preferredHeight: 40
            Layout.preferredWidth: 112
        }

        Button {
            id: secondHalfButton
            text: qsTr("Words Second Half")
            Layout.preferredHeight: 40
            Layout.preferredWidth: 130
        }
    }

    ColumnLayout {
        x: 136
        y: 53
        width: 202
        height: 165
        anchors.verticalCenterOffset: -151
        anchors.horizontalCenterOffset: 0
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
}
