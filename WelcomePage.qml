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
            secondPage.enabled = true
            secondPage.askedWordLabel.text = QtDictionary.secondLangListBuffer[0]
            g_counterMAX_i = QtDictionary.DictionaryItemNumber
        }
        onRejected: {
            //console.log("Canceled")
        }
        Component.onCompleted: visible = false
    }
}
