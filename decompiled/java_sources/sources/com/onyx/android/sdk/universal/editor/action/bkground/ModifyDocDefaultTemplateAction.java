package com.onyx.android.sdk.universal.editor.action.bkground;

import android.graphics.RectF;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.data.TemplateJsonBean;
import com.onyx.android.sdk.data.common.data.template.TemplateData;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualDocModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.p042ui.data.Templates;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\b\u0010\r\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0016\u0010\r\u001a\u0004\u0018\u00010\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyDocDefaultTemplateAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "m", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "templateModel", "Landroid/graphics/RectF;", "l", "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;", C6999h.f39688c, "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;", "templateJsonBean", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ModifyDocDefaultTemplateAction extends RxBaseAppAction<ModifyDocDefaultTemplateAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public final TemplateJsonBean templateJsonBean;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.bkground.ModifyDocDefaultTemplateAction$a */
    /* loaded from: classes8.dex */
    public static final class C8551a<T> implements Consumer {
        public C8551a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ModifyDocDefaultTemplateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ModifyDocDefaultTemplateAction.this.m37406m();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ModifyDocDefaultTemplateAction(@NotNull EditorBundle editorBundle, @Nullable TemplateJsonBean templateJsonBean) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.templateJsonBean = templateJsonBean;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ModifyDocDefaultTemplateAction> create() {
        Observable<ModifyDocDefaultTemplateAction> doOnNext = Observable.just(this).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).doOnNext(new C8551a());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: l */
    public final RectF m37405l(TemplateModel templateModel) {
        RectF paperTemplateRect = Templates.INSTANCE.paperTemplateRect(templateModel);
        VirtualPage virtualPage = getEditorBundle().getWorkBundle().getVirtualPolicy().getVirtualPage(getEditorBundle().getWorkBundle().getVirtualPolicy().getVirtualPageCount() - 1);
        if (virtualPage != null) {
            float width = virtualPage.getBox().getOriginRectF().width() / paperTemplateRect.width();
            if (!Float.isNaN(width)) {
                RectFKt.scaleRect(paperTemplateRect, width);
            }
        }
        return paperTemplateRect;
    }

    /* renamed from: m */
    public final void m37406m() {
        VirtualDocModel loadVirtualDocModel;
        TemplateModel loadTemplateListById;
        if (this.templateJsonBean == null || (loadVirtualDocModel = getEditorBundle().getWorkBundle().getVirtualModelProvider().loadVirtualDocModel()) == null || (loadTemplateListById = KSyncBundle.INSTANCE.getUserTemplateProvider().loadTemplateListById(this.templateJsonBean.getUniqueId())) == null) {
            return;
        }
        loadTemplateListById.setSizeFormat(this.templateJsonBean.getSizeFormat());
        loadVirtualDocModel.setDefaultTemplate(Templates.INSTANCE.updateByTemplateJson(new TemplateData(), this.templateJsonBean, m37405l(loadTemplateListById), EditorBundleKt.docId(getEditorBundle())));
        getEditorBundle().getWorkBundle().getVirtualModelProvider().saveVirtualDocModel(loadVirtualDocModel);
    }
}
