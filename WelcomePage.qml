import QtQuick 2.4
import QtQuick.Dialogs 1.2

WelcomePageForm
{
    loadCSVbutton.onClicked:
    {
        fileDialogCSV.visible = true
    }

    FileDialog
    {
        id: fileDialogCSV
        title: "Please choose your csv file"
        folder: shortcuts.home
        onAccepted: {
            QtDictionary.readWordsfromCSV(fileDialogCSV.fileUrl)
        }
        onRejected: {
            //onsole.log("Canceled")
        }
        Component.onCompleted: visible = false
    }
}
