package com.onyx.galaxy.note.editor.p046ui;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public /* synthetic */ class DocBookmarkFragment$initData$2 extends FunctionReferenceImpl implements Function1<Integer, Unit> {
    public DocBookmarkFragment$initData$2(Object obj) {
        super(1, obj, DocBookmarkFragment.class, "updateSearchMatching", "updateSearchMatching(I)V", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
        invoke(num.intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(int i) {
        ((DocBookmarkFragment) this.receiver).m46498K0(i);
    }
}
