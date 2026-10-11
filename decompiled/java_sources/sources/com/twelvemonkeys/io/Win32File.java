package com.twelvemonkeys.io;

import com.bumptech.glide.load.engine.GlideException;
import java.io.File;
import java.io.FileFilter;
import java.io.FilenameFilter;
import java.io.IOException;

/* loaded from: classes10.dex */
final class Win32File extends File {
    private static final boolean IS_WINDOWS = isWindows();

    private Win32File(File file) {
        super(file.getPath());
    }

    private static boolean isWindows() {
        try {
            return System.getProperty("os.name").toLowerCase().indexOf("windows") >= 0;
        } catch (Throwable unused) {
            return false;
        }
    }

    private static void listFiles(File file, int i, boolean z) {
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            for (int i2 = 0; i2 < i; i2++) {
                System.out.print(" ");
            }
            System.out.println("Contents of " + file + ": ");
            int length = listFiles.length;
            for (int i3 = 0; i3 < length; i3++) {
                File file2 = listFiles[i3];
                for (int i4 = 0; i4 < i; i4++) {
                    System.out.print(" ");
                }
                System.out.println(GlideException.C1935a.f14609h + file2);
                if (z) {
                    listFiles(file2, i + 1, i < 4);
                }
            }
        }
    }

    public static void main(String[] strArr) {
        int i = 0;
        boolean z = false;
        while (true) {
            int i2 = i + 1;
            if (strArr.length <= i2 || strArr[i].charAt(0) != '-' || strArr[i].length() <= 1) {
                break;
            }
            if (strArr[i].charAt(1) == 'R' || strArr[i].equals("--recursive")) {
                z = true;
            } else {
                System.err.println("Unknown option: " + strArr[i]);
            }
            i = i2;
        }
        File wrap = wrap(new File(strArr[i]));
        System.out.println("file: " + wrap);
        System.out.println("file.getClass(): " + wrap.getClass());
        listFiles(wrap, 0, z);
    }

    public static File wrap(File file) {
        if (file == null) {
            return null;
        }
        if (!IS_WINDOWS || (file instanceof Win32File) || (file instanceof Win32Lnk)) {
            return file;
        }
        if (file.exists() && file.getName().endsWith(".lnk")) {
            try {
                return new Win32Lnk(file);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return new Win32File(file);
    }

    @Override // java.io.File
    public File getAbsoluteFile() {
        return wrap(super.getAbsoluteFile());
    }

    @Override // java.io.File
    public File getCanonicalFile() throws IOException {
        return wrap(super.getCanonicalFile());
    }

    @Override // java.io.File
    public File getParentFile() {
        return wrap(super.getParentFile());
    }

    public static File[] wrap(File[] fileArr) {
        if (IS_WINDOWS) {
            for (int i = 0; fileArr != null && i < fileArr.length; i++) {
                fileArr[i] = wrap(fileArr[i]);
            }
        }
        return fileArr;
    }

    @Override // java.io.File
    public File[] listFiles() {
        return wrap(super.listFiles());
    }

    @Override // java.io.File
    public File[] listFiles(FileFilter fileFilter) {
        return wrap(super.listFiles(fileFilter));
    }

    @Override // java.io.File
    public File[] listFiles(FilenameFilter filenameFilter) {
        return wrap(super.listFiles(filenameFilter));
    }
}
