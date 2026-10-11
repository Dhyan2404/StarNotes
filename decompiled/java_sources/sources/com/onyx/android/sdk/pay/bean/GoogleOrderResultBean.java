package com.onyx.android.sdk.pay.bean;

import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\f\u0010\rJ\u0006\u0010\u0003\u001a\u00020\u0002R\"\u0010\u000b\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/bean/GoogleOrderResultBean;", "", "", "isSuccess", "", "a", "I", "getStatus", "()I", "setStatus", "(I)V", "status", Constants.CONSTRUCTOR_NAME, "()V", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class GoogleOrderResultBean {

    /* renamed from: a, reason: from kotlin metadata */
    public int status;

    public final int getStatus() {
        return this.status;
    }

    public final boolean isSuccess() {
        return this.status == 1;
    }

    public final void setStatus(int i) {
        this.status = i;
    }
}
