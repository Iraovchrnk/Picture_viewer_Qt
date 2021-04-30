import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Dialogs 1.0
import Qt.labs.folderlistmodel 2.15

ApplicationWindow {
    width: 840
    height: 580
    visible: true
    title: qsTr("Picture viewer")

    FileDialog {
        id: fileDialog
        title: "Choose a folder with some images"
        selectFolder: true
        onAccepted: folderModel.folder = fileUrl + "/"
    }

    FolderListModel {
        id: folderModel
        nameFilters: ["*.png", "*.jpg", "*.gif"]
    }

    SwipeView {
        id: swipeView

        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        ListFormPage {}

        GridFormPage {}

        PathFormPage {}

    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        TabButton {
            text: qsTr("List")
        }
        TabButton {
            text: qsTr("Grid")
        }
        TabButton {
            text: qsTr("Path view")
        }
    }


    Component.onCompleted: {
        fileDialog.open();
    }

}
