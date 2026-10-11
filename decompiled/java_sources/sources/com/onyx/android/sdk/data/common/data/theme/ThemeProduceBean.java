package com.onyx.android.sdk.data.common.data.theme;

import com.onyx.android.sdk.pay.constants.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/theme/ThemeProduceBean;", "", Constants.KEY_GOOGLE_PRODUCT_ID, "", "type", "", "(Ljava/lang/String;I)V", "getProductId", "()Ljava/lang/String;", "setProductId", "(Ljava/lang/String;)V", "getType", "()I", "setType", "(I)V", "component1", "component2", "copy", "equals", "", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "hashCode", "toString", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class ThemeProduceBean {

    @NotNull
    private String productId;
    private int type;

    /* JADX WARN: Multi-variable type inference failed */
    public ThemeProduceBean() {
        this(null, 0, 3, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ ThemeProduceBean copy$default(ThemeProduceBean themeProduceBean, String str, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = themeProduceBean.productId;
        }
        if ((i2 & 2) != 0) {
            i = themeProduceBean.type;
        }
        return themeProduceBean.copy(str, i);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getProductId() {
        return this.productId;
    }

    /* renamed from: component2, reason: from getter */
    public final int getType() {
        return this.type;
    }

    @NotNull
    public final ThemeProduceBean copy(@NotNull String productId, int type) {
        Intrinsics.checkNotNullParameter(productId, "productId");
        return new ThemeProduceBean(productId, type);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ThemeProduceBean)) {
            return false;
        }
        ThemeProduceBean themeProduceBean = (ThemeProduceBean) other;
        return Intrinsics.areEqual(this.productId, themeProduceBean.productId) && this.type == themeProduceBean.type;
    }

    @NotNull
    public final String getProductId() {
        return this.productId;
    }

    public final int getType() {
        return this.type;
    }

    public int hashCode() {
        return (this.productId.hashCode() * 31) + Integer.hashCode(this.type);
    }

    public final void setProductId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.productId = str;
    }

    public final void setType(int i) {
        this.type = i;
    }

    @NotNull
    public String toString() {
        return "ThemeProduceBean(productId=" + this.productId + ", type=" + this.type + ')';
    }

    public ThemeProduceBean(@NotNull String productId, int i) {
        Intrinsics.checkNotNullParameter(productId, "productId");
        this.productId = productId;
        this.type = i;
    }

    public /* synthetic */ ThemeProduceBean(String str, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? -1 : i);
    }
}
