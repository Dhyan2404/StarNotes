package com.liulishuo.okdownload.core.file;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import androidx.annotation.NonNull;
import com.liulishuo.okdownload.core.Util;
import com.liulishuo.okdownload.core.file.DownloadOutputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;

/* loaded from: classes4.dex */
public class DownloadUriOutputStream implements DownloadOutputStream {

    /* renamed from: a */
    @NonNull
    public final FileChannel f39462a;

    /* renamed from: b */
    @NonNull
    public final ParcelFileDescriptor f39463b;

    /* renamed from: c */
    @NonNull
    public final BufferedOutputStream f39464c;

    /* renamed from: d */
    @NonNull
    public final FileOutputStream f39465d;

    /* loaded from: classes4.dex */
    public static class Factory implements DownloadOutputStream.Factory {
        @Override // com.liulishuo.okdownload.core.file.DownloadOutputStream.Factory
        public DownloadOutputStream create(Context context, File file, int i) throws FileNotFoundException {
            return new DownloadUriOutputStream(context, Uri.fromFile(file), i);
        }

        @Override // com.liulishuo.okdownload.core.file.DownloadOutputStream.Factory
        public boolean supportSeek() {
            return true;
        }

        @Override // com.liulishuo.okdownload.core.file.DownloadOutputStream.Factory
        public DownloadOutputStream create(Context context, Uri uri, int i) throws FileNotFoundException {
            return new DownloadUriOutputStream(context, uri, i);
        }
    }

    public DownloadUriOutputStream(Context context, Uri uri, int i) throws FileNotFoundException {
        ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(uri, "rw");
        if (openFileDescriptor != null) {
            this.f39463b = openFileDescriptor;
            FileOutputStream fileOutputStream = new FileOutputStream(openFileDescriptor.getFileDescriptor());
            this.f39465d = fileOutputStream;
            this.f39462a = fileOutputStream.getChannel();
            this.f39464c = new BufferedOutputStream(fileOutputStream, i);
            return;
        }
        throw new FileNotFoundException("result of " + uri + " is null!");
    }

    @Override // com.liulishuo.okdownload.core.file.DownloadOutputStream
    public void close() throws IOException {
        this.f39464c.close();
        this.f39465d.close();
        this.f39463b.close();
    }

    @Override // com.liulishuo.okdownload.core.file.DownloadOutputStream
    public void flushAndSync() throws IOException {
        this.f39464c.flush();
        this.f39463b.getFileDescriptor().sync();
    }

    @Override // com.liulishuo.okdownload.core.file.DownloadOutputStream
    public void seek(long j) throws IOException {
        this.f39462a.position(j);
    }

    @Override // com.liulishuo.okdownload.core.file.DownloadOutputStream
    public void setLength(long j) {
        try {
            Os.posix_fallocate(this.f39463b.getFileDescriptor(), 0L, j);
        } catch (Throwable th) {
            if (!(th instanceof ErrnoException)) {
                Util.m30986w("DownloadUriOutputStream", "It can't pre-allocate length(" + j + ") on the sdk version(" + Build.VERSION.SDK_INT + "), because of " + th);
                return;
            }
            int i = th.errno;
            if (i == OsConstants.ENOSYS || i == OsConstants.ENOTSUP) {
                Util.m30986w("DownloadUriOutputStream", "fallocate() not supported; falling back to ftruncate()");
                try {
                    Os.ftruncate(this.f39463b.getFileDescriptor(), j);
                } catch (Throwable th2) {
                    Util.m30986w("DownloadUriOutputStream", "It can't pre-allocate length(" + j + ") on the sdk version(" + Build.VERSION.SDK_INT + "), because of " + th2);
                }
            }
        }
    }

    @Override // com.liulishuo.okdownload.core.file.DownloadOutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.f39464c.write(bArr, i, i2);
    }

    public DownloadUriOutputStream(@NonNull FileChannel fileChannel, @NonNull ParcelFileDescriptor parcelFileDescriptor, @NonNull FileOutputStream fileOutputStream, @NonNull BufferedOutputStream bufferedOutputStream) {
        this.f39462a = fileChannel;
        this.f39463b = parcelFileDescriptor;
        this.f39465d = fileOutputStream;
        this.f39464c = bufferedOutputStream;
    }
}
