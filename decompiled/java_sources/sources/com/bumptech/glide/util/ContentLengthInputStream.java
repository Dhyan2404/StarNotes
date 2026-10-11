package com.bumptech.glide.util;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes3.dex */
public final class ContentLengthInputStream extends FilterInputStream {

    /* renamed from: g */
    public static final String f15471g = "ContentLengthStream";

    /* renamed from: h */
    public static final int f15472h = -1;

    /* renamed from: e */
    public final long f15473e;

    /* renamed from: f */
    public int f15474f;

    public ContentLengthInputStream(@NonNull InputStream inputStream, long j) {
        super(inputStream);
        this.f15473e = j;
    }

    /* renamed from: j */
    public static int m9174j(@Nullable String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return Integer.parseInt(str);
            } catch (NumberFormatException e) {
                if (Log.isLoggable(f15471g, 3)) {
                    Log.d(f15471g, "failed to parse content length header: " + str, e);
                }
            }
        }
        return -1;
    }

    @NonNull
    public static InputStream obtain(@NonNull InputStream inputStream, @Nullable String str) {
        return obtain(inputStream, m9174j(str));
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int available() throws IOException {
        return (int) Math.max(this.f15473e - this.f15474f, ((FilterInputStream) this).in.available());
    }

    /* renamed from: f */
    public final int m9175f(int i) throws IOException {
        if (i >= 0) {
            this.f15474f += i;
        } else if (this.f15473e - this.f15474f > 0) {
            throw new IOException("Failed to read all expected data, expected: " + this.f15473e + ", but read: " + this.f15474f);
        }
        return i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() throws IOException {
        int read;
        read = super.read();
        m9175f(read >= 0 ? 1 : -1);
        return read;
    }

    @NonNull
    public static InputStream obtain(@NonNull InputStream inputStream, long j) {
        return new ContentLengthInputStream(inputStream, j);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read(byte[] bArr, int i, int i2) throws IOException {
        return m9175f(super.read(bArr, i, i2));
    }
}
