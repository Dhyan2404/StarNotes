package com.onyx.android.sdk.cloudstorage.common.utils;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.IOException;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.DebugKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\f\b\u0016\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0016\u001a\u00020\u0001\u0012\u0006\u0010\u0013\u001a\u00020\b¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J \u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0016J\u0010\u0010\n\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bH\u0014J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\bH\u0002R\u0014\u0010\u0011\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0014¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/common/utils/ProcessInputStream;", "Ljava/io/InputStream;", "", "b", "", "read", DebugKt.DEBUG_PROPERTY_VALUE_OFF, "len", "", GoogleApiAvailabilityLight.f29016b, "skip", "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;", "progressInfo", "", "notifyProgress", "readCount", C6997f.f39671c, "input", "Ljava/io/InputStream;", "length", "J", "sumRead", "inputStream", Constants.CONSTRUCTOR_NAME, "(Ljava/io/InputStream;J)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public class ProcessInputStream extends InputStream {

    @NotNull
    private final InputStream input;
    private final long length;
    private long sumRead;

    public ProcessInputStream(@NotNull InputStream inputStream, long j) {
        Intrinsics.checkNotNullParameter(inputStream, "inputStream");
        j = j <= 0 ? inputStream.available() : j;
        this.input = inputStream;
        this.length = j;
    }

    /* renamed from: f */
    public final void m32304f(long readCount) {
        if (readCount != -1) {
            this.sumRead += readCount;
        }
        ProgressInfo progressInfo = new ProgressInfo();
        progressInfo.setTotalBytes(this.length);
        progressInfo.setSoFarBytes(this.sumRead);
        progressInfo.setProgress((((float) progressInfo.getSoFarBytes()) * 1.0f) / ((float) progressInfo.getTotalBytes()));
        notifyProgress(progressInfo);
    }

    public void notifyProgress(@NotNull ProgressInfo progressInfo) {
        Intrinsics.checkNotNullParameter(progressInfo, "progressInfo");
    }

    @Override // java.io.InputStream
    public int read(@NotNull byte[] b) throws IOException {
        Intrinsics.checkNotNullParameter(b, "b");
        int read = this.input.read(b);
        m32304f(read);
        return read;
    }

    @Override // java.io.InputStream
    public long skip(long n) throws IOException {
        long skip = this.input.skip(n);
        m32304f(skip);
        return skip;
    }

    @Override // java.io.InputStream
    public int read(@NotNull byte[] b, int off, int len) throws IOException {
        Intrinsics.checkNotNullParameter(b, "b");
        int read = this.input.read(b, off, len);
        m32304f(read);
        return read;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int read = this.input.read();
        if (read != -1) {
            m32304f(1L);
        }
        return read;
    }
}
