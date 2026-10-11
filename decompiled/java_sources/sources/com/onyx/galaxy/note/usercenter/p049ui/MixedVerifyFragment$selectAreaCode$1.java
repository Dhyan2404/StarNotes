package com.onyx.galaxy.note.usercenter.p049ui;

import com.onyx.galaxy.note.account.model.AreaCodeModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public /* synthetic */ class MixedVerifyFragment$selectAreaCode$1 extends FunctionReferenceImpl implements Function1<AreaCodeModel, Unit> {
    public MixedVerifyFragment$selectAreaCode$1(Object obj) {
        super(1, obj, MixedVerifyFragment.class, "onAreaCodeSelected", "onAreaCodeSelected(Lcom/onyx/galaxy/note/account/model/AreaCodeModel;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(AreaCodeModel areaCodeModel) {
        invoke2(areaCodeModel);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull AreaCodeModel p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        ((MixedVerifyFragment) this.receiver).m51756I0(p0);
    }
}
