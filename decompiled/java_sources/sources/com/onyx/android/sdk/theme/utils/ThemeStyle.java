package com.onyx.android.sdk.theme.utils;

import com.onyx.android.sdk.skin.C7996R;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0011\b\u0086\b\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0004¢\u0006\u0004\b\u0018\u0010\u0019J\u0006\u0010\u0003\u001a\u00020\u0002J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0004HÆ\u0003J\u001d\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\u0004HÆ\u0001J\t\u0010\u000b\u001a\u00020\nHÖ\u0001J\t\u0010\f\u001a\u00020\u0004HÖ\u0001J\u0013\u0010\u000e\u001a\u00020\u00022\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u0007\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\"\u0010\b\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0010\u001a\u0004\b\u0016\u0010\u0012\"\u0004\b\u0017\u0010\u0014¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/theme/utils/ThemeStyle;", "", "", "isVipStyle", "", "component1", "component2", "style", "styleNameRes", "copy", "", "toString", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", "I", "getStyle", "()I", "setStyle", "(I)V", "b", "getStyleNameRes", "setStyleNameRes", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(II)V", "Companion", "sdk-skinChange_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class ThemeStyle {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final int STYLE_DARK_LIGHT = 1;
    public static final int STYLE_PAYMENT = 4;
    public static final int STYLE_SPECIAL = 2;
    public static final int STYLE_VIP = 3;

    /* renamed from: a, reason: from kotlin metadata and from toString */
    public int style;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public int styleNameRes;

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\b\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\tJ\u0006\u0010\u000b\u001a\u00020\tJ\u0006\u0010\f\u001a\u00020\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/theme/utils/ThemeStyle$Companion;", "", "()V", "STYLE_DARK_LIGHT", "", "STYLE_PAYMENT", "STYLE_SPECIAL", "STYLE_VIP", "getDarkLightStyle", "Lcom/onyx/android/sdk/theme/utils/ThemeStyle;", "getPaymentStyle", "getSpecialStyle", "getVipStyle", "sdk-skinChange_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ThemeStyle getDarkLightStyle() {
            return new ThemeStyle(1, C7996R.string.theme_style_dark_light);
        }

        @NotNull
        public final ThemeStyle getPaymentStyle() {
            return new ThemeStyle(4, C7996R.string.theme_style_payment);
        }

        @NotNull
        public final ThemeStyle getSpecialStyle() {
            return new ThemeStyle(2, C7996R.string.theme_style_special);
        }

        @NotNull
        public final ThemeStyle getVipStyle() {
            return new ThemeStyle(3, C7996R.string.theme_style_vip);
        }

        public Companion() {
        }
    }

    public ThemeStyle(int i, int i2) {
        this.style = i;
        this.styleNameRes = i2;
    }

    public static /* synthetic */ ThemeStyle copy$default(ThemeStyle themeStyle, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = themeStyle.style;
        }
        if ((i3 & 2) != 0) {
            i2 = themeStyle.styleNameRes;
        }
        return themeStyle.copy(i, i2);
    }

    /* renamed from: component1, reason: from getter */
    public final int getStyle() {
        return this.style;
    }

    /* renamed from: component2, reason: from getter */
    public final int getStyleNameRes() {
        return this.styleNameRes;
    }

    @NotNull
    public final ThemeStyle copy(int style, int styleNameRes) {
        return new ThemeStyle(style, styleNameRes);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ThemeStyle)) {
            return false;
        }
        ThemeStyle themeStyle = (ThemeStyle) other;
        return this.style == themeStyle.style && this.styleNameRes == themeStyle.styleNameRes;
    }

    public final int getStyle() {
        return this.style;
    }

    public final int getStyleNameRes() {
        return this.styleNameRes;
    }

    public int hashCode() {
        return (Integer.hashCode(this.style) * 31) + Integer.hashCode(this.styleNameRes);
    }

    public final boolean isVipStyle() {
        return this.style == 3;
    }

    public final void setStyle(int i) {
        this.style = i;
    }

    public final void setStyleNameRes(int i) {
        this.styleNameRes = i;
    }

    @NotNull
    public String toString() {
        return "ThemeStyle(style=" + this.style + ", styleNameRes=" + this.styleNameRes + ')';
    }
}
