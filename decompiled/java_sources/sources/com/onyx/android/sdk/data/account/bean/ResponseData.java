package com.onyx.android.sdk.data.account.bean;

import com.onyx.android.sdk.data.common.data.ResultCode;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\u0004\u0018\u00018\u0000X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\t\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/ResponseData;", "T", "Lcom/onyx/android/sdk/data/common/data/ResultCode;", "()V", "data", "getData", "()Ljava/lang/Object;", "setData", "(Ljava/lang/Object;)V", Constants.OBJECT_SIG, "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ResponseData<T> extends ResultCode {

    @Nullable
    private T data;

    @Nullable
    public final T getData() {
        return this.data;
    }

    public final void setData(@Nullable T t) {
        this.data = t;
    }
}
