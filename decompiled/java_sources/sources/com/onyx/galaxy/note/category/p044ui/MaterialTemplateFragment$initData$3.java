package com.onyx.galaxy.note.category.p044ui;

import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.onyx.android.sdk.replicator.note.bean.CoverCategory;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverModel;
import com.onyx.galaxy.note.category.view.adapter.template.CoverTitleCategoryAdapter;
import com.onyx.galaxy.note.category.view.adapter.template.MaterialCoverCategoryAdapter;
import com.onyx.galaxy.note.category.viewmodel.MaterialTemplateViewModel;
import com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0006"}, m61528d2 = {"<anonymous>", "", OcrValues.LANG_ITALIAN, "", "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", "kotlin.jvm.PlatformType", "invoke"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class MaterialTemplateFragment$initData$3 extends Lambda implements Function1<List<? extends CoverModel>, Unit> {
    final /* synthetic */ MaterialTemplateFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MaterialTemplateFragment$initData$3(MaterialTemplateFragment materialTemplateFragment) {
        super(1);
        this.this$0 = materialTemplateFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(MaterialTemplateFragment this$0, CoverCategory coverCategory) {
        CoverTitleCategoryAdapter m43156p0;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        m43156p0 = this$0.m43156p0();
        m43156p0.selectItem(coverCategory);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$1(MaterialTemplateFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43155o0();
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(List<? extends CoverModel> list) {
        invoke2((List<CoverModel>) list);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(List<CoverModel> list) {
        CoverTitleCategoryAdapter m43156p0;
        CoverTitleCategoryAdapter m43156p02;
        MaterialTemplateViewModel m43158r0;
        MaterialCoverCategoryAdapter m43157q0;
        MaterialTemplateViewModel m43158r02;
        NoteTemplateViewModel m43161u0;
        m43156p0 = this.this$0.m43156p0();
        final CoverCategory findSelectedItem = m43156p0.findSelectedItem();
        m43156p02 = this.this$0.m43156p0();
        m43158r0 = this.this$0.m43158r0();
        List<CoverCategory> value = m43158r0.getCoverMaterialCategoryList().getValue();
        final MaterialTemplateFragment materialTemplateFragment = this.this$0;
        m43156p02.submitList(value, new Runnable() { // from class: com.onyx.galaxy.note.category.ui.i
            @Override // java.lang.Runnable
            public final void run() {
                MaterialTemplateFragment$initData$3.invoke$lambda$0(MaterialTemplateFragment.this, findSelectedItem);
            }
        });
        m43157q0 = this.this$0.m43157q0();
        m43158r02 = this.this$0.m43158r0();
        List<CoverCategory> value2 = m43158r02.getCoverMaterialCategoryList().getValue();
        final MaterialTemplateFragment materialTemplateFragment2 = this.this$0;
        m43157q0.submitList(value2, new Runnable() { // from class: com.onyx.galaxy.note.category.ui.j
            @Override // java.lang.Runnable
            public final void run() {
                MaterialTemplateFragment$initData$3.invoke$lambda$1(MaterialTemplateFragment.this);
            }
        });
        m43161u0 = this.this$0.m43161u0();
        NoteTemplateViewModel.checkCoverSelected$default(m43161u0, null, 1, null);
    }
}
