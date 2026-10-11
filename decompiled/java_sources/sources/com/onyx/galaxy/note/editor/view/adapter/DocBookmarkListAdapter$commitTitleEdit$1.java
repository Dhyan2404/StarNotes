package com.onyx.galaxy.note.editor.view.adapter;

import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m61528d2 = {"<anonymous>", "", OcrValues.LANG_ITALIAN, "Landroidx/recyclerview/widget/RecyclerView;", "invoke"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class DocBookmarkListAdapter$commitTitleEdit$1 extends Lambda implements Function1<RecyclerView, Unit> {
    final /* synthetic */ DocBookmarkListAdapter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DocBookmarkListAdapter$commitTitleEdit$1(DocBookmarkListAdapter docBookmarkListAdapter) {
        super(1);
        this.this$0 = docBookmarkListAdapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(DocBookmarkListAdapter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.notifyDataSetChanged();
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(RecyclerView recyclerView) {
        invoke2(recyclerView);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull RecyclerView it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        final DocBookmarkListAdapter docBookmarkListAdapter = this.this$0;
        it2.post(new Runnable() { // from class: com.onyx.galaxy.note.editor.view.adapter.a
            @Override // java.lang.Runnable
            public final void run() {
                DocBookmarkListAdapter$commitTitleEdit$1.invoke$lambda$0(DocBookmarkListAdapter.this);
            }
        });
    }
}
