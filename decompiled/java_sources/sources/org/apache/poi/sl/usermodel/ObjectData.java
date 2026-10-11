package org.apache.poi.sl.usermodel;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.logging.log4j.LogManager;
import org.apache.poi.poifs.filesystem.DirectoryEntry;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.FileMagic;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.util.IOUtils;

/* loaded from: classes12.dex */
public interface ObjectData {
    default byte[] getBytes() throws IOException {
        InputStream inputStream = getInputStream();
        try {
            byte[] byteArray = IOUtils.toByteArray(inputStream);
            if (inputStream != null) {
                inputStream.close();
            }
            return byteArray;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    default DirectoryEntry getDirectory() throws IOException {
        InputStream inputStream = getInputStream();
        try {
            DirectoryNode root = new POIFSFileSystem(inputStream).getRoot();
            if (inputStream != null) {
                inputStream.close();
            }
            return root;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    String getFileName();

    InputStream getInputStream() throws IOException;

    String getOLE2ClassName();

    OutputStream getOutputStream() throws IOException;

    default boolean hasDirectoryEntry() {
        try {
            InputStream prepareToCheckMagic = FileMagic.prepareToCheckMagic(getInputStream());
            try {
                boolean z = FileMagic.valueOf(prepareToCheckMagic) == FileMagic.OLE2;
                if (prepareToCheckMagic != null) {
                    prepareToCheckMagic.close();
                }
                return z;
            } finally {
            }
        } catch (IOException e) {
            LogManager.getLogger((Class<?>) ObjectData.class).atWarn().withThrowable(e).log("Can't determine filemagic of ole stream");
            return false;
        }
    }
}
