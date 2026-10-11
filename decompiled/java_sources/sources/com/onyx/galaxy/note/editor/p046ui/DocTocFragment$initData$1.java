package com.onyx.galaxy.note.editor.p046ui;

import com.onyx.android.sdk.base.data.Tree;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualTocModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public /* synthetic */ class DocTocFragment$initData$1 extends FunctionReferenceImpl implements Function1<Tree<VirtualTocModel>, Unit> {
    public DocTocFragment$initData$1(Object obj) {
        super(1, obj, DocTocFragment.class, "onTocDataLoaded", "onTocDataLoaded(Lcom/onyx/android/sdk/base/data/Tree;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Tree<VirtualTocModel> tree) {
        invoke2(tree);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull Tree<VirtualTocModel> p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        ((DocTocFragment) this.receiver).m46734m1(p0);
    }
}
