package org.apache.poi.poifs.filesystem;

/* loaded from: classes12.dex */
public class POIFSWriterEvent {
    private String documentName;
    private int limit;
    private POIFSDocumentPath path;
    private DocumentOutputStream stream;

    public POIFSWriterEvent(DocumentOutputStream documentOutputStream, POIFSDocumentPath pOIFSDocumentPath, String str, int i) {
        this.stream = documentOutputStream;
        this.path = pOIFSDocumentPath;
        this.documentName = str;
        this.limit = i;
    }

    public int getLimit() {
        return this.limit;
    }

    public String getName() {
        return this.documentName;
    }

    public POIFSDocumentPath getPath() {
        return this.path;
    }

    public DocumentOutputStream getStream() {
        return this.stream;
    }
}
