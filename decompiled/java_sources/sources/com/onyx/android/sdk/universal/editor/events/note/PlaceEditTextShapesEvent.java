package com.onyx.android.sdk.universal.editor.events.note;

import com.onyx.android.sdk.note.common.shape.Shape;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001d\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u000e\u001a\u00020\t¢\u0006\u0004\b\u000f\u0010\u0010R\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u0017\u0010\u000e\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/PlaceEditTextShapesEvent;", "", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "a", "Ljava/util/List;", "getShapes", "()Ljava/util/List;", "shapes", "", "b", Constants.HASIDCALL_INDEX_SIG, "getToTop", Constants.BOOLEAN_VALUE_SIG, "toTop", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PlaceEditTextShapesEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapes;

    /* renamed from: b, reason: from kotlin metadata */
    public final boolean toTop;

    /* JADX WARN: Multi-variable type inference failed */
    public PlaceEditTextShapesEvent(@NotNull List<? extends Shape> shapes, boolean z) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        this.shapes = shapes;
        this.toTop = z;
    }

    @NotNull
    public final List<Shape> getShapes() {
        return this.shapes;
    }

    public final boolean getToTop() {
        return this.toTop;
    }
}
