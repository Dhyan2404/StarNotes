package org.apache.poi.poifs.eventfilesystem;

import org.apache.poi.hpsf.ClassID;
import org.apache.poi.poifs.filesystem.DocumentInputStream;
import org.apache.poi.poifs.filesystem.POIFSDocumentPath;

/* loaded from: classes12.dex */
public class POIFSReaderEvent {
    private final String documentName;
    private final POIFSDocumentPath path;
    private final ClassID storageClassId;
    private final DocumentInputStream stream;

    public POIFSReaderEvent(DocumentInputStream documentInputStream, POIFSDocumentPath pOIFSDocumentPath, String str, ClassID classID) {
        this.stream = documentInputStream;
        this.path = pOIFSDocumentPath;
        this.documentName = str;
        this.storageClassId = classID;
    }

    public String getName() {
        return this.documentName;
    }

    public POIFSDocumentPath getPath() {
        return this.path;
    }

    public ClassID getStorageClassId() {
        return this.storageClassId;
    }

    public DocumentInputStream getStream() {
        return this.stream;
    }
}
