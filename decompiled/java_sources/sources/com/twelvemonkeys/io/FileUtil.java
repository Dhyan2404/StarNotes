package com.twelvemonkeys.io;

import com.sunia.HTREnginev2.qhg;
import com.twelvemonkeys.lang.StringUtil;
import com.twelvemonkeys.lang.Validate;
import com.twelvemonkeys.util.Visitor;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.UndeclaredThrowableException;
import java.net.URL;
import java.text.NumberFormat;

/* loaded from: classes10.dex */
public final class FileUtil {
    public static final int BUF_SIZE = 1024;

    /* renamed from: a */
    public static String f94230a;

    /* renamed from: b */
    public static final qhg f94231b = qhg.m56694b();

    /* renamed from: c */
    public static ThreadLocal<NumberFormat> f94232c = new C16972a();

    /* renamed from: com.twelvemonkeys.io.FileUtil$a */
    /* loaded from: classes10.dex */
    public static class C16972a extends ThreadLocal<NumberFormat> {
        @Override // java.lang.ThreadLocal
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public NumberFormat initialValue() {
            NumberFormat numberInstance = NumberFormat.getNumberInstance();
            numberInstance.setMaximumFractionDigits(0);
            return numberInstance;
        }
    }

    /* renamed from: com.twelvemonkeys.io.FileUtil$b */
    /* loaded from: classes10.dex */
    public class C16973b implements Visitor<File> {

        /* renamed from: a */
        public int f94233a = 0;

        /* renamed from: b */
        public IOException f94234b = null;

        /* renamed from: a */
        public boolean m60689a() throws IOException {
            IOException iOException = this.f94234b;
            if (iOException == null) {
                return this.f94233a == 0;
            }
            throw iOException;
        }

        @Override // com.twelvemonkeys.util.Visitor
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void visit(File file) {
            try {
                if (FileUtil.delete(file, true)) {
                    return;
                }
                this.f94233a++;
            } catch (IOException e) {
                this.f94233a++;
                if (this.f94234b == null) {
                    this.f94234b = e;
                }
            }
        }
    }

    /* renamed from: com.twelvemonkeys.io.FileUtil$c */
    /* loaded from: classes10.dex */
    public static class C16974c implements FileFilter {

        /* renamed from: e */
        public final /* synthetic */ FileFilter f94235e;

        /* renamed from: f */
        public final /* synthetic */ Visitor f94236f;

        public C16974c(FileFilter fileFilter, Visitor visitor) {
            this.f94235e = fileFilter;
            this.f94236f = visitor;
        }

        @Override // java.io.FileFilter
        public boolean accept(File file) {
            FileFilter fileFilter = this.f94235e;
            if (fileFilter != null && !fileFilter.accept(file)) {
                return false;
            }
            this.f94236f.visit(file);
            return false;
        }
    }

    /* renamed from: a */
    public static void m60681a(Reader reader) {
        if (reader != null) {
            try {
                reader.close();
            } catch (IOException unused) {
            }
        }
    }

    /* renamed from: b */
    public static void m60682b(Writer writer) {
        if (writer != null) {
            try {
                writer.close();
            } catch (IOException unused) {
            }
        }
    }

    /* renamed from: c */
    public static boolean m60683c(File file, File file2, boolean z) throws IOException {
        if (file2.exists() && !file2.isDirectory()) {
            throw new IOException("A directory may only be copied to another directory, not to a file");
        }
        file2.mkdirs();
        boolean z2 = true;
        for (File file3 : file.listFiles()) {
            if (!copy(file3, new File(file2, file3.getName()), z)) {
                z2 = false;
            }
        }
        return z2;
    }

    public static void close(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    public static boolean copy(String str, String str2) throws IOException {
        return copy(new File(str), new File(str2), false);
    }

    /* renamed from: d */
    public static boolean m60684d(File file) throws IOException {
        C16973b c16973b = new C16973b();
        visitFiles(file, null, c16973b);
        return c16973b.m60689a() && file.delete();
    }

    public static boolean delete(File file, boolean z) throws IOException {
        if (z && file.isDirectory()) {
            return m60684d(file);
        }
        return file.exists() && file.delete();
    }

    /* renamed from: e */
    public static String m60685e(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf >= 0) {
            return str.substring(lastIndexOf + 1);
        }
        return null;
    }

    /* renamed from: f */
    public static NumberFormat m60686f() {
        return f94232c.get();
    }

    /* renamed from: g */
    public static Long m60687g(String str, File file) {
        try {
            return (Long) File.class.getMethod(str, new Class[0]).invoke(file, new Object[0]);
        } catch (IllegalAccessException | NoSuchMethodException unused) {
            return null;
        } catch (InvocationTargetException e) {
            Throwable targetException = e.getTargetException();
            if (targetException instanceof SecurityException) {
                throw ((SecurityException) targetException);
            }
            throw new UndeclaredThrowableException(targetException);
        }
    }

    public static String getBasename(String str) {
        return getBasename0(getFilename(str));
    }

    public static String getBasename0(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf >= 0 ? str.substring(0, lastIndexOf) : str;
    }

    public static String getDirectoryname(String str) {
        return getDirectoryname(str, File.separatorChar);
    }

    public static String getExtension(String str) {
        return m60685e(getFilename(str));
    }

    public static String getFilename(String str) {
        return getFilename(str, File.separatorChar);
    }

    public static long getFreeSpace(File file) {
        if (file == null) {
            file = new File(".");
        }
        Long m60687g = m60687g("getFreeSpace", file);
        return m60687g != null ? m60687g.longValue() : f94231b.mo55564c(file);
    }

    public static String getTempDir() {
        synchronized (FileUtil.class) {
            if (f94230a == null) {
                String property = System.getProperty("java.io.tmpdir");
                if (StringUtil.isEmpty(property)) {
                    property = new File("/temp").exists() ? "/temp" : "/tmp";
                }
                f94230a = property;
            }
        }
        return f94230a;
    }

    public static File getTempDirFile() {
        return new File(getTempDir());
    }

    public static long getTotalSpace(File file) {
        if (file == null) {
            file = new File(".");
        }
        Long m60687g = m60687g("getTotalSpace", file);
        return m60687g != null ? m60687g.longValue() : f94231b.mo55566e(file);
    }

    public static long getUsableSpace(File file) {
        if (file == null) {
            file = new File(".");
        }
        Long m60687g = m60687g("getUsableSpace", file);
        return m60687g != null ? m60687g.longValue() : getTotalSpace(file);
    }

    public static boolean isEmpty(File file) {
        return file.isDirectory() ? file.list().length == 0 : file.length() == 0;
    }

    public static File[] list(String str) throws FileNotFoundException {
        return list(str, null);
    }

    public static void main(String[] strArr) throws IOException {
        File file;
        if (strArr[0].startsWith("file:")) {
            file = toFile(new URL(strArr[0]));
            System.out.println(file);
        } else {
            File file2 = new File(strArr[0]);
            System.out.println(file2.toURL());
            file = file2;
        }
        System.out.println("Free space: " + getFreeSpace(file) + "/" + getTotalSpace(file) + " bytes");
    }

    public static byte[] read(String str) throws IOException {
        return read(new File(str));
    }

    public static boolean rename(File file, File file2, boolean z) throws IOException {
        if (file.exists()) {
            if (file.isFile() && file2.isDirectory()) {
                file2 = new File(file2, file.getName());
            }
            return (z || !file2.exists()) && file.renameTo(file2);
        }
        throw new FileNotFoundException(file.getAbsolutePath());
    }

    public static File resolve(String str) {
        return Win32File.wrap(new File(str));
    }

    public static File toFile(URL url) {
        if (url == null) {
            throw new NullPointerException("URL == null");
        }
        if (!"file".equals(url.getProtocol())) {
            throw new IllegalArgumentException("URL scheme is not \"file\"");
        }
        if (url.getAuthority() != null) {
            throw new IllegalArgumentException("URL has an authority component");
        }
        if (url.getRef() != null) {
            throw new IllegalArgumentException("URI has a fragment component");
        }
        if (url.getQuery() != null) {
            throw new IllegalArgumentException("URL has a query component");
        }
        String path = url.getPath();
        if (!path.startsWith("/")) {
            throw new IllegalArgumentException("URI is not hierarchical");
        }
        if (path.equals("")) {
            throw new IllegalArgumentException("URI path component is empty");
        }
        char c = File.separatorChar;
        if (c != '/') {
            path = path.replace('/', c);
        }
        return resolve(path);
    }

    public static String toHumanReadableSize(long j) {
        if (j < 1024) {
            return j + " Bytes";
        }
        if (j < 1048576) {
            return m60686f().format(j / 1024.0d) + " KB";
        }
        if (j < 1073741824) {
            return m60686f().format(j / 1048576.0d) + " MB";
        }
        if (j < 1099511627776L) {
            return m60686f().format(j / 1.073741824E9d) + " GB";
        }
        if (j < 1125899906842624L) {
            return m60686f().format(j / 1.099511627776E12d) + " TB";
        }
        return m60686f().format(j / 1.125899906842624E15d) + " PB";
    }

    public static void visitFiles(File file, FileFilter fileFilter, Visitor<File> visitor) {
        Validate.notNull(file, "directory");
        Validate.notNull(visitor, "visitor");
        file.listFiles(new C16974c(fileFilter, visitor));
    }

    public static boolean write(OutputStream outputStream, byte[] bArr) throws IOException {
        outputStream.write(bArr);
        return true;
    }

    public static void close(OutputStream outputStream) {
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    public static boolean copy(String str, String str2, boolean z) throws IOException {
        return copy(new File(str), new File(str2), z);
    }

    public static String getBasename(File file) {
        return getBasename0(file.getName());
    }

    public static String getDirectoryname(String str, char c) {
        int lastIndexOf = str.lastIndexOf(c);
        return lastIndexOf < 0 ? "" : str.substring(0, lastIndexOf);
    }

    public static String getExtension(File file) {
        return m60685e(file.getName());
    }

    public static String getFilename(String str, char c) {
        int lastIndexOf = str.lastIndexOf(c);
        return lastIndexOf < 0 ? str : str.substring(lastIndexOf + 1);
    }

    public static File[] list(String str, String str2) throws FileNotFoundException {
        if (StringUtil.isEmpty(str)) {
            return null;
        }
        File resolve = resolve(str);
        if (resolve.isDirectory() && resolve.canRead()) {
            if (StringUtil.isEmpty(str2)) {
                return resolve.listFiles();
            }
            return resolve.listFiles(new FilenameMaskFilter(str2));
        }
        throw new FileNotFoundException("\"" + str + "\" is not a directory or is not readable.");
    }

    public static byte[] read(File file) throws IOException {
        if (file.exists()) {
            int length = (int) file.length();
            byte[] bArr = new byte[length];
            BufferedInputStream bufferedInputStream = null;
            try {
                BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(file), 2048);
                int i = 0;
                while (true) {
                    try {
                        int read = bufferedInputStream2.read(bArr, i, bufferedInputStream2.available());
                        if (read == -1 || i >= length) {
                            break;
                        }
                        i += read;
                    } catch (Throwable th) {
                        th = th;
                        bufferedInputStream = bufferedInputStream2;
                        close(bufferedInputStream);
                        throw th;
                    }
                }
                close(bufferedInputStream2);
                return bArr;
            } catch (Throwable th2) {
                th = th2;
            }
        } else {
            throw new FileNotFoundException(file.toString());
        }
    }

    public static File resolve(File file) {
        return Win32File.wrap(file);
    }

    public static boolean write(File file, byte[] bArr) throws IOException {
        BufferedOutputStream bufferedOutputStream = null;
        try {
            BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(new FileOutputStream(file));
            try {
                boolean write = write(bufferedOutputStream2, bArr);
                close(bufferedOutputStream2);
                return write;
            } catch (Throwable th) {
                th = th;
                bufferedOutputStream = bufferedOutputStream2;
                close(bufferedOutputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static boolean copy(File file, File file2) throws IOException {
        return copy(file, file2, false);
    }

    public static File resolve(File file, String str) {
        return Win32File.wrap(new File(file, str));
    }

    public static boolean copy(File file, File file2, boolean z) throws IOException {
        FileOutputStream fileOutputStream;
        if (file.isDirectory()) {
            return m60683c(file, file2, z);
        }
        if (file2.isDirectory()) {
            file2 = new File(file2, file.getName());
        }
        if (!z && file2.exists()) {
            return false;
        }
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                fileOutputStream = new FileOutputStream(file2);
                try {
                    copy(fileInputStream2, fileOutputStream);
                    close(fileInputStream2);
                    close(fileOutputStream);
                    return true;
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    close(fileInputStream);
                    close(fileOutputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = null;
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
    }

    public static boolean delete(String str, boolean z) throws IOException {
        return delete(new File(str), z);
    }

    public static File[] resolve(File[] fileArr) {
        return Win32File.wrap(fileArr);
    }

    public static boolean delete(File file) throws IOException {
        return delete(file, false);
    }

    public static boolean write(String str, byte[] bArr) throws IOException {
        return write(new File(str), bArr);
    }

    public static boolean delete(String str) throws IOException {
        return delete(new File(str), false);
    }

    public static boolean rename(File file, File file2) throws IOException {
        return rename(file, file2, false);
    }

    public static boolean rename(File file, String str, boolean z) throws IOException {
        return rename(file, new File(str), z);
    }

    public static byte[] read(InputStream inputStream) throws IOException {
        FastByteArrayOutputStream fastByteArrayOutputStream = new FastByteArrayOutputStream(1024);
        copy(inputStream, fastByteArrayOutputStream);
        return fastByteArrayOutputStream.toByteArray();
    }

    public static boolean rename(File file, String str) throws IOException {
        return rename(file, new File(str), false);
    }

    public static boolean rename(String str, String str2, boolean z) throws IOException {
        return rename(new File(str), new File(str2), z);
    }

    public static boolean rename(String str, String str2) throws IOException {
        return rename(new File(str), new File(str2), false);
    }

    public static boolean copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        Validate.notNull(inputStream, "from");
        Validate.notNull(outputStream, "to");
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, 2048);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(outputStream, 2048);
        byte[] bArr = new byte[1024];
        while (true) {
            int read = bufferedInputStream.read(bArr);
            if (read != -1) {
                bufferedOutputStream.write(bArr, 0, read);
            } else {
                bufferedOutputStream.flush();
                return true;
            }
        }
    }
}
