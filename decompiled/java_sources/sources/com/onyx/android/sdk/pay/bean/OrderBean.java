package com.onyx.android.sdk.pay.bean;

import com.alibaba.fastjson2.annotation.JSONField;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.pay.utils.PayUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b!\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b3\u00104J\b\u0010\u0003\u001a\u00020\u0002H\u0007J\b\u0010\u0004\u001a\u00020\u0002H\u0007J\b\u0010\u0005\u001a\u00020\u0002H\u0007J\b\u0010\u0006\u001a\u00020\u0002H\u0007J\b\u0010\u0007\u001a\u00020\u0002H\u0007R\"\u0010\u000f\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\"\u0010\u0013\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\n\u001a\u0004\b\u0011\u0010\f\"\u0004\b\u0012\u0010\u000eR\"\u0010\u001b\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR$\u0010\u001f\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\n\u001a\u0004\b\u001d\u0010\f\"\u0004\b\u001e\u0010\u000eR$\u0010#\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b \u0010\n\u001a\u0004\b!\u0010\f\"\u0004\b\"\u0010\u000eR$\u0010'\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b$\u0010\n\u001a\u0004\b%\u0010\f\"\u0004\b&\u0010\u000eR$\u0010.\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R$\u00102\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b/\u0010)\u001a\u0004\b0\u0010+\"\u0004\b1\u0010-¨\u00065"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/bean/OrderBean;", "", "", "isUnpaid", "isPaid", "isCancel", "isHuaweiIapPayEnabled", "isGooglePayEnable", "", "a", Constants.STRING_SIG, "getOrderNo", "()Ljava/lang/String;", "setOrderNo", "(Ljava/lang/String;)V", "orderNo", "b", "getNewOrderNo", "setNewOrderNo", "newOrderNo", "", "c", "I", "getStatus", "()I", "setStatus", "(I)V", "status", "d", "getProductName", "setProductName", "productName", "e", "getFinalAmount", "setFinalAmount", "finalAmount", C6997f.f39671c, "getTotalAmount", "setTotalAmount", "totalAmount", C6998g.f39679a, "Ljava/lang/Boolean;", "getHuaweiIapPayEnabled", "()Ljava/lang/Boolean;", "setHuaweiIapPayEnabled", "(Ljava/lang/Boolean;)V", "huaweiIapPayEnabled", C6999h.f39688c, "getGooglePayEnabled", "setGooglePayEnabled", "googlePayEnabled", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class OrderBean {

    /* renamed from: c, reason: from kotlin metadata */
    @JSONField(name = "status")
    public int status;

    /* renamed from: g, reason: from kotlin metadata */
    @JSONField(name = "isHuaweiIapPayEnabled")
    @Nullable
    public Boolean huaweiIapPayEnabled;

    /* renamed from: h, reason: from kotlin metadata */
    @JSONField(name = "isGoogleIapPayEnabled")
    @Nullable
    public Boolean googlePayEnabled;

    /* renamed from: a, reason: from kotlin metadata */
    @JSONField(name = "orderNo")
    @NotNull
    public String orderNo = "";

    /* renamed from: b, reason: from kotlin metadata */
    @JSONField(name = "newOrderNo")
    @NotNull
    public String newOrderNo = "";

    /* renamed from: d, reason: from kotlin metadata */
    @JSONField(name = "productName")
    @Nullable
    public String productName = "";

    /* renamed from: e, reason: from kotlin metadata */
    @JSONField(name = "finalAmount")
    @Nullable
    public String finalAmount = "";

    /* renamed from: f, reason: from kotlin metadata */
    @JSONField(name = "totalAmount")
    @Nullable
    public String totalAmount = "";

    public OrderBean() {
        Boolean bool = Boolean.FALSE;
        this.huaweiIapPayEnabled = bool;
        this.googlePayEnabled = bool;
    }

    @Nullable
    public final String getFinalAmount() {
        return this.finalAmount;
    }

    @Nullable
    public final Boolean getGooglePayEnabled() {
        return this.googlePayEnabled;
    }

    @Nullable
    public final Boolean getHuaweiIapPayEnabled() {
        return this.huaweiIapPayEnabled;
    }

    @NotNull
    public final String getNewOrderNo() {
        return this.newOrderNo;
    }

    @NotNull
    public final String getOrderNo() {
        return this.orderNo;
    }

    @Nullable
    public final String getProductName() {
        return this.productName;
    }

    public final int getStatus() {
        return this.status;
    }

    @Nullable
    public final String getTotalAmount() {
        return this.totalAmount;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isCancel() {
        return this.status == 3;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isGooglePayEnable() {
        return Intrinsics.areEqual(this.googlePayEnabled, Boolean.TRUE);
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isHuaweiIapPayEnabled() {
        return Intrinsics.areEqual(this.huaweiIapPayEnabled, Boolean.TRUE) && PayUtils.INSTANCE.isHuaweiPayEnabled();
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isPaid() {
        int i = this.status;
        return i == 1 || i == 2;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isUnpaid() {
        return this.status == 0;
    }

    public final void setFinalAmount(@Nullable String str) {
        this.finalAmount = str;
    }

    public final void setGooglePayEnabled(@Nullable Boolean bool) {
        this.googlePayEnabled = bool;
    }

    public final void setHuaweiIapPayEnabled(@Nullable Boolean bool) {
        this.huaweiIapPayEnabled = bool;
    }

    public final void setNewOrderNo(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.newOrderNo = str;
    }

    public final void setOrderNo(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.orderNo = str;
    }

    public final void setProductName(@Nullable String str) {
        this.productName = str;
    }

    public final void setStatus(int i) {
        this.status = i;
    }

    public final void setTotalAmount(@Nullable String str) {
        this.totalAmount = str;
    }
}
