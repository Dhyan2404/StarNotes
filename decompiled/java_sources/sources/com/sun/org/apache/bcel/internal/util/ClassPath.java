package com.sun.org.apache.bcel.internal.util;

import com.onyx.android.sdk.replicator.note.proto.doc.shape.ShapeDocumentUtils;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.StringTokenizer;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* loaded from: classes10.dex */
public class ClassPath implements Serializable {
    public static final ClassPath SYSTEM_CLASS_PATH = new ClassPath();
    private String class_path;
    private PathEntry[] paths;

    /* loaded from: classes10.dex */
    public interface ClassFile {
        String getBase();

        InputStream getInputStream() throws IOException;

        String getPath();

        long getSize();

        long getTime();
    }

    /* loaded from: classes10.dex */
    public static class Dir extends PathEntry {
        private String dir;

        public Dir(String str) {
            super();
            this.dir = str;
        }

        @Override // com.sun.org.apache.bcel.internal.util.ClassPath.PathEntry
        public ClassFile getClassFile(String str, String str2) throws IOException {
            final File file = new File(this.dir + File.separatorChar + str.replace('.', File.separatorChar) + str2);
            if (file.exists()) {
                return new ClassFile() { // from class: com.sun.org.apache.bcel.internal.util.ClassPath.Dir.1
                    @Override // com.sun.org.apache.bcel.internal.util.ClassPath.ClassFile
                    public String getBase() {
                        return Dir.this.dir;
                    }

                    @Override // com.sun.org.apache.bcel.internal.util.ClassPath.ClassFile
                    public InputStream getInputStream() throws IOException {
                        return new FileInputStream(file);
                    }

                    @Override // com.sun.org.apache.bcel.internal.util.ClassPath.ClassFile
                    public String getPath() {
                        try {
                            return file.getCanonicalPath();
                        } catch (IOException unused) {
                            return null;
                        }
                    }

                    @Override // com.sun.org.apache.bcel.internal.util.ClassPath.ClassFile
                    public long getSize() {
                        return file.length();
                    }

                    @Override // com.sun.org.apache.bcel.internal.util.ClassPath.ClassFile
                    public long getTime() {
                        return file.lastModified();
                    }
                };
            }
            return null;
        }

        public String toString() {
            return this.dir;
        }
    }

    /* loaded from: classes10.dex */
    public static abstract class PathEntry implements Serializable {
        private PathEntry() {
        }

        public abstract ClassFile getClassFile(String str, String str2) throws IOException;
    }

    /* loaded from: classes10.dex */
    public static class Zip extends PathEntry {
        private ZipFile zip;

        public Zip(ZipFile zipFile) {
            super();
            this.zip = zipFile;
        }

        @Override // com.sun.org.apache.bcel.internal.util.ClassPath.PathEntry
        public ClassFile getClassFile(String str, String str2) throws IOException {
            final ZipEntry entry = this.zip.getEntry(str.replace('.', '/') + str2);
            if (entry != null) {
                return new ClassFile() { // from class: com.sun.org.apache.bcel.internal.util.ClassPath.Zip.1
                    @Override // com.sun.org.apache.bcel.internal.util.ClassPath.ClassFile
                    public String getBase() {
                        return Zip.this.zip.getName();
                    }

                    @Override // com.sun.org.apache.bcel.internal.util.ClassPath.ClassFile
                    public InputStream getInputStream() throws IOException {
                        return Zip.this.zip.getInputStream(entry);
                    }

                    @Override // com.sun.org.apache.bcel.internal.util.ClassPath.ClassFile
                    public String getPath() {
                        return entry.toString();
                    }

                    @Override // com.sun.org.apache.bcel.internal.util.ClassPath.ClassFile
                    public long getSize() {
                        return entry.getSize();
                    }

                    @Override // com.sun.org.apache.bcel.internal.util.ClassPath.ClassFile
                    public long getTime() {
                        return entry.getTime();
                    }
                };
            }
            return null;
        }
    }

    public ClassPath(String str) {
        this.class_path = str;
        ArrayList arrayList = new ArrayList();
        StringTokenizer stringTokenizer = new StringTokenizer(str, System.getProperty("path.separator"));
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            if (!nextToken.equals("")) {
                File file = new File(nextToken);
                try {
                    if (file.exists()) {
                        if (file.isDirectory()) {
                            arrayList.add(new Dir(nextToken));
                        } else {
                            arrayList.add(new Zip(new ZipFile(file)));
                        }
                    }
                } catch (IOException e) {
                    System.err.println("CLASSPATH component " + file + ": " + e);
                }
            }
        }
        PathEntry[] pathEntryArr = new PathEntry[arrayList.size()];
        this.paths = pathEntryArr;
        arrayList.toArray(pathEntryArr);
    }

    public static final String getClassPath() {
        try {
            String property = System.getProperty("java.class.path");
            String property2 = System.getProperty("sun.boot.class.path");
            String property3 = System.getProperty("java.ext.dirs");
            ArrayList arrayList = new ArrayList();
            getPathComponents(property, arrayList);
            getPathComponents(property2, arrayList);
            ArrayList arrayList2 = new ArrayList();
            getPathComponents(property3, arrayList2);
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                String[] list = new File((String) it2.next()).list(new FilenameFilter() { // from class: com.sun.org.apache.bcel.internal.util.ClassPath.1
                    @Override // java.io.FilenameFilter
                    public boolean accept(File file, String str) {
                        String lowerCase = str.toLowerCase();
                        return lowerCase.endsWith(ShapeDocumentUtils.SHAPE_FILE_END) || lowerCase.endsWith(".jar");
                    }
                });
                if (list != null) {
                    for (String str : list) {
                        arrayList.add(property3 + File.separatorChar + str);
                    }
                }
            }
            StringBuffer stringBuffer = new StringBuffer();
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                stringBuffer.append((String) it3.next());
                if (it3.hasNext()) {
                    stringBuffer.append(File.pathSeparatorChar);
                }
            }
            return stringBuffer.toString().intern();
        } catch (SecurityException unused) {
            return "";
        }
    }

    private static final void getPathComponents(String str, ArrayList arrayList) {
        if (str != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, File.pathSeparator);
            while (stringTokenizer.hasMoreTokens()) {
                String nextToken = stringTokenizer.nextToken();
                if (new File(nextToken).exists()) {
                    arrayList.add(nextToken);
                }
            }
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof ClassPath) {
            return this.class_path.equals(((ClassPath) obj).class_path);
        }
        return false;
    }

    public byte[] getBytes(String str, String str2) throws IOException {
        InputStream inputStream = getInputStream(str, str2);
        if (inputStream != null) {
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            byte[] bArr = new byte[inputStream.available()];
            dataInputStream.readFully(bArr);
            dataInputStream.close();
            inputStream.close();
            return bArr;
        }
        throw new IOException("Couldn't find: " + str + str2);
    }

    public ClassFile getClassFile(String str, String str2) throws IOException {
        int i = 0;
        while (true) {
            PathEntry[] pathEntryArr = this.paths;
            if (i < pathEntryArr.length) {
                ClassFile classFile = pathEntryArr[i].getClassFile(str, str2);
                if (classFile != null) {
                    return classFile;
                }
                i++;
            } else {
                throw new IOException("Couldn't find: " + str + str2);
            }
        }
    }

    public InputStream getInputStream(String str) throws IOException {
        return getInputStream(str, com.google.common.reflect.ClassPath.f35080d);
    }

    public String getPath(String str) throws IOException {
        String str2;
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf > 0) {
            str2 = str.substring(lastIndexOf);
            str = str.substring(0, lastIndexOf);
        } else {
            str2 = "";
        }
        return getPath(str, str2);
    }

    public int hashCode() {
        return this.class_path.hashCode();
    }

    public String toString() {
        return this.class_path;
    }

    public InputStream getInputStream(String str, String str2) throws IOException {
        InputStream inputStream;
        try {
            inputStream = getClass().getClassLoader().getResourceAsStream(str + str2);
        } catch (Exception unused) {
            inputStream = null;
        }
        return inputStream != null ? inputStream : getClassFile(str, str2).getInputStream();
    }

    public ClassFile getClassFile(String str) throws IOException {
        return getClassFile(str, com.google.common.reflect.ClassPath.f35080d);
    }

    public String getPath(String str, String str2) throws IOException {
        return getClassFile(str, str2).getPath();
    }

    public byte[] getBytes(String str) throws IOException {
        return getBytes(str, com.google.common.reflect.ClassPath.f35080d);
    }

    public ClassPath() {
        this("");
    }
}
