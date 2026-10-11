package com.onyx.android.sdk.theme.utils;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0013\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\u001f\u0010 J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0005HÆ\u0003J'\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001J\t\u0010\u000b\u001a\u00020\u0005HÖ\u0001J\t\u0010\f\u001a\u00020\u0002HÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u0007\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\"\u0010\b\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0011\u001a\u0004\b\u0017\u0010\u0013\"\u0004\b\u0018\u0010\u0015R\"\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/theme/utils/ThemeBean;", "", "", "component1", "component2", "", "component3", "originResId", "targetResId", "resName", "copy", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "I", "getOriginResId", "()I", "setOriginResId", "(I)V", "b", "getTargetResId", "setTargetResId", "c", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getResName", "()Ljava/lang/String;", "setResName", "(Ljava/lang/String;)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(IILjava/lang/String;)V", "sdk-skinChange_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class ThemeBean {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    public int originResId;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public int targetResId;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @NotNull
    public String resName;

    public ThemeBean(int i, int i2, @NotNull String resName) {
        Intrinsics.checkNotNullParameter(resName, "resName");
        this.originResId = i;
        this.targetResId = i2;
        this.resName = resName;
    }

    public static /* synthetic */ ThemeBean copy$default(ThemeBean themeBean, int i, int i2, String str, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = themeBean.originResId;
        }
        if ((i3 & 2) != 0) {
            i2 = themeBean.targetResId;
        }
        if ((i3 & 4) != 0) {
            str = themeBean.resName;
        }
        return themeBean.copy(i, i2, str);
    }

    /* renamed from: component1, reason: from getter */
    public final int getOriginResId() {
        return this.originResId;
    }

    /* renamed from: component2, reason: from getter */
    public final int getTargetResId() {
        return this.targetResId;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final String getResName() {
        return this.resName;
    }

    @NotNull
    public final ThemeBean copy(int originResId, int targetResId, @NotNull String resName) {
        Intrinsics.checkNotNullParameter(resName, "resName");
        return new ThemeBean(originResId, targetResId, resName);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ThemeBean)) {
            return false;
        }
        ThemeBean themeBean = (ThemeBean) other;
        return this.originResId == themeBean.originResId && this.targetResId == themeBean.targetResId && Intrinsics.areEqual(this.resName, themeBean.resName);
    }

    public final int getOriginResId() {
        return this.originResId;
    }

    @NotNull
    public final String getResName() {
        return this.resName;
    }

    public final int getTargetResId() {
        return this.targetResId;
    }

    public int hashCode() {
        return (((Integer.hashCode(this.originResId) * 31) + Integer.hashCode(this.targetResId)) * 31) + this.resName.hashCode();
    }

    public final void setOriginResId(int i) {
        this.originResId = i;
    }

    public final void setResName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.resName = str;
    }

    public final void setTargetResId(int i) {
        this.targetResId = i;
    }

    @NotNull
    public String toString() {
        return "ThemeBean(originResId=" + this.originResId + ", targetResId=" + this.targetResId + ", resName=" + this.resName + ')';
    }
}
