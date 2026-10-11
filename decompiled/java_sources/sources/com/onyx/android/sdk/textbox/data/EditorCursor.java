package com.onyx.android.sdk.textbox.data;

import android.content.Context;
import android.graphics.RectF;
import com.onyx.android.sdk.note.common.utils.TextRenderUtil;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000e\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u0012\u0006\u0010\f\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\u0006\u0012\u0006\u0010\u000e\u001a\u00020\u0006¢\u0006\u0004\b!\u0010\"J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J\t\u0010\b\u001a\u00020\u0006HÆ\u0003J\t\u0010\t\u001a\u00020\u0006HÆ\u0003J\t\u0010\n\u001a\u00020\u0006HÆ\u0003J1\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u000b\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\u00062\b\b\u0002\u0010\r\u001a\u00020\u00062\b\b\u0002\u0010\u000e\u001a\u00020\u0006HÆ\u0001J\t\u0010\u0011\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0012HÖ\u0001J\u0013\u0010\u0016\u001a\u00020\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u000b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0017\u0010\f\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u0018\u001a\u0004\b\u001c\u0010\u001aR\u0017\u0010\r\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u0018\u001a\u0004\b\u001e\u0010\u001aR\u0017\u0010\u000e\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u001f\u0010\u0018\u001a\u0004\b \u0010\u001a¨\u0006#"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/data/EditorCursor;", "", "Landroid/content/Context;", "context", "Landroid/graphics/RectF;", "getBoundingRect", "", "component1", "component2", "component3", "component4", "x", "y", "width", "height", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "F", "getX", "()F", "b", "getY", "c", "getWidth", "d", "getHeight", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(FFFF)V", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class EditorCursor {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    public final float x;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public final float y;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    public final float width;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    public final float height;

    public EditorCursor(float f, float f2, float f3, float f4) {
        this.x = f;
        this.y = f2;
        this.width = f3;
        this.height = f4;
    }

    public static /* synthetic */ EditorCursor copy$default(EditorCursor editorCursor, float f, float f2, float f3, float f4, int i, Object obj) {
        if ((i & 1) != 0) {
            f = editorCursor.x;
        }
        if ((i & 2) != 0) {
            f2 = editorCursor.y;
        }
        if ((i & 4) != 0) {
            f3 = editorCursor.width;
        }
        if ((i & 8) != 0) {
            f4 = editorCursor.height;
        }
        return editorCursor.copy(f, f2, f3, f4);
    }

    /* renamed from: component1, reason: from getter */
    public final float getX() {
        return this.x;
    }

    /* renamed from: component2, reason: from getter */
    public final float getY() {
        return this.y;
    }

    /* renamed from: component3, reason: from getter */
    public final float getWidth() {
        return this.width;
    }

    /* renamed from: component4, reason: from getter */
    public final float getHeight() {
        return this.height;
    }

    @NotNull
    public final EditorCursor copy(float x, float y, float width, float height) {
        return new EditorCursor(x, y, width, height);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof EditorCursor)) {
            return false;
        }
        EditorCursor editorCursor = (EditorCursor) other;
        return Float.compare(this.x, editorCursor.x) == 0 && Float.compare(this.y, editorCursor.y) == 0 && Float.compare(this.width, editorCursor.width) == 0 && Float.compare(this.height, editorCursor.height) == 0;
    }

    @NotNull
    public final RectF getBoundingRect(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        TextRenderUtil textRenderUtil = TextRenderUtil.INSTANCE;
        float revertRenderSize = textRenderUtil.revertRenderSize(context, this.x);
        float revertRenderSize2 = textRenderUtil.revertRenderSize(context, this.y);
        return new RectF(revertRenderSize, revertRenderSize2, textRenderUtil.revertRenderSize(context, this.width) + revertRenderSize, textRenderUtil.revertRenderSize(context, this.height) + revertRenderSize2);
    }

    public final float getHeight() {
        return this.height;
    }

    public final float getWidth() {
        return this.width;
    }

    public final float getX() {
        return this.x;
    }

    public final float getY() {
        return this.y;
    }

    public int hashCode() {
        return (((((Float.hashCode(this.x) * 31) + Float.hashCode(this.y)) * 31) + Float.hashCode(this.width)) * 31) + Float.hashCode(this.height);
    }

    @NotNull
    public String toString() {
        return "EditorCursor(x=" + this.x + ", y=" + this.y + ", width=" + this.width + ", height=" + this.height + ')';
    }
}
