package com.onyx.android.sdk.data.common.data.theme;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\u00032\b\u0010\n\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000b\u001a\u00020\fHÖ\u0001J\t\u0010\r\u001a\u00020\u000eHÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0002\u0010\u0005\"\u0004\b\u0006\u0010\u0004¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/theme/ThemePaymentEnableBean;", "", "isPaymentEnabled", "", "(Z)V", Constants.BOOLEAN_VALUE_SIG, "setPaymentEnabled", "component1", "copy", "equals", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class ThemePaymentEnableBean {
    private boolean isPaymentEnabled;

    public ThemePaymentEnableBean() {
        this(false, 1, null);
    }

    public static /* synthetic */ ThemePaymentEnableBean copy$default(ThemePaymentEnableBean themePaymentEnableBean, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = themePaymentEnableBean.isPaymentEnabled;
        }
        return themePaymentEnableBean.copy(z);
    }

    /* renamed from: component1, reason: from getter */
    public final boolean getIsPaymentEnabled() {
        return this.isPaymentEnabled;
    }

    @NotNull
    public final ThemePaymentEnableBean copy(boolean isPaymentEnabled) {
        return new ThemePaymentEnableBean(isPaymentEnabled);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof ThemePaymentEnableBean) && this.isPaymentEnabled == ((ThemePaymentEnableBean) other).isPaymentEnabled;
    }

    public int hashCode() {
        boolean z = this.isPaymentEnabled;
        if (z) {
            return 1;
        }
        return z ? 1 : 0;
    }

    public final boolean isPaymentEnabled() {
        return this.isPaymentEnabled;
    }

    public final void setPaymentEnabled(boolean z) {
        this.isPaymentEnabled = z;
    }

    @NotNull
    public String toString() {
        return "ThemePaymentEnableBean(isPaymentEnabled=" + this.isPaymentEnabled + ')';
    }

    public ThemePaymentEnableBean(boolean z) {
        this.isPaymentEnabled = z;
    }

    public /* synthetic */ ThemePaymentEnableBean(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z);
    }
}
