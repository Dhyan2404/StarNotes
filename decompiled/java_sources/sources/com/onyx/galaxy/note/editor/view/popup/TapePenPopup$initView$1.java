package com.onyx.galaxy.note.editor.view.popup;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public /* synthetic */ class TapePenPopup$initView$1 extends FunctionReferenceImpl implements Function1<Integer, Unit> {
    public TapePenPopup$initView$1(Object obj) {
        super(1, obj, TapePenPopup.class, "updateTapeViewColor", "updateTapeViewColor(I)V", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
        invoke(num.intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(int i) {
        ((TapePenPopup) this.receiver).m49645b0(i);
    }
}
