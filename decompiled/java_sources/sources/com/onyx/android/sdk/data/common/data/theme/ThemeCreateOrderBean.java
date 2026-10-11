package com.onyx.android.sdk.data.common.data.theme;

import com.onyx.android.sdk.pay.constants.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J'\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\b\"\u0004\b\f\u0010\nR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\b\"\u0004\b\u000e\u0010\n¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/theme/ThemeCreateOrderBean;", "", "orderNum", "", Constants.KEY_GOOGLE_PRODUCT_ID, "transactionToken", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getOrderNum", "()Ljava/lang/String;", "setOrderNum", "(Ljava/lang/String;)V", "getProductId", "setProductId", "getTransactionToken", "setTransactionToken", "component1", "component2", "component3", "copy", "equals", "", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class ThemeCreateOrderBean {

    @NotNull
    private String orderNum;

    @NotNull
    private String productId;

    @NotNull
    private String transactionToken;

    public ThemeCreateOrderBean(@NotNull String orderNum, @NotNull String productId, @NotNull String transactionToken) {
        Intrinsics.checkNotNullParameter(orderNum, "orderNum");
        Intrinsics.checkNotNullParameter(productId, "productId");
        Intrinsics.checkNotNullParameter(transactionToken, "transactionToken");
        this.orderNum = orderNum;
        this.productId = productId;
        this.transactionToken = transactionToken;
    }

    public static /* synthetic */ ThemeCreateOrderBean copy$default(ThemeCreateOrderBean themeCreateOrderBean, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = themeCreateOrderBean.orderNum;
        }
        if ((i & 2) != 0) {
            str2 = themeCreateOrderBean.productId;
        }
        if ((i & 4) != 0) {
            str3 = themeCreateOrderBean.transactionToken;
        }
        return themeCreateOrderBean.copy(str, str2, str3);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getOrderNum() {
        return this.orderNum;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getProductId() {
        return this.productId;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final String getTransactionToken() {
        return this.transactionToken;
    }

    @NotNull
    public final ThemeCreateOrderBean copy(@NotNull String orderNum, @NotNull String productId, @NotNull String transactionToken) {
        Intrinsics.checkNotNullParameter(orderNum, "orderNum");
        Intrinsics.checkNotNullParameter(productId, "productId");
        Intrinsics.checkNotNullParameter(transactionToken, "transactionToken");
        return new ThemeCreateOrderBean(orderNum, productId, transactionToken);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ThemeCreateOrderBean)) {
            return false;
        }
        ThemeCreateOrderBean themeCreateOrderBean = (ThemeCreateOrderBean) other;
        return Intrinsics.areEqual(this.orderNum, themeCreateOrderBean.orderNum) && Intrinsics.areEqual(this.productId, themeCreateOrderBean.productId) && Intrinsics.areEqual(this.transactionToken, themeCreateOrderBean.transactionToken);
    }

    @NotNull
    public final String getOrderNum() {
        return this.orderNum;
    }

    @NotNull
    public final String getProductId() {
        return this.productId;
    }

    @NotNull
    public final String getTransactionToken() {
        return this.transactionToken;
    }

    public int hashCode() {
        return (((this.orderNum.hashCode() * 31) + this.productId.hashCode()) * 31) + this.transactionToken.hashCode();
    }

    public final void setOrderNum(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.orderNum = str;
    }

    public final void setProductId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.productId = str;
    }

    public final void setTransactionToken(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.transactionToken = str;
    }

    @NotNull
    public String toString() {
        return "ThemeCreateOrderBean(orderNum=" + this.orderNum + ", productId=" + this.productId + ", transactionToken=" + this.transactionToken + ')';
    }
}
