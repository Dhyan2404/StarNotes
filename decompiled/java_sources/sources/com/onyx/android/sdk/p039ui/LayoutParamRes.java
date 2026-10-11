package com.onyx.android.sdk.p039ui;

import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import com.miui.penengine.p015e.C6997f;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u001e\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001e\u0010\u001fR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\bR\"\u0010\u0011\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0006\"\u0004\b\u0010\u0010\bR\"\u0010\u0015\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\"\u0010\u0019\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0004\u001a\u0004\b\u0017\u0010\u0006\"\u0004\b\u0018\u0010\bR\"\u0010\u001d\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u0004\u001a\u0004\b\u001b\u0010\u0006\"\u0004\b\u001c\u0010\b¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/ui/LayoutParamRes;", "", "", "a", "I", "getPopupWidthRes", "()I", "setPopupWidthRes", "(I)V", "popupWidthRes", "b", "getPopupHeightRes", "setPopupHeightRes", "popupHeightRes", "c", "getPopupBackgroundRes", "setPopupBackgroundRes", "popupBackgroundRes", "d", "getItemWidthRes", "setItemWidthRes", "itemWidthRes", "e", "getItemHeightRes", "setItemHeightRes", "itemHeightRes", C6997f.f39671c, "getItemTextSizeRes", "setItemTextSizeRes", "itemTextSizeRes", Constants.CONSTRUCTOR_NAME, "()V", "sdk-uicommon_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LayoutParamRes {

    /* renamed from: a, reason: from kotlin metadata */
    @DimenRes
    public int popupWidthRes;

    /* renamed from: b, reason: from kotlin metadata */
    @DimenRes
    public int popupHeightRes;

    /* renamed from: c, reason: from kotlin metadata */
    @DrawableRes
    public int popupBackgroundRes;

    /* renamed from: d, reason: from kotlin metadata */
    @DimenRes
    public int itemWidthRes;

    /* renamed from: e, reason: from kotlin metadata */
    @DimenRes
    public int itemHeightRes;

    /* renamed from: f, reason: from kotlin metadata */
    @DimenRes
    public int itemTextSizeRes;

    public final int getItemHeightRes() {
        return this.itemHeightRes;
    }

    public final int getItemTextSizeRes() {
        return this.itemTextSizeRes;
    }

    public final int getItemWidthRes() {
        return this.itemWidthRes;
    }

    public final int getPopupBackgroundRes() {
        return this.popupBackgroundRes;
    }

    public final int getPopupHeightRes() {
        return this.popupHeightRes;
    }

    public final int getPopupWidthRes() {
        return this.popupWidthRes;
    }

    public final void setItemHeightRes(int i) {
        this.itemHeightRes = i;
    }

    public final void setItemTextSizeRes(int i) {
        this.itemTextSizeRes = i;
    }

    public final void setItemWidthRes(int i) {
        this.itemWidthRes = i;
    }

    public final void setPopupBackgroundRes(int i) {
        this.popupBackgroundRes = i;
    }

    public final void setPopupHeightRes(int i) {
        this.popupHeightRes = i;
    }

    public final void setPopupWidthRes(int i) {
        this.popupWidthRes = i;
    }
}
