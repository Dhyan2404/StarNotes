package com.onyx.android.sdk.pay.data;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001a\u0010\u001bR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\u0011\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R$\u0010\u0019\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/data/PayArgs;", "", "", "a", Constants.STRING_SIG, "getPayType", "()Ljava/lang/String;", "setPayType", "(Ljava/lang/String;)V", "payType", "Lcom/onyx/android/sdk/pay/data/PayAttachArgs;", "b", "Lcom/onyx/android/sdk/pay/data/PayAttachArgs;", "getAttach", "()Lcom/onyx/android/sdk/pay/data/PayAttachArgs;", "setAttach", "(Lcom/onyx/android/sdk/pay/data/PayAttachArgs;)V", "attach", "", "c", Constants.INTEGER_SIG, "getQrcodeWidth", "()Ljava/lang/Integer;", "setQrcodeWidth", "(Ljava/lang/Integer;)V", "qrcodeWidth", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PayArgs {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public String payType;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public PayAttachArgs attach;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public Integer qrcodeWidth;

    @Nullable
    public final PayAttachArgs getAttach() {
        return this.attach;
    }

    @Nullable
    public final String getPayType() {
        return this.payType;
    }

    @Nullable
    public final Integer getQrcodeWidth() {
        return this.qrcodeWidth;
    }

    public final void setAttach(@Nullable PayAttachArgs payAttachArgs) {
        this.attach = payAttachArgs;
    }

    public final void setPayType(@Nullable String str) {
        this.payType = str;
    }

    public final void setQrcodeWidth(@Nullable Integer num) {
        this.qrcodeWidth = num;
    }
}
