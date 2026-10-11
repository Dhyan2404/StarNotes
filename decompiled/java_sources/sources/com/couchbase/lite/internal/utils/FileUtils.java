package com.couchbase.lite.internal.utils;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.CouchbaseLiteError;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.internal.logging.Log;
import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes4.dex */
public final class FileUtils {
    private FileUtils() {
    }

    public static void copyFile(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return;
            } else {
                outputStream.write(bArr, 0, read);
            }
        }
    }

    public static boolean deleteContents(String str) {
        return deleteContents(str == null ? null : new File(str));
    }

    private static boolean deleteRecursive(File file) {
        return !file.exists() || (deleteContents(file) && file.delete());
    }

    public static boolean eraseFileOrDir(@NonNull String str) {
        Preconditions.assertNotNull(str, "file or directory");
        return eraseFileOrDir(new File(str));
    }

    @NonNull
    public static File getCurrentDirectory() {
        try {
            return new File("").getCanonicalFile();
        } catch (IOException e) {
            throw new CouchbaseLiteError("Can't open current directory", e);
        }
    }

    public static boolean setPermissionRecursive(@NonNull File file, boolean z, boolean z2) {
        File[] listFiles;
        if (file.isDirectory() && (listFiles = file.listFiles()) != null) {
            for (File file2 : listFiles) {
                setPermissionRecursive(file2, z, z2);
            }
        }
        return file.setReadable(z) && file.setWritable(z2);
    }

    @NonNull
    public static File verifyDir(@Nullable String str) {
        return verifyDir(new File((String) Preconditions.assertNotNull(str, "directory path")));
    }

    @SuppressFBWarnings({"RV_RETURN_VALUE_IGNORED_BAD_PRACTICE"})
    public static boolean deleteContents(File file) {
        boolean z = true;
        if (file != null && file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                return true;
            }
            for (File file2 : listFiles) {
                if (!deleteRecursive(file2)) {
                    Log.m9904i(LogDomain.DATABASE, "Failed deleting file: " + file2);
                    z = false;
                }
            }
        }
        return z;
    }

    @NonNull
    public static File verifyDir(@Nullable File file) {
        try {
            file = ((File) Preconditions.assertNotNull(file, "directory")).getCanonicalFile();
        } catch (IOException e) {
            e = e;
        }
        if (!file.exists() || !file.isDirectory()) {
            if (!file.mkdirs()) {
                e = null;
                throw new CouchbaseLiteError("Cannot create or access directory at " + file, e);
            }
        }
        return file;
    }

    public static boolean eraseFileOrDir(@NonNull File file) {
        Preconditions.assertNotNull(file, "file or directory");
        return deleteRecursive(file);
    }
}
