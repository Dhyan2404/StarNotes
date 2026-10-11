package com.onyx.android.sdk.data.account.bean;

import com.alibaba.fastjson2.annotation.JSONCreator;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.data.ResultCode;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u0000 \r*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0001\rB\u0007\b\u0017¢\u0006\u0002\u0010\u0003B\u000f\b\u0016\u0012\u0006\u0010\u0004\u001a\u00028\u0000¢\u0006\u0002\u0010\u0005B\u000f\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0002\u0010\u0007R\u001e\u0010\b\u001a\u0004\u0018\u00018\u0000X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\f\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\u0005¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/ResultData;", "T", "Lcom/onyx/android/sdk/data/common/data/ResultCode;", "()V", "t", "(Ljava/lang/Object;)V", "resultCode", "(Lcom/onyx/android/sdk/data/common/data/ResultCode;)V", "data", "getData", "()Ljava/lang/Object;", "setData", Constants.OBJECT_SIG, "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ResultData<T> extends ResultCode {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Nullable
    private T data;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\b\u0001\u0010\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/ResultData$Companion;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/data/account/bean/ResultData;", "T", "resultCode", "Lcom/onyx/android/sdk/data/common/data/ResultCode;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final <T> ResultData<T> create(@NotNull ResultCode resultCode) {
            Intrinsics.checkNotNullParameter(resultCode, "resultCode");
            return new ResultData<>(resultCode);
        }

        private Companion() {
        }
    }

    @JSONCreator
    public ResultData() {
    }

    @Nullable
    public final T getData() {
        return this.data;
    }

    public final void setData(@Nullable T t) {
        this.data = t;
    }

    public ResultData(T t) {
        this.data = t;
    }

    public ResultData(@NotNull ResultCode resultCode) {
        Intrinsics.checkNotNullParameter(resultCode, "resultCode");
        setMessage(resultCode.getMessage());
        setCode(resultCode.getCode());
    }
}
