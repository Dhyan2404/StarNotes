package com.onyx.android.sdk.data.common.data.theme;

import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.pay.constants.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J1\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000bR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\t\"\u0004\b\u000f\u0010\u000bR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\t\"\u0004\b\u0011\u0010\u000b¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/theme/ThemeOrderBean;", "", "orderNum", "", Constants.KEY_GOOGLE_PRODUCT_ID, "transactionToken", Constant.TAG_USER_ID, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getOrderNum", "()Ljava/lang/String;", "setOrderNum", "(Ljava/lang/String;)V", "getProductId", "setProductId", "getTransactionToken", "setTransactionToken", "getUserId", "setUserId", "component1", "component2", "component3", "component4", "copy", "equals", "", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class ThemeOrderBean {

    @NotNull
    private String orderNum;

    @NotNull
    private String productId;

    @NotNull
    private String transactionToken;

    @NotNull
    private String userId;

    public ThemeOrderBean(@NotNull String orderNum, @NotNull String productId, @NotNull String transactionToken, @NotNull String userId) {
        Intrinsics.checkNotNullParameter(orderNum, "orderNum");
        Intrinsics.checkNotNullParameter(productId, "productId");
        Intrinsics.checkNotNullParameter(transactionToken, "transactionToken");
        Intrinsics.checkNotNullParameter(userId, "userId");
        this.orderNum = orderNum;
        this.productId = productId;
        this.transactionToken = transactionToken;
        this.userId = userId;
    }

    public static /* synthetic */ ThemeOrderBean copy$default(ThemeOrderBean themeOrderBean, String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = themeOrderBean.orderNum;
        }
        if ((i & 2) != 0) {
            str2 = themeOrderBean.productId;
        }
        if ((i & 4) != 0) {
            str3 = themeOrderBean.transactionToken;
        }
        if ((i & 8) != 0) {
            str4 = themeOrderBean.userId;
        }
        return themeOrderBean.copy(str, str2, str3, str4);
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
    /* renamed from: component4, reason: from getter */
    public final String getUserId() {
        return this.userId;
    }

    @NotNull
    public final ThemeOrderBean copy(@NotNull String orderNum, @NotNull String productId, @NotNull String transactionToken, @NotNull String userId) {
        Intrinsics.checkNotNullParameter(orderNum, "orderNum");
        Intrinsics.checkNotNullParameter(productId, "productId");
        Intrinsics.checkNotNullParameter(transactionToken, "transactionToken");
        Intrinsics.checkNotNullParameter(userId, "userId");
        return new ThemeOrderBean(orderNum, productId, transactionToken, userId);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ThemeOrderBean)) {
            return false;
        }
        ThemeOrderBean themeOrderBean = (ThemeOrderBean) other;
        return Intrinsics.areEqual(this.orderNum, themeOrderBean.orderNum) && Intrinsics.areEqual(this.productId, themeOrderBean.productId) && Intrinsics.areEqual(this.transactionToken, themeOrderBean.transactionToken) && Intrinsics.areEqual(this.userId, themeOrderBean.userId);
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

    @NotNull
    public final String getUserId() {
        return this.userId;
    }

    public int hashCode() {
        return (((((this.orderNum.hashCode() * 31) + this.productId.hashCode()) * 31) + this.transactionToken.hashCode()) * 31) + this.userId.hashCode();
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

    public final void setUserId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.userId = str;
    }

    @NotNull
    public String toString() {
        return "ThemeOrderBean(orderNum=" + this.orderNum + ", productId=" + this.productId + ", transactionToken=" + this.transactionToken + ", userId=" + this.userId + ')';
    }
}
