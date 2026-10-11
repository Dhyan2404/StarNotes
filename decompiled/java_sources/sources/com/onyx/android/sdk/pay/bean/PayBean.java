package com.onyx.android.sdk.pay.bean;

import androidx.core.app.NotificationCompat;
import com.alibaba.fastjson2.annotation.JSONField;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b+\n\u0002\u0010\b\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b:\u0010;R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\bR$\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0006\"\u0004\b\u0010\u0010\bR$\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR$\u0010\u0019\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0004\u001a\u0004\b\u0017\u0010\u0006\"\u0004\b\u0018\u0010\bR$\u0010\u001d\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u0004\u001a\u0004\b\u001b\u0010\u0006\"\u0004\b\u001c\u0010\bR$\u0010!\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u0004\u001a\u0004\b\u001f\u0010\u0006\"\u0004\b \u0010\bR$\u0010%\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010\u0004\u001a\u0004\b#\u0010\u0006\"\u0004\b$\u0010\bR$\u0010)\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010\u0004\u001a\u0004\b'\u0010\u0006\"\u0004\b(\u0010\bR$\u0010-\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010\u0004\u001a\u0004\b+\u0010\u0006\"\u0004\b,\u0010\bR\"\u00105\u001a\u00020.8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b/\u00100\u001a\u0004\b1\u00102\"\u0004\b3\u00104R$\u00109\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b6\u0010\u0004\u001a\u0004\b7\u0010\u0006\"\u0004\b8\u0010\b¨\u0006<"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/bean/PayBean;", "", "", "a", Constants.STRING_SIG, "getAppid", "()Ljava/lang/String;", "setAppid", "(Ljava/lang/String;)V", "appid", "b", "getPartnerid", "setPartnerid", "partnerid", "c", "getPrepayid", "setPrepayid", "prepayid", "d", "getPackageValue", "setPackageValue", "packageValue", "e", "getNoncestr", "setNoncestr", "noncestr", C6997f.f39671c, "getTimestamp", "setTimestamp", NotificationCompat.CarExtender.f4980p, C6998g.f39679a, "getSign", "setSign", "sign", C6999h.f39688c, "getCodeUrl", "setCodeUrl", "codeUrl", "i", "getOrderStr", "setOrderStr", "orderStr", "j", "getProductId", "setProductId", com.onyx.android.sdk.pay.constants.Constants.KEY_GOOGLE_PRODUCT_ID, "", C4921e.f26537n, "I", "getProductType", "()I", "setProductType", "(I)V", "productType", "l", "getOutTradeNo", "setOutTradeNo", "outTradeNo", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PayBean {

    /* renamed from: k, reason: from kotlin metadata */
    public int productType;

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public String appid = "";

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public String partnerid = "";

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public String prepayid = "";

    /* renamed from: d, reason: from kotlin metadata */
    @JSONField(name = "package")
    @Nullable
    public String packageValue = "";

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public String noncestr = "";

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public String timestamp = "";

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public String sign = "";

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public String codeUrl = "";

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public String orderStr = "";

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public String productId = "";

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public String outTradeNo = "";

    @Nullable
    public final String getAppid() {
        return this.appid;
    }

    @Nullable
    public final String getCodeUrl() {
        return this.codeUrl;
    }

    @Nullable
    public final String getNoncestr() {
        return this.noncestr;
    }

    @Nullable
    public final String getOrderStr() {
        return this.orderStr;
    }

    @Nullable
    public final String getOutTradeNo() {
        return this.outTradeNo;
    }

    @Nullable
    public final String getPackageValue() {
        return this.packageValue;
    }

    @Nullable
    public final String getPartnerid() {
        return this.partnerid;
    }

    @Nullable
    public final String getPrepayid() {
        return this.prepayid;
    }

    @Nullable
    public final String getProductId() {
        return this.productId;
    }

    public final int getProductType() {
        return this.productType;
    }

    @Nullable
    public final String getSign() {
        return this.sign;
    }

    @Nullable
    public final String getTimestamp() {
        return this.timestamp;
    }

    public final void setAppid(@Nullable String str) {
        this.appid = str;
    }

    public final void setCodeUrl(@Nullable String str) {
        this.codeUrl = str;
    }

    public final void setNoncestr(@Nullable String str) {
        this.noncestr = str;
    }

    public final void setOrderStr(@Nullable String str) {
        this.orderStr = str;
    }

    public final void setOutTradeNo(@Nullable String str) {
        this.outTradeNo = str;
    }

    public final void setPackageValue(@Nullable String str) {
        this.packageValue = str;
    }

    public final void setPartnerid(@Nullable String str) {
        this.partnerid = str;
    }

    public final void setPrepayid(@Nullable String str) {
        this.prepayid = str;
    }

    public final void setProductId(@Nullable String str) {
        this.productId = str;
    }

    public final void setProductType(int i) {
        this.productType = i;
    }

    public final void setSign(@Nullable String str) {
        this.sign = str;
    }

    public final void setTimestamp(@Nullable String str) {
        this.timestamp = str;
    }
}
