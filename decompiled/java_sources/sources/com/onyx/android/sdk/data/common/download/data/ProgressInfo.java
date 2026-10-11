package com.onyx.android.sdk.data.common.download.data;

import com.alibaba.fastjson2.annotation.JSONCreator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u0006\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0007\b\u0017¢\u0006\u0002\u0010\u0002B\u0017\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0002\u0010\u0006B\u0017\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0007¢\u0006\u0002\u0010\bB\u000f\b\u0016\u0012\u0006\u0010\t\u001a\u00020\u0000¢\u0006\u0002\u0010\nJ\u0006\u0010\u0019\u001a\u00020\u001aJ\b\u0010\u001b\u001a\u00020\u001cH\u0016R\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0013\"\u0004\b\u0018\u0010\u0015¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;", "", "()V", Keywords.FUNC_CURRENT_STRING, "", "total", "(II)V", "", "(JJ)V", "progressInfo", "(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V", "progress", "", "getProgress", Constants.DOUBLE_VALUE_SIG, "setProgress", "(D)V", "soFarBytes", "getSoFarBytes", "()J", "setSoFarBytes", "(J)V", "totalBytes", "getTotalBytes", "setTotalBytes", "isComplete", "", "toString", "", "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ProgressInfo {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private double progress;
    private long soFarBytes;
    private long totalBytes;

    @Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo$Companion;", "", "()V", "onComplete", "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ProgressInfo onComplete() {
            return new ProgressInfo(100, 100);
        }

        private Companion() {
        }
    }

    @JSONCreator
    public ProgressInfo() {
    }

    public final double getProgress() {
        return this.progress;
    }

    public final long getSoFarBytes() {
        return this.soFarBytes;
    }

    public final long getTotalBytes() {
        return this.totalBytes;
    }

    public final boolean isComplete() {
        return this.progress >= 100.0d;
    }

    public final void setProgress(double d) {
        this.progress = d;
    }

    public final void setSoFarBytes(long j) {
        this.soFarBytes = j;
    }

    public final void setTotalBytes(long j) {
        this.totalBytes = j;
    }

    @NotNull
    public String toString() {
        return "ProgressInfo{soFarBytes=" + this.soFarBytes + ", totalBytes=" + this.totalBytes + ", progress=" + this.progress + '}';
    }

    public ProgressInfo(int i, int i2) {
        this(i, i2);
    }

    public ProgressInfo(long j, long j2) {
        this.soFarBytes = j;
        this.totalBytes = j2;
        this.progress = (j * 100) / j2;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ProgressInfo(@NotNull ProgressInfo progressInfo) {
        this(progressInfo.soFarBytes, progressInfo.totalBytes);
        Intrinsics.checkNotNullParameter(progressInfo, "progressInfo");
    }
}
