import QtQuick 2.0
import QtQuick.Controls 2
import QtQuick.Dialogs 1.0

Button {
    height: 60
    anchors.left: parent.left
    anchors.top: parent.top
    text: "Open folder"
    onClicked: fileDialog.open()
}

