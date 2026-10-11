package com.onyx.android.sdk.reader.request;

import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.p018rx.RxBaseBenchmarkRequest;
import com.onyx.android.sdk.reader.ReaderBundle;
import com.onyx.android.sdk.reader.config.ReaderConfig;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\b&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0011\u001a\u00020\b¢\u0006\u0004\b\u0012\u0010\u0010J\u0006\u0010\u0003\u001a\u00020\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0014J\u0010\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0014J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH&R\"\u0010\u0011\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;", "", "safelyExecuteImpl", "closeResources", "", NotificationCompat.CATEGORY_MESSAGE, "getMsg", "Lcom/onyx/android/sdk/reader/ReaderBundle;", "bundle", "execute", "e", "Lcom/onyx/android/sdk/reader/ReaderBundle;", "getReaderBundle", "()Lcom/onyx/android/sdk/reader/ReaderBundle;", "setReaderBundle", "(Lcom/onyx/android/sdk/reader/ReaderBundle;)V", "readerBundle", Constants.CONSTRUCTOR_NAME, "sdk-reader_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public abstract class RxBaseReaderRequest extends RxBaseBenchmarkRequest {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public ReaderBundle readerBundle;

    public RxBaseReaderRequest(@NotNull ReaderBundle readerBundle) {
        Intrinsics.checkNotNullParameter(readerBundle, "readerBundle");
        this.readerBundle = readerBundle;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseBenchmarkRequest
    public void closeResources() {
    }

    public abstract void execute(@NotNull ReaderBundle bundle);

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseBenchmarkRequest
    @NotNull
    public String getMsg(@NotNull String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        return ReaderConfig.INSTANCE.getProcessTagName() + ", " + AnyKt.toSimpleNameString(this) + ':' + msg;
    }

    @NotNull
    public final ReaderBundle getReaderBundle() {
        return this.readerBundle;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseBenchmarkRequest
    public final void safelyExecuteImpl() {
        execute(this.readerBundle);
    }

    public final void setReaderBundle(@NotNull ReaderBundle readerBundle) {
        Intrinsics.checkNotNullParameter(readerBundle, "<set-?>");
        this.readerBundle = readerBundle;
    }
}
