package com.onyx.android.sdk.note.common.data.line;

import android.graphics.Rect;
import android.widget.EditText;
import com.alibaba.fastjson2.annotation.JSONCreator;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u00002\u00020\u0001B\t\b\u0017¢\u0006\u0004\b$\u0010%B!\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0002¢\u0006\u0004\b$\u0010&J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0007\u001a\u00020\u0002J\u000e\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0002J\u0006\u0010\n\u001a\u00020\u0002J\u000e\u0010\f\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0002J \u0010\r\u001a\u0004\u0018\u00010\u00002\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0002J\u000e\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0002J\u000e\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0002J\u0006\u0010\u0011\u001a\u00020\u0002J\u0010\u0010\u0014\u001a\u00020\u00052\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012J\u000e\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0002J\u0018\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u00172\b\b\u0002\u0010\u0019\u001a\u00020\u0002R\u0016\u0010\b\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010\u0004\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001cR\u0016\u0010\u000b\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001cR\u0016\u0010 \u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010\u001cR\u0016\u0010\u0015\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\u001cR\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#¨\u0006'"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/line/LineLayoutArgs;", "", "", "getBaseLine", "baseLine", "", "setBaseLine", "getLineCount", "lineCount", "setLineCount", "getLineHeight", "lineHeight", "setLineHeight", BaiduYunConstant.CREATE, "line", "getLineBottom", "getLineTop", "getSpanTextFontHeight", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "cursorShape", "setCursorShape", "backgroundType", "setBackgroundType", "Landroid/widget/EditText;", "spanTextView", "spanMargin", "updateLineLayoutArgs", "a", "I", "b", "c", "d", "spanTextFontHeight", "e", C6997f.f39671c, "Lcom/onyx/android/sdk/note/common/shape/Shape;", Constants.CONSTRUCTOR_NAME, "()V", "(III)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LineLayoutArgs {

    /* renamed from: a, reason: from kotlin metadata */
    public int lineCount;

    /* renamed from: b, reason: from kotlin metadata */
    public int baseLine;

    /* renamed from: c, reason: from kotlin metadata */
    public int lineHeight;

    /* renamed from: d, reason: from kotlin metadata */
    public int spanTextFontHeight;

    /* renamed from: e, reason: from kotlin metadata */
    public int backgroundType;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public Shape cursorShape;

    @JSONCreator
    public LineLayoutArgs() {
    }

    public static /* synthetic */ void updateLineLayoutArgs$default(LineLayoutArgs lineLayoutArgs, EditText editText, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 5;
        }
        lineLayoutArgs.updateLineLayoutArgs(editText, i);
    }

    @Nullable
    public final LineLayoutArgs create(int baseLine, int lineCount, int lineHeight) {
        return new LineLayoutArgs(baseLine, lineCount, lineHeight);
    }

    public final int getBaseLine() {
        return this.baseLine;
    }

    public final int getLineBottom(int line) {
        int i = this.baseLine;
        for (int i2 = 0; i2 < line; i2++) {
            i += this.lineHeight;
        }
        return i;
    }

    public final int getLineCount() {
        return this.lineCount;
    }

    public final int getLineHeight() {
        return this.lineHeight;
    }

    public final int getLineTop(int line) {
        if (line == 0) {
            return 0;
        }
        return getLineBottom(line - 1);
    }

    public final int getSpanTextFontHeight() {
        return this.spanTextFontHeight;
    }

    public final void setBackgroundType(int backgroundType) {
        this.backgroundType = backgroundType;
    }

    public final void setBaseLine(int baseLine) {
        this.baseLine = baseLine;
    }

    public final void setCursorShape(@Nullable Shape cursorShape) {
        this.cursorShape = cursorShape;
    }

    public final void setLineCount(int lineCount) {
        this.lineCount = lineCount;
    }

    public final void setLineHeight(int lineHeight) {
        this.lineHeight = lineHeight;
    }

    public final void updateLineLayoutArgs(@NotNull EditText spanTextView, int spanMargin) {
        Intrinsics.checkNotNullParameter(spanTextView, "spanTextView");
        int height = spanTextView.getHeight();
        this.lineHeight = spanTextView.getLineHeight();
        int lineCount = spanTextView.getLineCount();
        int i = height / this.lineHeight;
        if (lineCount <= i) {
            lineCount = i;
        }
        Rect rect = new Rect();
        spanTextView.getLineBounds(0, rect);
        this.baseLine = rect.bottom;
        this.lineCount = lineCount;
        this.spanTextFontHeight = ViewKt.calculateFontHeight(spanTextView, spanMargin);
    }

    public LineLayoutArgs(int i, int i2, int i3) {
        this.baseLine = i;
        this.lineCount = i2;
        this.lineHeight = i3;
    }
}
