package com.onyx.galaxy.note.editor.view.popup;

import android.view.DragEvent;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AdaptedFunctionReference;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public /* synthetic */ class UniversalShapePopup$initSecondaryAdapter$2$1 extends AdaptedFunctionReference implements Function1<DragEvent, Unit> {
    public UniversalShapePopup$initSecondaryAdapter$2$1(Object obj) {
        super(1, obj, UniversalShapePopup.class, "handleDragAndDropEvent", "handleDragAndDropEvent(Landroid/view/DragEvent;)Z", 8);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(DragEvent dragEvent) {
        invoke2(dragEvent);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull DragEvent p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        ((UniversalShapePopup) this.receiver).m49768E(p0);
    }
}
