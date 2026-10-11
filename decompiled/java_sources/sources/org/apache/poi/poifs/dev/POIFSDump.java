package org.apache.poi.poifs.dev;

import com.onyx.android.sdk.genericshape.GeoConstant;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Iterator;
import org.apache.poi.poifs.filesystem.DirectoryEntry;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.DocumentInputStream;
import org.apache.poi.poifs.filesystem.DocumentNode;
import org.apache.poi.poifs.filesystem.Entry;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.poifs.filesystem.POIFSStream;
import org.apache.poi.util.IOUtils;

/* loaded from: classes12.dex */
public final class POIFSDump {
    private POIFSDump() {
    }

    public static void dump(DirectoryEntry directoryEntry, File file) throws IOException {
        Iterator<Entry> entries = directoryEntry.getEntries();
        while (entries.hasNext()) {
            Entry next = entries.next();
            if (next instanceof DocumentNode) {
                DocumentNode documentNode = (DocumentNode) next;
                DocumentInputStream documentInputStream = new DocumentInputStream(documentNode);
                byte[] byteArray = IOUtils.toByteArray(documentInputStream);
                documentInputStream.close();
                FileOutputStream fileOutputStream = new FileOutputStream(new File(file, documentNode.getName().trim()));
                try {
                    fileOutputStream.write(byteArray);
                    fileOutputStream.close();
                } finally {
                }
            } else if (next instanceof DirectoryEntry) {
                DirectoryEntry directoryEntry2 = (DirectoryEntry) next;
                File file2 = new File(file, next.getName());
                if (!file2.exists() && !file2.mkdirs()) {
                    throw new IOException("Could not create directory " + file2);
                }
                dump(directoryEntry2, file2);
            } else {
                System.err.println("Skipping unsupported POIFS entry: " + next);
            }
        }
    }

    public static void main(String[] strArr) throws IOException {
        if (strArr.length == 0) {
            System.err.println("Must specify at least one file to dump");
            System.exit(1);
        }
        boolean z = false;
        boolean z2 = false;
        for (String str : strArr) {
            if (str.equalsIgnoreCase("-dumprops") || str.equalsIgnoreCase("-dump-props") || str.equalsIgnoreCase("-dump-properties")) {
                z = true;
            } else if (str.equalsIgnoreCase("-dumpmini") || str.equalsIgnoreCase("-dump-mini") || str.equalsIgnoreCase("-dump-ministream") || str.equalsIgnoreCase("-dump-mini-stream")) {
                z2 = true;
            } else {
                System.out.println("Dumping " + str);
                FileInputStream fileInputStream = new FileInputStream(str);
                try {
                    POIFSFileSystem pOIFSFileSystem = new POIFSFileSystem(fileInputStream);
                    try {
                        DirectoryNode root = pOIFSFileSystem.getRoot();
                        File file = new File(new File(new File(str).getName() + "_dump"), root.getName());
                        if (!file.exists() && !file.mkdirs()) {
                            throw new IOException("Could not create directory " + file);
                        }
                        dump(root, file);
                        if (z) {
                            dump(pOIFSFileSystem, pOIFSFileSystem.getHeaderBlock().getPropertyStart(), GeoConstant.KEY_Properties, file);
                        }
                        if (z2) {
                            int startBlock = pOIFSFileSystem.getPropertyTable().getRoot().getStartBlock();
                            if (startBlock == -2) {
                                System.err.println("No Mini Stream in file");
                            } else {
                                dump(pOIFSFileSystem, startBlock, "mini-stream", file);
                            }
                        }
                        pOIFSFileSystem.close();
                        fileInputStream.close();
                    } finally {
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        try {
                            fileInputStream.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                        throw th2;
                    }
                }
            }
        }
    }

    public static void dump(POIFSFileSystem pOIFSFileSystem, int i, String str, File file) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(new File(file, str));
        try {
            POIFSStream pOIFSStream = new POIFSStream(pOIFSFileSystem, i);
            byte[] safelyAllocate = IOUtils.safelyAllocate(pOIFSFileSystem.getBigBlockSize(), POIFSFileSystem.getMaxRecordLength());
            Iterator<ByteBuffer> it2 = pOIFSStream.iterator();
            while (it2.hasNext()) {
                ByteBuffer next = it2.next();
                int remaining = next.remaining();
                next.get(safelyAllocate);
                fileOutputStream.write(safelyAllocate, 0, remaining);
            }
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    fileOutputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }
}
