import QtQuick 2.4
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.3

Item {
    width: 640
    height: 480
    property alias askedWordLabel: askedWordLabel
    property alias okButton: okButton
    property alias answerInput: answerInput

    Button {
        id: okButton
        x: 265
        y: 192
        width: 111
        height: 38
        text: qsTr("Button")
    }

    Label {
        id: askedWordLabel
        x: 269
        y: 79
        width: 102
        height: 23
        text: "?"
        horizontalAlignment: Text.AlignHCenter
    }

    TextField {
        id: answerInput
        x: 221
        y: 121
    }
}
