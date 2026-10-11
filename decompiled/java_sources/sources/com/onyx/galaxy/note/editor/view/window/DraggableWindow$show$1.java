package com.onyx.galaxy.note.editor.view.window;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public /* synthetic */ class DraggableWindow$show$1 extends FunctionReferenceImpl implements Function0<Unit> {
    public DraggableWindow$show$1(Object obj) {
        super(0, obj, IMovingDelegate.class, "onWindowLocationChanged", "onWindowLocationChanged()V", 0);
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        ((IMovingDelegate) this.receiver).onWindowLocationChanged();
    }
}
