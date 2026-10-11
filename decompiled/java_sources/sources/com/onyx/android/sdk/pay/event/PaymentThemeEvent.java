package com.onyx.android.sdk.pay.event;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0012\u0010\u0011J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0007\u001a\u00020\u0006HÖ\u0001J\t\u0010\b\u001a\u00020\u0002HÖ\u0001J\u0013\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u0004\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/event/PaymentThemeEvent;", "", "", "component1", "skinTypeValue", "copy", "", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "I", "getSkinTypeValue", "()I", "setSkinTypeValue", "(I)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class PaymentThemeEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    public int skinTypeValue;

    public PaymentThemeEvent(int i) {
        this.skinTypeValue = i;
    }

    public static /* synthetic */ PaymentThemeEvent copy$default(PaymentThemeEvent paymentThemeEvent, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = paymentThemeEvent.skinTypeValue;
        }
        return paymentThemeEvent.copy(i);
    }

    /* renamed from: component1, reason: from getter */
    public final int getSkinTypeValue() {
        return this.skinTypeValue;
    }

    @NotNull
    public final PaymentThemeEvent copy(int skinTypeValue) {
        return new PaymentThemeEvent(skinTypeValue);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof PaymentThemeEvent) && this.skinTypeValue == ((PaymentThemeEvent) other).skinTypeValue;
    }

    public final int getSkinTypeValue() {
        return this.skinTypeValue;
    }

    public int hashCode() {
        return Integer.hashCode(this.skinTypeValue);
    }

    public final void setSkinTypeValue(int i) {
        this.skinTypeValue = i;
    }

    @NotNull
    public String toString() {
        return "PaymentThemeEvent(skinTypeValue=" + this.skinTypeValue + ')';
    }
}
