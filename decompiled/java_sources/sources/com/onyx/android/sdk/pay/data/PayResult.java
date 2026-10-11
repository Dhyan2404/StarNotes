package com.onyx.android.sdk.pay.data;

import com.alibaba.fastjson2.annotation.JSONField;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u000f\u0018\u0000  2\u00020\u0001:\u0001 B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0004¢\u0006\u0004\b\u001e\u0010\u001fJ\b\u0010\u0003\u001a\u00020\u0002H\u0007R\u0017\u0010\t\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\bR\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R$\u0010\u0019\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\"\u0010\u001d\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\f\u001a\u0004\b\u001b\u0010\u000e\"\u0004\b\u001c\u0010\u0010¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/data/PayResult;", "", "", "isSuccess", "Lcom/onyx/android/sdk/pay/data/PayType;", "a", "Lcom/onyx/android/sdk/pay/data/PayType;", "getPayType", "()Lcom/onyx/android/sdk/pay/data/PayType;", "payType", "", "b", "I", "getStatus", "()I", "setStatus", "(I)V", "status", "", "c", Constants.STRING_SIG, "getMessage", "()Ljava/lang/String;", "setMessage", "(Ljava/lang/String;)V", "message", "d", "getCode", "setCode", "code", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/pay/data/PayType;)V", "Companion", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PayResult {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final PayType payType;

    /* renamed from: b, reason: from kotlin metadata */
    public int status;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public String message;

    /* renamed from: d, reason: from kotlin metadata */
    public int code;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/data/PayResult$Companion;", "", "()V", "createFailResult", "Lcom/onyx/android/sdk/pay/data/PayResult;", "payType", "Lcom/onyx/android/sdk/pay/data/PayType;", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nPayResult.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PayResult.kt\ncom/onyx/android/sdk/pay/data/PayResult$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,30:1\n1#2:31\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final PayResult createFailResult(@NotNull PayType payType) {
            Intrinsics.checkNotNullParameter(payType, "payType");
            PayResult payResult = new PayResult(payType);
            payResult.setStatus(2);
            return payResult;
        }

        public Companion() {
        }
    }

    public PayResult(@NotNull PayType payType) {
        Intrinsics.checkNotNullParameter(payType, "payType");
        this.payType = payType;
        this.message = "";
    }

    public final int getCode() {
        return this.code;
    }

    @Nullable
    public final String getMessage() {
        return this.message;
    }

    @NotNull
    public final PayType getPayType() {
        return this.payType;
    }

    public final int getStatus() {
        return this.status;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isSuccess() {
        return this.status == 0;
    }

    public final void setCode(int i) {
        this.code = i;
    }

    public final void setMessage(@Nullable String str) {
        this.message = str;
    }

    public final void setStatus(int i) {
        this.status = i;
    }
}
