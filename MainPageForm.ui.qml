import QtQuick 2.4
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.3

Item {
    width: 640
    height: 480
    property alias welcome_label: welcome_label
    property alias button: button

    Button {
        id: button
        x: 250
        y: 201
        width: 111
        height: 38
        text: qsTr("Button")
    }

    Label {
        id: welcome_label
        x: 255
        y: 138
        width: 102
        height: 23
        text: qsTr("Label")
    }
}
