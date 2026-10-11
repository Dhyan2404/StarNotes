package org.apache.poi.hpsf;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import org.apache.poi.POIDocument;
import org.apache.poi.poifs.filesystem.EntryUtils;
import org.apache.poi.poifs.filesystem.FilteringDirectoryNode;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;

/* loaded from: classes12.dex */
public class HPSFPropertiesOnlyDocument extends POIDocument {
    public HPSFPropertiesOnlyDocument(POIFSFileSystem pOIFSFileSystem) {
        super(pOIFSFileSystem);
    }

    @Override // org.apache.poi.POIDocument
    public void write() throws IOException {
        POIFSFileSystem fileSystem = getDirectory().getFileSystem();
        validateInPlaceWritePossible();
        writeProperties(fileSystem, null);
        fileSystem.writeFilesystem();
    }

    @Override // org.apache.poi.POIDocument
    public void write(File file) throws IOException {
        POIFSFileSystem create = POIFSFileSystem.create(file);
        try {
            write(create);
            create.writeFilesystem();
            create.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (create != null) {
                    try {
                        create.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    @Override // org.apache.poi.POIDocument
    public void write(OutputStream outputStream) throws IOException {
        POIFSFileSystem pOIFSFileSystem = new POIFSFileSystem();
        try {
            write(pOIFSFileSystem);
            pOIFSFileSystem.writeFilesystem(outputStream);
            pOIFSFileSystem.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    pOIFSFileSystem.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    private void write(POIFSFileSystem pOIFSFileSystem) throws IOException {
        ArrayList arrayList = new ArrayList(2);
        writeProperties(pOIFSFileSystem, arrayList);
        EntryUtils.copyNodes(new FilteringDirectoryNode(getDirectory(), arrayList), new FilteringDirectoryNode(pOIFSFileSystem.getRoot(), arrayList));
    }
}
