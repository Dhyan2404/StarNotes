package com.onyx.galaxy.note.usercenter.p049ui;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public /* synthetic */ class MessageCenterFragment$addViewEvents$3 extends FunctionReferenceImpl implements Function0<Unit> {
    public MessageCenterFragment$addViewEvents$3(Object obj) {
        super(0, obj, MessageCenterFragment.class, "onBackPressed", "onBackPressed()V", 0);
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        ((MessageCenterFragment) this.receiver).m51727u0();
    }
}
