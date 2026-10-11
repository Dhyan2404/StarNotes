package com.onyx.android.sdk.reader.common;

import android.graphics.RectF;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\t¢\u0006\u0004\b\u000f\u0010\u0010J\u0006\u0010\u0002\u001a\u00020\u0000R\u0017\u0010\b\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u0017\u0010\u000e\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;", "", "copy", "", "a", Constants.STRING_SIG, "getText", "()Ljava/lang/String;", "text", "Landroid/graphics/RectF;", "b", "Landroid/graphics/RectF;", "getRect", "()Landroid/graphics/RectF;", "rect", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Landroid/graphics/RectF;)V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ReaderCharInfo {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final String text;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final RectF rect;

    public ReaderCharInfo(@NotNull String text, @NotNull RectF rect) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(rect, "rect");
        this.text = text;
        this.rect = rect;
    }

    @NotNull
    public final ReaderCharInfo copy() {
        return new ReaderCharInfo(this.text, RectFKt.copy(this.rect));
    }

    @NotNull
    public final RectF getRect() {
        return this.rect;
    }

    @NotNull
    public final String getText() {
        return this.text;
    }
}
