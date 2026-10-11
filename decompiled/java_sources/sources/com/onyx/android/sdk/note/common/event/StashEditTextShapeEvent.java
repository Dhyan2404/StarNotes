package com.onyx.android.sdk.note.common.event;

import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\b¢\u0006\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/event/StashEditTextShapeEvent;", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "a", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "b", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getTextShape", "()Lcom/onyx/android/sdk/note/common/shape/Shape;", "textShape", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class StashEditTextShapeEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final BoxInfo virtualBoxInfo;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Shape textShape;

    public StashEditTextShapeEvent(@NotNull BoxInfo virtualBoxInfo, @NotNull Shape textShape) {
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        Intrinsics.checkNotNullParameter(textShape, "textShape");
        this.virtualBoxInfo = virtualBoxInfo;
        this.textShape = textShape;
    }

    @NotNull
    public final Shape getTextShape() {
        return this.textShape;
    }

    @NotNull
    public final BoxInfo getVirtualBoxInfo() {
        return this.virtualBoxInfo;
    }
}
