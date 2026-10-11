package org.apache.xmlbeans.impl.common;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.net.URI;
import java.nio.channels.FileChannel;
import java.nio.file.Path;
import java.nio.file.Paths;

/* loaded from: classes13.dex */
public class IOUtil {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Path tmpdir = Paths.get(System.getProperty("java.io.tmpdir"), new String[0]);

    public static void copyCompletely(InputStream inputStream, OutputStream outputStream) throws IOException {
        if ((outputStream instanceof FileOutputStream) && (inputStream instanceof FileInputStream)) {
            try {
                FileChannel channel = ((FileOutputStream) outputStream).getChannel();
                FileChannel channel2 = ((FileInputStream) inputStream).getChannel();
                channel2.transferTo(0L, 2147483647L, channel);
                channel2.close();
                channel.close();
                return;
            } catch (Exception unused) {
            }
        }
        byte[] bArr = new byte[8192];
        while (true) {
            int read = inputStream.read(bArr);
            if (read < 0) {
                try {
                    break;
                } catch (IOException unused2) {
                }
            } else {
                outputStream.write(bArr, 0, read);
            }
        }
        inputStream.close();
        try {
            outputStream.close();
        } catch (IOException unused3) {
        }
    }

    public static File createDir(File file, String str) {
        if (str != null) {
            file = new File(file, str);
        }
        if (!file.exists() || !file.isDirectory()) {
            file.mkdirs();
        }
        return file;
    }

    public static Path getTempDir() {
        return tmpdir;
    }

    private static InputStream urlToStream(URI uri) throws IOException {
        try {
            File file = new File(uri);
            if (file.exists()) {
                return new FileInputStream(file);
            }
        } catch (Exception unused) {
        }
        return uri.toURL().openStream();
    }

    public static void copyCompletely(Reader reader, Writer writer) throws IOException {
        char[] cArr = new char[8192];
        while (true) {
            int read = reader.read(cArr);
            if (read < 0) {
                try {
                    break;
                } catch (IOException unused) {
                }
            } else {
                writer.write(cArr, 0, read);
            }
        }
        reader.close();
        try {
            writer.close();
        } catch (IOException unused2) {
        }
    }

    public static void copyCompletely(URI uri, URI uri2) throws IOException {
        File file = new File(uri2);
        file.getParentFile().mkdirs();
        try {
            InputStream urlToStream = urlToStream(uri);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                try {
                    copyCompletely(urlToStream, fileOutputStream);
                    fileOutputStream.close();
                    if (urlToStream != null) {
                        urlToStream.close();
                    }
                } finally {
                }
            } finally {
            }
        } catch (IllegalArgumentException unused) {
            throw new IOException("Cannot copy to " + uri2);
        }
    }
}
