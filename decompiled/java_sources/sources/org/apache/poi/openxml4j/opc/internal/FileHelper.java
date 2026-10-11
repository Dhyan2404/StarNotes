package org.apache.poi.openxml4j.opc.internal;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;

/* loaded from: classes12.dex */
public final class FileHelper {
    public static void copyFile(File file, File file2) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            try {
                FileChannel channel = fileInputStream.getChannel();
                try {
                    FileChannel channel2 = fileOutputStream.getChannel();
                    try {
                        channel.transferTo(0L, channel.size(), channel2);
                        if (channel2 != null) {
                            channel2.close();
                        }
                        channel.close();
                        fileOutputStream.close();
                        fileInputStream.close();
                    } finally {
                    }
                } finally {
                }
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

    public static File getDirectory(File file) {
        if (file == null) {
            return null;
        }
        String path = file.getPath();
        int length = path.length();
        do {
            length--;
            if (length < 0) {
                return null;
            }
        } while (path.charAt(length) != File.separatorChar);
        return new File(path.substring(0, length));
    }

    public static String getFilename(File file) {
        if (file == null) {
            return "";
        }
        String path = file.getPath();
        int length = path.length();
        int i = length;
        do {
            i--;
            if (i < 0) {
                return "";
            }
        } while (path.charAt(i) != File.separatorChar);
        return path.substring(i + 1, length);
    }
}
