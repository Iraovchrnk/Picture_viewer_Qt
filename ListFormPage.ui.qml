import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    width: 800
    height: 500

    header: ButtonOpenFile {}

    ListView {
        id: listView
        width: 200
        height: parent.height
        delegate: ListViewDelegate {}
        model: folderModel
        ScrollBar.vertical: ScrollBar {
            anchors.left: listView.right
            id: scrollBar
            active: true
            width: 20
        }
    }

    FullSizeImage {
        id: fullGridImage
        width: 569
        height: 432
        anchors.left: listView.right
        anchors.margins: 25
    }
}
