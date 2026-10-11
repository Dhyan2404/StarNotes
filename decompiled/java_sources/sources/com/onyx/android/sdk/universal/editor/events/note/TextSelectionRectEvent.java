package com.onyx.android.sdk.universal.editor.events.note;

import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\f\u0010\rR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b\t\u0010\n¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionRectEvent;", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "a", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getShape", "()Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;", "getTextStyle", "()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;", "textStyle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class TextSelectionRectEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Shape shape;

    public TextSelectionRectEvent(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        this.shape = shape;
    }

    @NotNull
    public final Shape getShape() {
        return this.shape;
    }

    @Nullable
    public final ShapeTextStyle getTextStyle() {
        return this.shape.getTextStyle();
    }
}
