package com.onyx.android.sdk.textbox.data;

import android.graphics.RectF;
import com.miui.penengine.p015e.C6997f;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0013\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001f\u0010 R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\bR\"\u0010\u0011\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\"\u0010\u0016\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0010\u001a\u0004\b\u0016\u0010\u0012\"\u0004\b\u0017\u0010\u0014R\"\u0010\u0019\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0010\u001a\u0004\b\u0019\u0010\u0012\"\u0004\b\u001a\u0010\u0014R\"\u0010\u001e\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u0010\u001a\u0004\b\u001c\u0010\u0012\"\u0004\b\u001d\u0010\u0014¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;", "", "Landroid/graphics/RectF;", "a", "Landroid/graphics/RectF;", "getTouchLimitRect", "()Landroid/graphics/RectF;", "setTouchLimitRect", "(Landroid/graphics/RectF;)V", "touchLimitRect", "b", "getLimitRect", "setLimitRect", "limitRect", "", "c", Constants.HASIDCALL_INDEX_SIG, "isRtl", Constants.BOOLEAN_VALUE_SIG, "setRtl", "(Z)V", "d", "isVertical", "setVertical", "e", "isLimitTranslateRect", "setLimitTranslateRect", C6997f.f39671c, "getEnableHandleTouchEvent", "setEnableHandleTouchEvent", "enableHandleTouchEvent", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class TextBoxProperties {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public RectF touchLimitRect;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public RectF limitRect;

    /* renamed from: d, reason: from kotlin metadata */
    public boolean isVertical;

    /* renamed from: e, reason: from kotlin metadata */
    public boolean isLimitTranslateRect;

    /* renamed from: c, reason: from kotlin metadata */
    public boolean isRtl = true;

    /* renamed from: f, reason: from kotlin metadata */
    public boolean enableHandleTouchEvent = true;

    public final boolean getEnableHandleTouchEvent() {
        return this.enableHandleTouchEvent;
    }

    @Nullable
    public final RectF getLimitRect() {
        return this.limitRect;
    }

    @Nullable
    public final RectF getTouchLimitRect() {
        return this.touchLimitRect;
    }

    /* renamed from: isLimitTranslateRect, reason: from getter */
    public final boolean getIsLimitTranslateRect() {
        return this.isLimitTranslateRect;
    }

    /* renamed from: isRtl, reason: from getter */
    public final boolean getIsRtl() {
        return this.isRtl;
    }

    /* renamed from: isVertical, reason: from getter */
    public final boolean getIsVertical() {
        return this.isVertical;
    }

    public final void setEnableHandleTouchEvent(boolean z) {
        this.enableHandleTouchEvent = z;
    }

    public final void setLimitRect(@Nullable RectF rectF) {
        this.limitRect = rectF;
    }

    public final void setLimitTranslateRect(boolean z) {
        this.isLimitTranslateRect = z;
    }

    public final void setRtl(boolean z) {
        this.isRtl = z;
    }

    public final void setTouchLimitRect(@Nullable RectF rectF) {
        this.touchLimitRect = rectF;
    }

    public final void setVertical(boolean z) {
        this.isVertical = z;
    }
}
