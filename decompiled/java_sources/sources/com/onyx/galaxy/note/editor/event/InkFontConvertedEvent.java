package com.onyx.galaxy.note.editor.event;

import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.replicator.note.p035db.model.FontModel;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001d\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/event/InkFontConvertedEvent;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;", "a", "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;", "getModel", "()Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;", "model", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "b", "Ljava/util/List;", "getShapes", "()Ljava/util/List;", "shapes", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class InkFontConvertedEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final FontModel model;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapes;

    /* JADX WARN: Multi-variable type inference failed */
    public InkFontConvertedEvent(@NotNull FontModel model, @NotNull List<? extends Shape> shapes) {
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        this.model = model;
        this.shapes = shapes;
    }

    @NotNull
    public final FontModel getModel() {
        return this.model;
    }

    @NotNull
    public final List<Shape> getShapes() {
        return this.shapes;
    }
}
