package com.onyx.android.sdk.reader.api;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.sun.org.apache.bcel.internal.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u0007\n\u0002\b\u000b\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0007¢\u0006\u0004\b\u0018\u0010\u0019J\b\u0010\u0003\u001a\u00020\u0002H\u0016R\"\u0010\u000b\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\"\u0010\u000f\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0006\u001a\u0004\b\r\u0010\b\"\u0004\b\u000e\u0010\nR\"\u0010\u0017\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ProgressInfo;", "", "", "toString", "", "a", "I", "getSoFarBytes", "()I", "setSoFarBytes", "(I)V", "soFarBytes", "b", "getTotalBytes", "setTotalBytes", "totalBytes", "", "c", "F", "getProgress", "()F", "setProgress", "(F)V", "progress", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ProgressInfo {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    public int soFarBytes;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public int totalBytes = 1;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    public float progress;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ProgressInfo$Companion;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/reader/api/ProgressInfo;", Keywords.FUNC_CURRENT_STRING, "", "total", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ProgressInfo create(int current, int total) {
            ProgressInfo progressInfo = new ProgressInfo();
            progressInfo.setSoFarBytes(current);
            progressInfo.setTotalBytes(Math.max(1, total));
            progressInfo.setProgress((progressInfo.getSoFarBytes() * 100.0f) / progressInfo.getTotalBytes());
            return progressInfo;
        }

        public Companion() {
        }
    }

    public final float getProgress() {
        return this.progress;
    }

    public final int getSoFarBytes() {
        return this.soFarBytes;
    }

    public final int getTotalBytes() {
        return this.totalBytes;
    }

    public final void setProgress(float f) {
        this.progress = f;
    }

    public final void setSoFarBytes(int i) {
        this.soFarBytes = i;
    }

    public final void setTotalBytes(int i) {
        this.totalBytes = i;
    }

    @NotNull
    public String toString() {
        return "ProgressInfo{soFarBytes=" + this.soFarBytes + ", totalBytes=" + this.totalBytes + ", progress=" + this.progress + '}';
    }
}
