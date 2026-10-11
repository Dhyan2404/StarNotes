package com.onyx.galaxy.note.editor.view.dialog;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public /* synthetic */ class DialogConvertToText$initViewModel$2 extends FunctionReferenceImpl implements Function1<Object, Unit> {
    public DialogConvertToText$initViewModel$2(Object obj) {
        super(1, obj, DialogConvertToText.class, "handleEvent", "handleEvent(Ljava/lang/Object;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Object obj) {
        invoke2(obj);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull Object p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        ((DialogConvertToText) this.receiver).m47917C0(p0);
    }
}
