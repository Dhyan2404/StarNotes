package com.onyx.android.sdk.data.common.data;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0016\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\n\u001a\u0004\b\u00028\u0000ø\u0001\u0000¢\u0006\u0002\u0010\u0006J\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\fH\u0016R\u001e\u0010\u0004\u001a\u0004\u0018\u00018\u0000X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\t\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b\u0082\u0002\u0004\n\u0002\b9¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/ResponeData;", "T", "Lcom/onyx/android/sdk/data/common/data/ResultCode;", "()V", "data", "getData", "()Ljava/lang/Object;", "setData", "(Ljava/lang/Object;)V", Constants.OBJECT_SIG, "getNonNullData", "isDataFormatOk", "", "isSuccess", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public class ResponeData<T> extends ResultCode {

    @Nullable
    private T data;

    @Nullable
    public final T getData() {
        return this.data;
    }

    @NotNull
    public final T getNonNullData() {
        T t = this.data;
        Intrinsics.checkNotNull(t);
        return t;
    }

    public boolean isDataFormatOk() {
        return true;
    }

    public boolean isSuccess() {
        return getCode() == 0 && isDataFormatOk();
    }

    public final void setData(@Nullable T t) {
        this.data = t;
    }
}
