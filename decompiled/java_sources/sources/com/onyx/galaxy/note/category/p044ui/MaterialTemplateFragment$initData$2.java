package com.onyx.galaxy.note.category.p044ui;

import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.onyx.android.sdk.replicator.note.bean.TemplateCategory;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.galaxy.note.category.view.adapter.template.MaterialPaperCategoryAdapter;
import com.onyx.galaxy.note.category.view.adapter.template.PaperTitleCategoryAdapter;
import com.onyx.galaxy.note.category.viewmodel.MaterialTemplateViewModel;
import com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0006"}, m61528d2 = {"<anonymous>", "", OcrValues.LANG_ITALIAN, "", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "kotlin.jvm.PlatformType", "invoke"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class MaterialTemplateFragment$initData$2 extends Lambda implements Function1<List<? extends TemplateModel>, Unit> {
    final /* synthetic */ MaterialTemplateFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MaterialTemplateFragment$initData$2(MaterialTemplateFragment materialTemplateFragment) {
        super(1);
        this.this$0 = materialTemplateFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(MaterialTemplateFragment this$0, TemplateCategory templateCategory) {
        PaperTitleCategoryAdapter m43159s0;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        m43159s0 = this$0.m43159s0();
        m43159s0.selectItem(templateCategory);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$1(MaterialTemplateFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43155o0();
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(List<? extends TemplateModel> list) {
        invoke2((List<TemplateModel>) list);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(List<TemplateModel> list) {
        PaperTitleCategoryAdapter m43159s0;
        PaperTitleCategoryAdapter m43159s02;
        MaterialTemplateViewModel m43158r0;
        MaterialPaperCategoryAdapter m43160t0;
        MaterialTemplateViewModel m43158r02;
        NoteTemplateViewModel m43161u0;
        m43159s0 = this.this$0.m43159s0();
        final TemplateCategory findSelectedItem = m43159s0.findSelectedItem();
        m43159s02 = this.this$0.m43159s0();
        m43158r0 = this.this$0.m43158r0();
        List<TemplateCategory> value = m43158r0.getPaperMaterialCategoryList().getValue();
        final MaterialTemplateFragment materialTemplateFragment = this.this$0;
        m43159s02.submitList(value, new Runnable() { // from class: com.onyx.galaxy.note.category.ui.g
            @Override // java.lang.Runnable
            public final void run() {
                MaterialTemplateFragment$initData$2.invoke$lambda$0(MaterialTemplateFragment.this, findSelectedItem);
            }
        });
        m43160t0 = this.this$0.m43160t0();
        m43158r02 = this.this$0.m43158r0();
        List<TemplateCategory> value2 = m43158r02.getPaperMaterialCategoryList().getValue();
        final MaterialTemplateFragment materialTemplateFragment2 = this.this$0;
        m43160t0.submitList(value2, new Runnable() { // from class: com.onyx.galaxy.note.category.ui.h
            @Override // java.lang.Runnable
            public final void run() {
                MaterialTemplateFragment$initData$2.invoke$lambda$1(MaterialTemplateFragment.this);
            }
        });
        m43161u0 = this.this$0.m43161u0();
        NoteTemplateViewModel.checkPaperSelected$default(m43161u0, null, 1, null);
    }
}
