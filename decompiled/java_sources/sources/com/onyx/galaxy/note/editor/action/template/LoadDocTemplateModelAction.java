package com.onyx.galaxy.note.editor.action.template;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.data.TemplateJsonBean;
import com.onyx.android.sdk.genericshape.FillAttr;
import com.onyx.android.sdk.genericshape.GeoFactory;
import com.onyx.android.sdk.genericshape.GeoLayout;
import com.onyx.android.sdk.genericshape.Properties;
import com.onyx.android.sdk.genericshape.StrokeAttr;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateResourceModel;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualDocModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.p042ui.data.Templates;
import com.onyx.galaxy.note.category.action.template.LoadTemplateByIdAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u001a\u0010\n\u001a\u00020\t2\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002R$\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/template/LoadDocTemplateModelAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "templateModel", "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;", "templateData", "", "m", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "getTemplateModel", "()Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "setTemplateModel", "(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class LoadDocTemplateModelAction extends RxBaseAppAction<LoadDocTemplateModelAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public TemplateModel templateModel;

    /* renamed from: com.onyx.galaxy.note.editor.action.template.LoadDocTemplateModelAction$a */
    /* loaded from: classes9.dex */
    public static final class C11991a<T, R> implements Function {
        public C11991a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends LoadDocTemplateModelAction> apply(@NotNull LoadDocTemplateModelAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadDocTemplateModelAction.this.m45957l();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.template.LoadDocTemplateModelAction$b */
    /* loaded from: classes9.dex */
    public static final class C11992b<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ TemplateJsonBean f58443f;

        public C11992b(TemplateJsonBean templateJsonBean) {
            this.f58443f = templateJsonBean;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull LoadTemplateByIdAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LoadDocTemplateModelAction.this.m45958m(it2.getTemplateModel(), this.f58443f);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.template.LoadDocTemplateModelAction$c */
    /* loaded from: classes9.dex */
    public static final class C11993c<T, R> implements Function {
        public C11993c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LoadDocTemplateModelAction apply(@NotNull LoadTemplateByIdAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadDocTemplateModelAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoadDocTemplateModelAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<LoadDocTemplateModelAction> create() {
        Observable<LoadDocTemplateModelAction> flatMap = Observable.just(this).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).flatMap(new C11991a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @Nullable
    public final TemplateModel getTemplateModel() {
        return this.templateModel;
    }

    /* renamed from: l */
    public final Observable<LoadDocTemplateModelAction> m45957l() {
        VirtualDocModel loadVirtualDocModel = getEditorBundle().getWorkBundle().getVirtualModelProvider().loadVirtualDocModel();
        if (loadVirtualDocModel == null) {
            Observable<LoadDocTemplateModelAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        TemplateJsonBean defaultTemplate = Templates.INSTANCE.getDefaultTemplate(loadVirtualDocModel);
        if (defaultTemplate == null) {
            Observable<LoadDocTemplateModelAction> just2 = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        Observable map = new LoadTemplateByIdAction(defaultTemplate.getUniqueId()).build().doOnNext(new C11992b(defaultTemplate)).map(new C11993c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final void m45958m(TemplateModel templateModel, TemplateJsonBean templateData) {
        TemplateResourceModel curResource;
        GeoLayout parseGeoLayout;
        Properties properties;
        if (templateModel == null) {
            return;
        }
        this.templateModel = templateModel;
        templateModel.getTemplateResourceWrapper().setFromMMKV(false);
        if (templateData.getResourceId().length() == 0) {
            templateModel.getTemplateResourceWrapper().setCurResourceIndex(0);
            TemplateResourceModel curResource2 = templateModel.getTemplateResourceWrapper().getCurResource();
            if (curResource2 == null) {
                return;
            }
            curResource2.setFillColor(-1);
            return;
        }
        if (templateModel.getTemplateResourceWrapper().selectByResourceId(templateData.getResourceId()) || (curResource = templateModel.getTemplateResourceWrapper().getCurResource()) == null || (parseGeoLayout = GeoFactory.INSTANCE.parseGeoLayout(templateData.getGeoContent())) == null || (properties = parseGeoLayout.getProperties()) == null) {
            return;
        }
        FillAttr fillAttr = properties.getFillAttr();
        if (fillAttr != null) {
            curResource.setFillColor(fillAttr.getColor());
        }
        StrokeAttr strokeAttr = properties.getStrokeAttr();
        if (strokeAttr != null) {
            curResource.setStrokeColor(strokeAttr.getColor());
            curResource.setColorTransformMode(strokeAttr.getColorTransformMode());
        }
    }

    public final void setTemplateModel(@Nullable TemplateModel templateModel) {
        this.templateModel = templateModel;
    }
}
