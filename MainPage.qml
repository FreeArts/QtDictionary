import QtQuick 2.4

MainPageForm {

    button.onClicked:
    {
        welcome_label.text = "Hello"
        welcome_label.color = "steelblue"
    }
}
