package org.apache.xmlbeans.impl.common;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.jar.JarEntry;
import java.util.jar.JarInputStream;
import java.util.jar.JarOutputStream;

/* loaded from: classes13.dex */
public class JarHelper {
    private static final int BUFFER_SIZE = 2156;
    private static final char SEP = '/';
    private final byte[] mBuffer = new byte[BUFFER_SIZE];
    private boolean mVerbose = false;
    private String mDestJarName = "";

    public static void main(String[] strArr) throws IOException {
        if (strArr.length < 2) {
            System.err.println("Usage: JarHelper jarname.jar directory");
            return;
        }
        JarHelper jarHelper = new JarHelper();
        jarHelper.mVerbose = true;
        jarHelper.jarDir(new File(strArr[1]), new File(strArr[0]));
    }

    public void jarDir(File file, File file2) throws IOException {
        if (file != null && file2 != null) {
            this.mDestJarName = file2.getCanonicalPath();
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            try {
                JarOutputStream jarOutputStream = new JarOutputStream(fileOutputStream);
                try {
                    jarDir(file, jarOutputStream, null);
                    jarOutputStream.close();
                    fileOutputStream.close();
                } finally {
                }
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
        } else {
            throw new IllegalArgumentException();
        }
    }

    public void setVerbose(boolean z) {
        this.mVerbose = z;
    }

    public void unjar(InputStream inputStream, File file) throws IOException {
        JarInputStream jarInputStream = new JarInputStream(inputStream);
        while (true) {
            try {
                JarEntry nextJarEntry = jarInputStream.getNextJarEntry();
                if (nextJarEntry == null) {
                    jarInputStream.close();
                    return;
                }
                if (nextJarEntry.isDirectory()) {
                    File file2 = new File(file, nextJarEntry.getName());
                    if (!file2.getCanonicalFile().toPath().startsWith(file.getCanonicalFile().toPath())) {
                        throw new IOException("Entry is outside of the target directory " + nextJarEntry.getName());
                    }
                    file2.mkdir();
                    if (nextJarEntry.getTime() != -1) {
                        file2.setLastModified(nextJarEntry.getTime());
                    }
                } else {
                    byte[] bArr = new byte[BUFFER_SIZE];
                    File file3 = new File(file, nextJarEntry.getName());
                    if (!file3.getCanonicalFile().toPath().startsWith(file.getCanonicalFile().toPath())) {
                        throw new IOException("Entry is outside of the target directory: " + nextJarEntry.getName());
                    }
                    if (this.mVerbose) {
                        System.out.println("unjarring " + file3 + " from " + nextJarEntry.getName());
                    }
                    FileOutputStream fileOutputStream = new FileOutputStream(file3);
                    try {
                        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream, BUFFER_SIZE);
                        while (true) {
                            try {
                                int read = jarInputStream.read(bArr, 0, BUFFER_SIZE);
                                if (read == -1) {
                                    break;
                                } else {
                                    bufferedOutputStream.write(bArr, 0, read);
                                }
                            } finally {
                            }
                        }
                        bufferedOutputStream.flush();
                        bufferedOutputStream.close();
                        fileOutputStream.close();
                        if (nextJarEntry.getTime() != -1) {
                            file3.setLastModified(nextJarEntry.getTime());
                        }
                    } finally {
                    }
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        jarInputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        }
    }

    public void unjarDir(File file, File file2) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            unjar(fileInputStream, file2);
            fileInputStream.close();
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

    private void jarDir(File file, JarOutputStream jarOutputStream, String str) throws IOException {
        if (this.mVerbose) {
            System.out.println("checking " + file);
        }
        if (file.isDirectory()) {
            String[] list = file.list();
            String str2 = str == null ? "" : str + file.getName() + '/';
            if (str != null) {
                JarEntry jarEntry = new JarEntry(str2);
                jarEntry.setTime(file.lastModified());
                jarOutputStream.putNextEntry(jarEntry);
                jarOutputStream.flush();
                jarOutputStream.closeEntry();
            }
            if (list != null) {
                for (String str3 : list) {
                    jarDir(new File(file, str3), jarOutputStream, str2);
                }
                return;
            }
            return;
        }
        if (file.getCanonicalPath().equals(this.mDestJarName)) {
            if (this.mVerbose) {
                System.out.println("skipping " + file.getPath());
                return;
            }
            return;
        }
        if (this.mVerbose) {
            System.out.println("adding " + file.getPath());
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            JarEntry jarEntry2 = new JarEntry(str + file.getName());
            jarEntry2.setTime(file.lastModified());
            jarOutputStream.putNextEntry(jarEntry2);
            while (true) {
                int read = fileInputStream.read(this.mBuffer);
                if (read != -1) {
                    jarOutputStream.write(this.mBuffer, 0, read);
                    if (this.mVerbose) {
                        System.out.println("wrote " + read + " bytes");
                    }
                } else {
                    jarOutputStream.flush();
                    jarOutputStream.closeEntry();
                    fileInputStream.close();
                    return;
                }
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
