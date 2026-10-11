package com.onyx.galaxy.note.editor.p046ui;

import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualBookmarkModel;
import com.onyx.galaxy.note.common.extension.BaseQuickAdapterKt;
import com.onyx.galaxy.note.editor.view.adapter.DocBookmarkListAdapter;
import com.onyx.galaxy.note.editor.viewmodel.DocBookmarkViewModel;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Action;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0006"}, m61528d2 = {"<anonymous>", "", OcrValues.LANG_ITALIAN, "", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;", "kotlin.jvm.PlatformType", "invoke"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class DocBookmarkFragment$initData$1 extends Lambda implements Function1<List<? extends VirtualBookmarkModel>, Unit> {
    final /* synthetic */ DocBookmarkFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DocBookmarkFragment$initData$1(DocBookmarkFragment docBookmarkFragment) {
        super(1);
        this.this$0 = docBookmarkFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(DocBookmarkFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m46496I0();
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(List<? extends VirtualBookmarkModel> list) {
        invoke2((List<VirtualBookmarkModel>) list);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(List<VirtualBookmarkModel> list) {
        DocBookmarkViewModel m46506u0;
        DocBookmarkListAdapter docBookmarkListAdapter = this.this$0.adapter;
        DocBookmarkListAdapter docBookmarkListAdapter2 = null;
        if (docBookmarkListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docBookmarkListAdapter = null;
        }
        m46506u0 = this.this$0.m46506u0();
        docBookmarkListAdapter.setKeyword(m46506u0.m72422getSearchKey());
        DocBookmarkListAdapter docBookmarkListAdapter3 = this.this$0.adapter;
        if (docBookmarkListAdapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        } else {
            docBookmarkListAdapter2 = docBookmarkListAdapter3;
        }
        Intrinsics.checkNotNull(list);
        Observable createSubmitListObservable = BaseQuickAdapterKt.createSubmitListObservable(docBookmarkListAdapter2, list);
        final DocBookmarkFragment docBookmarkFragment = this.this$0;
        createSubmitListObservable.doFinally(new Action() { // from class: com.onyx.galaxy.note.editor.ui.a
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                DocBookmarkFragment$initData$1.invoke$lambda$0(DocBookmarkFragment.this);
            }
        }).subscribe();
    }
}
