package com.onyx.galaxy.note.category.p044ui;

import android.view.View;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.galaxy.note.category.view.CommonEmptyView;
import com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter;
import com.onyx.galaxy.note.databinding.FragmentSearchNoteBinding;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, m61528d2 = {"<anonymous>", "", "executing", "", "kotlin.jvm.PlatformType", "invoke", "(Ljava/lang/Boolean;)V"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nSearchNoteFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchNoteFragment.kt\ncom/onyx/galaxy/note/category/ui/SearchNoteFragment$initViewModel$3\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,576:1\n256#2,2:577\n256#2,2:579\n*S KotlinDebug\n*F\n+ 1 SearchNoteFragment.kt\ncom/onyx/galaxy/note/category/ui/SearchNoteFragment$initViewModel$3\n*L\n247#1:577,2\n249#1:579,2\n*E\n"})
/* loaded from: classes9.dex */
public final class SearchNoteFragment$initViewModel$3 extends Lambda implements Function1<Boolean, Unit> {
    final /* synthetic */ SearchNoteFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchNoteFragment$initViewModel$3(SearchNoteFragment searchNoteFragment) {
        super(1);
        this.this$0 = searchNoteFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(SearchNoteFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43844k1();
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
        invoke2(bool);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(Boolean bool) {
        FragmentSearchNoteBinding m43823D0;
        FragmentSearchNoteBinding m43823D02;
        FragmentSearchNoteBinding m43823D03;
        FragmentSearchNoteBinding m43823D04;
        SearchNoteAdapter m43822C0;
        m43823D0 = this.this$0.m43823D0();
        if (StringKt.isNotBlank(m43823D0.textInputEditTextViewName.getText())) {
            m43823D04 = this.this$0.m43823D0();
            CommonEmptyView emptyView = m43823D04.emptyView;
            Intrinsics.checkNotNullExpressionValue(emptyView, "emptyView");
            m43822C0 = this.this$0.m43822C0();
            emptyView.setVisibility(m43822C0.getItems().isEmpty() && !bool.booleanValue() ? 0 : 8);
        } else {
            m43823D02 = this.this$0.m43823D0();
            CommonEmptyView emptyView2 = m43823D02.emptyView;
            Intrinsics.checkNotNullExpressionValue(emptyView2, "emptyView");
            emptyView2.setVisibility(8);
        }
        m43823D03 = this.this$0.m43823D0();
        View root = m43823D03.getRoot();
        final SearchNoteFragment searchNoteFragment = this.this$0;
        root.post(new Runnable() { // from class: com.onyx.galaxy.note.category.ui.w
            @Override // java.lang.Runnable
            public final void run() {
                SearchNoteFragment$initViewModel$3.invoke$lambda$0(SearchNoteFragment.this);
            }
        });
        this.this$0.m43845l1();
    }
}
