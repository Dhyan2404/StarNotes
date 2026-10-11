package com.onyx.android.sdk.universal.editor.action.hwr;

import com.onyx.android.sdk.hwr.data.bean.HWRPointerEvent;
import com.onyx.android.sdk.neohwr.segmenter.InputShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0004\b\u0011\u0010\u0012R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001d\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputShape;", "Lcom/onyx/android/sdk/neohwr/segmenter/InputShape;", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "a", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getSourceShape", "()Lcom/onyx/android/sdk/note/common/shape/Shape;", "setSourceShape", "(Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "sourceShape", "", "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;", "b", "Ljava/util/List;", "getEvents", "()Ljava/util/List;", "events", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/common/shape/Shape;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class HWRInputShape extends InputShape {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public Shape sourceShape;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final List<HWRPointerEvent> events;

    public HWRInputShape(@NotNull Shape sourceShape, @NotNull List<HWRPointerEvent> events) {
        Intrinsics.checkNotNullParameter(sourceShape, "sourceShape");
        Intrinsics.checkNotNullParameter(events, "events");
        this.sourceShape = sourceShape;
        this.events = events;
    }

    @NotNull
    public final List<HWRPointerEvent> getEvents() {
        return this.events;
    }

    @NotNull
    public final Shape getSourceShape() {
        return this.sourceShape;
    }

    public final void setSourceShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<set-?>");
        this.sourceShape = shape;
    }
}
