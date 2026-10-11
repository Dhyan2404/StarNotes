package org.apache.poi.hpbf.model;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.io.FileNotFoundException;
import java.io.IOException;
import org.apache.commons.io.input.UnsynchronizedByteArrayInputStream;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.DocumentInputStream;
import org.apache.poi.util.IOUtils;

/* loaded from: classes12.dex */
public abstract class HPBFPart {
    private byte[] data;
    private final String[] path;

    public HPBFPart(DirectoryNode directoryNode, String[] strArr) throws IOException {
        this.path = strArr;
        DirectoryNode dir = getDir(directoryNode, strArr);
        String str = strArr[strArr.length - 1];
        if (!dir.hasEntry(str)) {
            throw new IllegalArgumentException("File invalid - failed to find document entry '" + str + CloudStorageConstants.SINGLE_QUOTES);
        }
        DocumentInputStream createDocumentInputStream = dir.createDocumentInputStream(str);
        try {
            this.data = IOUtils.toByteArray(createDocumentInputStream);
            if (createDocumentInputStream != null) {
                createDocumentInputStream.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (createDocumentInputStream != null) {
                    try {
                        createDocumentInputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    private static DirectoryNode getDir(DirectoryNode directoryNode, String[] strArr) {
        for (int i = 0; i < strArr.length - 1; i++) {
            try {
                directoryNode = (DirectoryNode) directoryNode.getEntry(strArr[i]);
            } catch (FileNotFoundException e) {
                throw new IllegalArgumentException("File invalid - failed to find directory entry '" + strArr[i] + "': " + e);
            }
        }
        return directoryNode;
    }

    public abstract void generateData();

    public final byte[] getData() {
        return this.data;
    }

    public final String[] getPath() {
        return this.path;
    }

    public final void setData(byte[] bArr) {
        this.data = (byte[]) bArr.clone();
    }

    public void writeOut(DirectoryNode directoryNode) throws IOException {
        String[] path = getPath();
        for (int i = 0; i < path.length - 1; i++) {
            try {
                directoryNode = (DirectoryNode) directoryNode.getEntry(path[i]);
            } catch (FileNotFoundException unused) {
                directoryNode.createDirectory(path[i]);
            }
        }
        generateData();
        UnsynchronizedByteArrayInputStream unsynchronizedByteArrayInputStream = new UnsynchronizedByteArrayInputStream(this.data);
        try {
            directoryNode.createDocument(path[path.length - 1], unsynchronizedByteArrayInputStream);
            unsynchronizedByteArrayInputStream.close();
        } finally {
        }
    }
}
