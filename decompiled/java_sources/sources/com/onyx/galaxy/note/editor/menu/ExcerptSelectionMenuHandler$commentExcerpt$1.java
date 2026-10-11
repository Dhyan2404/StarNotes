package com.onyx.galaxy.note.editor.menu;

import com.onyx.android.sdk.note.common.shape.Shape;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public /* synthetic */ class ExcerptSelectionMenuHandler$commentExcerpt$1 extends FunctionReferenceImpl implements Function1<Shape, Unit> {
    public ExcerptSelectionMenuHandler$commentExcerpt$1(Object obj) {
        super(1, obj, ExcerptSelectionMenuHandler.class, "openComment", "openComment(Lcom/onyx/android/sdk/note/common/shape/Shape;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Shape shape) {
        invoke2(shape);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull Shape p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        ((ExcerptSelectionMenuHandler) this.receiver).m46367c(p0);
    }
}
