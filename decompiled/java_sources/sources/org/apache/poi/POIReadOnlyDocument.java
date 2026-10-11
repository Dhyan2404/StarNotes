package org.apache.poi;

import java.io.File;
import java.io.OutputStream;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;

/* loaded from: classes12.dex */
public abstract class POIReadOnlyDocument extends POIDocument {
    public POIReadOnlyDocument(DirectoryNode directoryNode) {
        super(directoryNode);
    }

    private static void notImplemented() {
        throw new IllegalStateException("Writing is not yet implemented for this Document Format");
    }

    @Override // org.apache.poi.POIDocument
    public void write() {
        notImplemented();
    }

    public POIReadOnlyDocument(POIFSFileSystem pOIFSFileSystem) {
        super(pOIFSFileSystem);
    }

    @Override // org.apache.poi.POIDocument
    public void write(File file) {
        notImplemented();
    }

    @Override // org.apache.poi.POIDocument
    public void write(OutputStream outputStream) {
        notImplemented();
    }
}
