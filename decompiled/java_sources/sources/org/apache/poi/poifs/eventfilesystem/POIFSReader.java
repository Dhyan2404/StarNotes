package org.apache.poi.poifs.eventfilesystem;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import org.apache.poi.poifs.eventfilesystem.POIFSReader;
import org.apache.poi.poifs.eventfilesystem.POIFSReaderEvent;
import org.apache.poi.poifs.filesystem.DocumentInputStream;
import org.apache.poi.poifs.filesystem.POIFSDocument;
import org.apache.poi.poifs.filesystem.POIFSDocumentPath;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.poifs.property.DirectoryProperty;
import org.apache.poi.poifs.property.DocumentProperty;
import org.apache.poi.poifs.property.Property;
import org.apache.poi.util.IOUtils;

/* loaded from: classes12.dex */
public class POIFSReader {
    private boolean notifyEmptyDirectories;
    private final POIFSReaderRegistry registry = new POIFSReaderRegistry();
    private boolean registryClosed = false;

    public static void main(String[] strArr) throws IOException {
        if (strArr.length == 0) {
            System.err.println("at least one argument required: input filename(s)");
            System.exit(1);
        }
        for (String str : strArr) {
            POIFSReader pOIFSReader = new POIFSReader();
            pOIFSReader.registerListener(new POIFSReaderListener() { // from class: com.sunia.HTREnginev2.jkk
                @Override // org.apache.poi.poifs.eventfilesystem.POIFSReaderListener
                public final void processPOIFSReaderEvent(POIFSReaderEvent pOIFSReaderEvent) {
                    POIFSReader.readEntry(pOIFSReaderEvent);
                }
            });
            System.out.println("reading " + str);
            pOIFSReader.read(new File(str));
        }
    }

    private void processProperties(POIFSFileSystem pOIFSFileSystem, DirectoryProperty directoryProperty, POIFSDocumentPath pOIFSDocumentPath) {
        Iterator<Property> it2 = directoryProperty.iterator();
        boolean z = false;
        while (true) {
            POIFSDocument pOIFSDocument = null;
            if (!it2.hasNext()) {
                break;
            }
            Property next = it2.next();
            String name = next.getName();
            if (next.isDirectory()) {
                processProperties(pOIFSFileSystem, (DirectoryProperty) next, new POIFSDocumentPath(pOIFSDocumentPath, new String[]{name}));
            } else {
                for (POIFSReaderListener pOIFSReaderListener : this.registry.getListeners(pOIFSDocumentPath, name)) {
                    if (pOIFSDocument == null) {
                        pOIFSDocument = new POIFSDocument((DocumentProperty) next, pOIFSFileSystem);
                    }
                    DocumentInputStream documentInputStream = new DocumentInputStream(pOIFSDocument);
                    try {
                        pOIFSReaderListener.processPOIFSReaderEvent(new POIFSReaderEvent(documentInputStream, pOIFSDocumentPath, name, directoryProperty.getStorageClsid()));
                        documentInputStream.close();
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            try {
                                documentInputStream.close();
                            } catch (Throwable th3) {
                                th.addSuppressed(th3);
                            }
                            throw th2;
                        }
                    }
                }
            }
            z = true;
        }
        if (z || !this.notifyEmptyDirectories) {
            return;
        }
        Iterator<POIFSReaderListener> it3 = this.registry.getListeners(pOIFSDocumentPath, ".").iterator();
        while (it3.hasNext()) {
            it3.next().processPOIFSReaderEvent(new POIFSReaderEvent(null, pOIFSDocumentPath, null, directoryProperty.getStorageClsid()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void readEntry(POIFSReaderEvent pOIFSReaderEvent) {
        POIFSDocumentPath path = pOIFSReaderEvent.getPath();
        StringBuilder sb = new StringBuilder();
        try {
            DocumentInputStream stream = pOIFSReaderEvent.getStream();
            try {
                sb.setLength(0);
                int length = path.length();
                for (int i = 0; i < length; i++) {
                    sb.append('/');
                    sb.append(path.getComponent(i));
                }
                byte[] byteArray = IOUtils.toByteArray(stream);
                sb.append('/');
                sb.append(pOIFSReaderEvent.getName());
                sb.append(": ");
                sb.append(byteArray.length);
                sb.append(" bytes read");
                System.out.println(sb);
                if (stream != null) {
                    stream.close();
                }
            } finally {
            }
        } catch (IOException unused) {
        }
    }

    public void read(InputStream inputStream) throws IOException {
        POIFSFileSystem pOIFSFileSystem = new POIFSFileSystem(inputStream);
        try {
            read(pOIFSFileSystem);
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

    public void registerListener(POIFSReaderListener pOIFSReaderListener) {
        pOIFSReaderListener.getClass();
        if (!this.registryClosed) {
            this.registry.registerListener(pOIFSReaderListener);
            return;
        }
        throw new IllegalStateException();
    }

    public void setNotifyEmptyDirectories(boolean z) {
        this.notifyEmptyDirectories = z;
    }

    public void registerListener(POIFSReaderListener pOIFSReaderListener, String str) {
        registerListener(pOIFSReaderListener, null, str);
    }

    public void read(File file) throws IOException {
        POIFSFileSystem pOIFSFileSystem = new POIFSFileSystem(file, true);
        try {
            read(pOIFSFileSystem);
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

    public void registerListener(POIFSReaderListener pOIFSReaderListener, POIFSDocumentPath pOIFSDocumentPath, String str) {
        if (pOIFSReaderListener != null && str != null && str.length() != 0) {
            if (!this.registryClosed) {
                POIFSReaderRegistry pOIFSReaderRegistry = this.registry;
                if (pOIFSDocumentPath == null) {
                    pOIFSDocumentPath = new POIFSDocumentPath();
                }
                pOIFSReaderRegistry.registerListener(pOIFSReaderListener, pOIFSDocumentPath, str);
                return;
            }
            throw new IllegalStateException();
        }
        throw null;
    }

    public void read(POIFSFileSystem pOIFSFileSystem) throws IOException {
        this.registryClosed = true;
        processProperties(pOIFSFileSystem, pOIFSFileSystem.getPropertyTable().getRoot(), new POIFSDocumentPath());
    }
}
