package com.onyx.galaxy.note.category.p044ui;

import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.galaxy.note.category.view.adapter.template.CustomPaperAdapter;
import com.onyx.galaxy.note.editor.view.custom.TemplateThumbnailView;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, m61528d2 = {"<anonymous>", "", OcrValues.LANG_ITALIAN, "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "kotlin.jvm.PlatformType", "invoke"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class NoteTemplateFragment$initPaperObserve$1 extends Lambda implements Function1<TemplateModel, Unit> {
    final /* synthetic */ NoteTemplateFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoteTemplateFragment$initPaperObserve$1(NoteTemplateFragment noteTemplateFragment) {
        super(1);
        this.this$0 = noteTemplateFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(TemplateThumbnailView ivTitleThumbPaper, TemplateModel templateModel, NoteTemplateFragment this$0) {
        Intrinsics.checkNotNullParameter(ivTitleThumbPaper, "$ivTitleThumbPaper");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNull(templateModel);
        ivTitleThumbPaper.loadPaperTemplateThumbnail(templateModel);
        this$0.m43642r3(templateModel);
        this$0.m43626k3();
        this$0.m43623j3();
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(TemplateModel templateModel) {
        invoke2(templateModel);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(final TemplateModel templateModel) {
        CustomPaperAdapter m43639q1;
        m43639q1 = this.this$0.m43639q1();
        m43639q1.notifySelectChange();
        this.this$0.m43648v1().notifySelectChange();
        final TemplateThumbnailView ivTitleThumbPaper = this.this$0.getBinding().titleContainer.templateTitleOrientationContainer.ivTitleThumbPaper;
        Intrinsics.checkNotNullExpressionValue(ivTitleThumbPaper, "ivTitleThumbPaper");
        ivTitleThumbPaper.updateViewSize(templateModel.getOrientation());
        final NoteTemplateFragment noteTemplateFragment = this.this$0;
        ivTitleThumbPaper.post(new Runnable() { // from class: com.onyx.galaxy.note.category.ui.t
            @Override // java.lang.Runnable
            public final void run() {
                NoteTemplateFragment$initPaperObserve$1.invoke$lambda$0(TemplateThumbnailView.this, templateModel, noteTemplateFragment);
            }
        });
        this.this$0.m43646t3();
    }
}
