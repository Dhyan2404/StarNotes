package androidx.core.util;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/* loaded from: classes3.dex */
public class AtomicFile {

    /* renamed from: d */
    public static final String f5718d = "AtomicFile";

    /* renamed from: a */
    public final File f5719a;

    /* renamed from: b */
    public final File f5720b;

    /* renamed from: c */
    public final File f5721c;

    public AtomicFile(@NonNull File file) {
        this.f5719a = file;
        this.f5720b = new File(file.getPath() + ".new");
        this.f5721c = new File(file.getPath() + ".bak");
    }

    /* renamed from: a */
    public static void m3255a(@NonNull File file, @NonNull File file2) {
        if (file2.isDirectory() && !file2.delete()) {
            Log.e("AtomicFile", "Failed to delete file which is a directory " + file2);
        }
        if (file.renameTo(file2)) {
            return;
        }
        Log.e("AtomicFile", "Failed to rename " + file + " to " + file2);
    }

    /* renamed from: b */
    public static boolean m3256b(@NonNull FileOutputStream fileOutputStream) {
        try {
            fileOutputStream.getFD().sync();
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    public void delete() {
        this.f5719a.delete();
        this.f5720b.delete();
        this.f5721c.delete();
    }

    public void failWrite(@Nullable FileOutputStream fileOutputStream) {
        if (fileOutputStream == null) {
            return;
        }
        if (!m3256b(fileOutputStream)) {
            Log.e("AtomicFile", "Failed to sync file output stream");
        }
        try {
            fileOutputStream.close();
        } catch (IOException e) {
            Log.e("AtomicFile", "Failed to close file output stream", e);
        }
        if (this.f5720b.delete()) {
            return;
        }
        Log.e("AtomicFile", "Failed to delete new file " + this.f5720b);
    }

    public void finishWrite(@Nullable FileOutputStream fileOutputStream) {
        if (fileOutputStream == null) {
            return;
        }
        if (!m3256b(fileOutputStream)) {
            Log.e("AtomicFile", "Failed to sync file output stream");
        }
        try {
            fileOutputStream.close();
        } catch (IOException e) {
            Log.e("AtomicFile", "Failed to close file output stream", e);
        }
        m3255a(this.f5720b, this.f5719a);
    }

    @NonNull
    public File getBaseFile() {
        return this.f5719a;
    }

    @NonNull
    public FileInputStream openRead() throws FileNotFoundException {
        if (this.f5721c.exists()) {
            m3255a(this.f5721c, this.f5719a);
        }
        if (this.f5720b.exists() && this.f5719a.exists() && !this.f5720b.delete()) {
            Log.e("AtomicFile", "Failed to delete outdated new file " + this.f5720b);
        }
        return new FileInputStream(this.f5719a);
    }

    @NonNull
    public byte[] readFully() throws IOException {
        FileInputStream openRead = openRead();
        try {
            byte[] bArr = new byte[openRead.available()];
            int i = 0;
            while (true) {
                int read = openRead.read(bArr, i, bArr.length - i);
                if (read <= 0) {
                    return bArr;
                }
                i += read;
                int available = openRead.available();
                if (available > bArr.length - i) {
                    byte[] bArr2 = new byte[available + i];
                    System.arraycopy(bArr, 0, bArr2, 0, i);
                    bArr = bArr2;
                }
            }
        } finally {
            openRead.close();
        }
    }

    @NonNull
    public FileOutputStream startWrite() throws IOException {
        if (this.f5721c.exists()) {
            m3255a(this.f5721c, this.f5719a);
        }
        try {
            return new FileOutputStream(this.f5720b);
        } catch (FileNotFoundException unused) {
            if (!this.f5720b.getParentFile().mkdirs()) {
                throw new IOException("Failed to create directory for " + this.f5720b);
            }
            try {
                return new FileOutputStream(this.f5720b);
            } catch (FileNotFoundException e) {
                throw new IOException("Failed to create new file " + this.f5720b, e);
            }
        }
    }
}
