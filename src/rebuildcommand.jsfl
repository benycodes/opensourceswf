fl.outputPanel.clear();
if (fl.runScript("file:///D:/Xampp/htdocs/asv/jsfl/import.jsfl","ShouldStop")!="0") {
fl.runScript("file:///D:/Xampp/htdocs/asv/jsfl/rebuildpart1.jsfl");
fl.runScript("file:///D:/Xampp/htdocs/asv/jsfl/rebuildpart2.jsfl");
fl.runScript("file:///D:/Xampp/htdocs/asv/jsfl/rebuildpart3.jsfl");
fl.runScript("file:///D:/Xampp/htdocs/asv/jsfl/rebuildpart4.jsfl");
fl.runScript("file:///D:/Xampp/htdocs/asv/jsfl/rebuildpart5.jsfl");
fl.saveDocument(fl.getDocumentDOM(), "file:///D:/Xampp/htdocs/asv/PRODUCTION-201611291003-338511768_rebuild_done.fla");
}
