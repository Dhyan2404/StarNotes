package com.onyx.android.sdk.universal.editor.events.note;

import com.onyx.android.sdk.note.common.data.selection.SelectionRect;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\u0018\u00002\u00020\u0001B'\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u000e\u001a\u00020\t\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u000f¢\u0006\u0004\b\u0015\u0010\u0016R\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u0017\u0010\u000e\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u0017\u0010\u0014\u001a\u00020\u000f8\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/TransformChangedEvent;", "", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "a", "Ljava/util/List;", "getTransformShapes", "()Ljava/util/List;", "transformShapes", "Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;", "b", "Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;", "getSelectionRect", "()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;", "selectionRect", "", "c", Constants.HASIDCALL_INDEX_SIG, "getTransforming", Constants.BOOLEAN_VALUE_SIG, "transforming", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class TransformChangedEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> transformShapes;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final SelectionRect selectionRect;

    /* renamed from: c, reason: from kotlin metadata */
    public final boolean transforming;

    /* JADX WARN: Multi-variable type inference failed */
    public TransformChangedEvent(@NotNull List<? extends Shape> transformShapes, @NotNull SelectionRect selectionRect, boolean z) {
        Intrinsics.checkNotNullParameter(transformShapes, "transformShapes");
        Intrinsics.checkNotNullParameter(selectionRect, "selectionRect");
        this.transformShapes = transformShapes;
        this.selectionRect = selectionRect;
        this.transforming = z;
    }

    @NotNull
    public final SelectionRect getSelectionRect() {
        return this.selectionRect;
    }

    @NotNull
    public final List<Shape> getTransformShapes() {
        return this.transformShapes;
    }

    public final boolean getTransforming() {
        return this.transforming;
    }

    public /* synthetic */ TransformChangedEvent(List list, SelectionRect selectionRect, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, selectionRect, (i & 4) != 0 ? true : z);
    }
}
