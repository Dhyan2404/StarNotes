package com.onyx.android.sdk.textbox.data;

import android.content.Context;
import com.onyx.android.sdk.base.utils.DimenUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b#\u0010$J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\"\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\"\u0010\u0012\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\t\u001a\u0004\b\u0010\u0010\u000b\"\u0004\b\u0011\u0010\rR\"\u0010\u0016\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\t\u001a\u0004\b\u0014\u0010\u000b\"\u0004\b\u0015\u0010\rR\"\u0010\u001a\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\t\u001a\u0004\b\u0018\u0010\u000b\"\u0004\b\u0019\u0010\rR\"\u0010\"\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!¨\u0006%"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;", "", "Landroid/content/Context;", "context", "", "getContentWidth", "getContentHeight", "", "a", "F", "getWidth", "()F", "setWidth", "(F)V", "width", "b", "getHeight", "setHeight", "height", "c", "getMiniWidth", "setMiniWidth", "miniWidth", "d", "getMiniHeight", "setMiniHeight", "miniHeight", "", "e", Constants.HASIDCALL_INDEX_SIG, "getScale", Constants.BOOLEAN_VALUE_SIG, "setScale", "(Z)V", "scale", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class EditorLayoutInfo {

    /* renamed from: a, reason: from kotlin metadata */
    public float width;

    /* renamed from: b, reason: from kotlin metadata */
    public float height;

    /* renamed from: c, reason: from kotlin metadata */
    public float miniWidth;

    /* renamed from: d, reason: from kotlin metadata */
    public float miniHeight;

    /* renamed from: e, reason: from kotlin metadata */
    public boolean scale;

    public final int getContentHeight(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return DimenUtils.INSTANCE.dip2px(context, this.height);
    }

    public final int getContentWidth(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return DimenUtils.INSTANCE.dip2px(context, this.width);
    }

    public final float getHeight() {
        return this.height;
    }

    public final float getMiniHeight() {
        return this.miniHeight;
    }

    public final float getMiniWidth() {
        return this.miniWidth;
    }

    public final boolean getScale() {
        return this.scale;
    }

    public final float getWidth() {
        return this.width;
    }

    public final void setHeight(float f) {
        this.height = f;
    }

    public final void setMiniHeight(float f) {
        this.miniHeight = f;
    }

    public final void setMiniWidth(float f) {
        this.miniWidth = f;
    }

    public final void setScale(boolean z) {
        this.scale = z;
    }

    public final void setWidth(float f) {
        this.width = f;
    }
}
