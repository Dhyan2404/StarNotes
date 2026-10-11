package com.onyx.galaxy.note.category.p044ui;

import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.onyx.android.sdk.replicator.note.bean.CoverCategory;
import com.onyx.galaxy.note.category.view.adapter.template.CoverTitleCategoryAdapter;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0006"}, m61528d2 = {"<anonymous>", "", OcrValues.LANG_ITALIAN, "", "Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;", "kotlin.jvm.PlatformType", "invoke"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class NoteTemplateFragment$initCoverObserve$2 extends Lambda implements Function1<List<? extends CoverCategory>, Unit> {
    final /* synthetic */ NoteTemplateFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoteTemplateFragment$initCoverObserve$2(NoteTemplateFragment noteTemplateFragment) {
        super(1);
        this.this$0 = noteTemplateFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(NoteTemplateFragment this$0, CoverCategory coverCategory) {
        CoverTitleCategoryAdapter m43630m1;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        m43630m1 = this$0.m43630m1();
        m43630m1.selectItem(coverCategory);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(List<? extends CoverCategory> list) {
        invoke2((List<CoverCategory>) list);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(List<CoverCategory> list) {
        CoverTitleCategoryAdapter m43630m1;
        CoverTitleCategoryAdapter m43630m12;
        m43630m1 = this.this$0.m43630m1();
        final CoverCategory findSelectedItem = m43630m1.findSelectedItem();
        m43630m12 = this.this$0.m43630m1();
        final NoteTemplateFragment noteTemplateFragment = this.this$0;
        m43630m12.submitList(list, new Runnable() { // from class: com.onyx.galaxy.note.category.ui.s
            @Override // java.lang.Runnable
            public final void run() {
                NoteTemplateFragment$initCoverObserve$2.invoke$lambda$0(NoteTemplateFragment.this, findSelectedItem);
            }
        });
    }
}
