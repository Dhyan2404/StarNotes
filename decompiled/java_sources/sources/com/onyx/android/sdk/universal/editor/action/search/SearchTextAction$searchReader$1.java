package com.onyx.android.sdk.universal.editor.action.search;

import com.onyx.android.sdk.universal.editor.bean.NoteSearchBean;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public /* synthetic */ class SearchTextAction$searchReader$1 extends FunctionReferenceImpl implements Function1<Pair<? extends List<? extends VirtualPage>, ? extends List<? extends NoteSearchBean>>, Unit> {
    public SearchTextAction$searchReader$1(Object obj) {
        super(1, obj, SearchTextAction.class, "onNextResult", "onNextResult(Lkotlin/Pair;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Pair<? extends List<? extends VirtualPage>, ? extends List<? extends NoteSearchBean>> pair) {
        invoke2((Pair<? extends List<VirtualPage>, ? extends List<NoteSearchBean>>) pair);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull Pair<? extends List<VirtualPage>, ? extends List<NoteSearchBean>> p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        ((SearchTextAction) this.receiver).m39820y(p0);
    }
}
