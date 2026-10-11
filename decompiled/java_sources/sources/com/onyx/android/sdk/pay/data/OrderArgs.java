package com.onyx.android.sdk.pay.data;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\t\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001e\u0010\u001fR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\bR$\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0006\"\u0004\b\u0010\u0010\bR\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\"\u0010\u001d\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u0004\u001a\u0004\b\u001b\u0010\u0006\"\u0004\b\u001c\u0010\b¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/pay/data/OrderArgs;", "", "", "a", Constants.STRING_SIG, "getOrderId", "()Ljava/lang/String;", "setOrderId", "(Ljava/lang/String;)V", "orderId", "b", "getStatisticSource", "setStatisticSource", "statisticSource", "c", "getInterfaceFrom", "setInterfaceFrom", "interfaceFrom", "", "d", "J", "getNoteAmount", "()J", "setNoteAmount", "(J)V", "noteAmount", "e", "getOperationCode", "setOperationCode", "operationCode", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class OrderArgs {

    /* renamed from: c, reason: from kotlin metadata */
    @JSONField(name = OnyxStatisticConstant.KEY_INTERFACE_FROM)
    @Nullable
    public String interfaceFrom;

    /* renamed from: d, reason: from kotlin metadata */
    public long noteAmount;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String orderId = "";

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public String statisticSource = "";

    /* renamed from: e, reason: from kotlin metadata */
    @JSONField(name = OnyxStatisticConstant.KEY_OPERATION_CODE)
    @NotNull
    public String operationCode = "";

    @Nullable
    public final String getInterfaceFrom() {
        return this.interfaceFrom;
    }

    public final long getNoteAmount() {
        return this.noteAmount;
    }

    @NotNull
    public final String getOperationCode() {
        return this.operationCode;
    }

    @NotNull
    public final String getOrderId() {
        return this.orderId;
    }

    @NotNull
    public final String getStatisticSource() {
        return this.statisticSource;
    }

    public final void setInterfaceFrom(@Nullable String str) {
        this.interfaceFrom = str;
    }

    public final void setNoteAmount(long j) {
        this.noteAmount = j;
    }

    public final void setOperationCode(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.operationCode = str;
    }

    public final void setOrderId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.orderId = str;
    }

    public final void setStatisticSource(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.statisticSource = str;
    }
}
