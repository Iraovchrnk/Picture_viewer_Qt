import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    width: 800
    height: 500

    header: ButtonOpenFile {}

    GridView {
        id: gridView
        anchors.margins: 20
        anchors.fill: parent
        anchors.centerIn: parent
        cellWidth: 150
        cellHeight: 100
        delegate: GridViewDelegate {}
        model: folderModel
        ScrollBar.vertical: ScrollBar {
            anchors.left: listView.right
            id: scrollBar
            active: true
            width: 20
        }
    }

    FullSizeImage {
        id: fullListImg
        anchors.fill: parent
        anchors.centerIn: parent
    }
}
