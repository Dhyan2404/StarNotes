package com.onyx.galaxy.note.editor.action.template;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.data.TemplateJsonBean;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.bean.TemplateResourceWrapper;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateResourceModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.doc.VirtualPageConfig;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.p042ui.data.Templates;
import com.onyx.galaxy.note.category.action.template.LoadTemplateByJsonBeanAction;
import com.onyx.galaxy.note.editor.action.template.LoadTemplateColorsAction;
import com.onyx.galaxy.note.settings.data.NoteConfigConst;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b\u001f\u0010 J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002R(\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u000e0\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\"\u0010\u001c\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006!"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByJsonBeanAction;", "action", "", GoogleApiAvailabilityLight.f29016b, C4921e.f26528e, "", CouchFieldKey.KEY_TOC_PAGE_ID, "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;", "p", "", "", C6999h.f39688c, "Ljava/util/List;", "getColorList", "()Ljava/util/List;", "setColorList", "(Ljava/util/List;)V", "colorList", "i", "I", "getTemplateFillColor", "()I", "setTemplateFillColor", "(I)V", "templateFillColor", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class LoadTemplateColorsAction extends RxBaseAppAction<LoadTemplateColorsAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public List<Integer> colorList;

    /* renamed from: i, reason: from kotlin metadata */
    public int templateFillColor;

    /* renamed from: com.onyx.galaxy.note.editor.action.template.LoadTemplateColorsAction$a */
    /* loaded from: classes9.dex */
    public static final class C11996a<T, R> implements Function {
        public C11996a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends LoadTemplateColorsAction> apply(@NotNull LoadTemplateColorsAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadTemplateColorsAction.this.m45970o();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.template.LoadTemplateColorsAction$b */
    /* loaded from: classes9.dex */
    public static final class C11997b<T, R> implements Function {
        public C11997b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull LoadTemplateColorsAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return EditorBundleKt.currentVisibleBoxInfo(LoadTemplateColorsAction.this.getEditorBundle()).getId();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.template.LoadTemplateColorsAction$c */
    /* loaded from: classes9.dex */
    public static final class C11998c<T, R> implements Function {
        public C11998c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TemplateJsonBean apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadTemplateColorsAction.this.m45971p(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.template.LoadTemplateColorsAction$d */
    /* loaded from: classes9.dex */
    public static final class C11999d<T, R> implements Function {

        /* renamed from: e */
        public static final C11999d<T, R> f58459e = new C11999d<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends LoadTemplateByJsonBeanAction> apply(@NotNull TemplateJsonBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new LoadTemplateByJsonBeanAction(it2).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.template.LoadTemplateColorsAction$e */
    /* loaded from: classes9.dex */
    public static final class C12000e<T, R> implements Function {
        public C12000e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LoadTemplateColorsAction apply(@NotNull LoadTemplateByJsonBeanAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadTemplateColorsAction.this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.template.LoadTemplateColorsAction$f */
    /* loaded from: classes9.dex */
    public static final class C12001f<T, R> implements Function {
        public C12001f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LoadTemplateColorsAction apply(@NotNull List<TemplateResourceModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadTemplateColorsAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoadTemplateColorsAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        List<Integer> mutableList;
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) NoteConfigConst.INSTANCE.getDEFAULT_TEMPLATE_PAGE_COLOR_LIST());
        this.colorList = mutableList;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) mutableList);
        Integer num = (Integer) firstOrNull;
        this.templateFillColor = num != null ? num.intValue() : -1;
    }

    /* renamed from: m */
    public static final void m45968m(LoadTemplateColorsAction this$0, LoadTemplateByJsonBeanAction it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.m45969n(it2);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<LoadTemplateColorsAction> create() {
        Observable flatMap = Observable.just(this).flatMap(new C11996a()).map(new C11997b()).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).map(new C11998c()).observeOn(getMainUIScheduler()).flatMap(C11999d.f58459e);
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        Observable<LoadTemplateColorsAction> map = RxjavaKt.doOnNextIf(flatMap, new Function1<LoadTemplateByJsonBeanAction, Boolean>() { // from class: com.onyx.galaxy.note.editor.action.template.LoadTemplateColorsAction$create$5
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull LoadTemplateByJsonBeanAction it2) {
                TemplateResourceWrapper templateResourceWrapper;
                Intrinsics.checkNotNullParameter(it2, "it");
                TemplateModel templateModel = it2.getTemplateModel();
                return Boolean.valueOf(((templateModel == null || (templateResourceWrapper = templateModel.getTemplateResourceWrapper()) == null) ? null : templateResourceWrapper.getCurResource()) != null);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.e0j
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                LoadTemplateColorsAction.m45968m(LoadTemplateColorsAction.this, (LoadTemplateByJsonBeanAction) obj);
            }
        }).observeOn(getMainUIScheduler()).map(new C12000e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final List<Integer> getColorList() {
        return this.colorList;
    }

    public final int getTemplateFillColor() {
        return this.templateFillColor;
    }

    /* renamed from: n */
    public final void m45969n(LoadTemplateByJsonBeanAction action) {
        List<Integer> mutableList;
        TemplateModel templateModel = action.getTemplateModel();
        Intrinsics.checkNotNull(templateModel);
        List<Integer> fillColorList = templateModel.getTemplateResourceWrapper().getFillColorList();
        NoteConfigConst noteConfigConst = NoteConfigConst.INSTANCE;
        List safelySubList = CollectionKt.safelySubList(fillColorList, 0, noteConfigConst.getDEFAULT_TEMPLATE_PAGE_COLOR_LIST().size());
        if (safelySubList.size() == noteConfigConst.getDEFAULT_TEMPLATE_PAGE_COLOR_LIST().size()) {
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) safelySubList);
            this.colorList = mutableList;
            TemplateModel templateModel2 = action.getTemplateModel();
            Intrinsics.checkNotNull(templateModel2);
            this.templateFillColor = templateModel2.getTemplateResourceWrapper().getCurFillColor();
        }
    }

    /* renamed from: o */
    public final Observable<LoadTemplateColorsAction> m45970o() {
        Observable<LoadTemplateColorsAction> map = DocCommonActionsKt.createCoreObservable(this, new Function1<WorkBundle, List<? extends TemplateResourceModel>>() { // from class: com.onyx.galaxy.note.editor.action.template.LoadTemplateColorsAction$load$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final List<TemplateResourceModel> invoke(@NotNull WorkBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return KSyncBundle.INSTANCE.getUserTemplateProvider().loadOfficialTemplateResourceColors();
            }
        }).map(new C12001f());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: p */
    public final TemplateJsonBean m45971p(String pageId) {
        VirtualPageConfig virtualPageConfig;
        TemplateJsonBean pageConfigToTemplateJson;
        VirtualPage virtualPage = getEditorBundle().getWorkBundle().getVirtualPolicy().getVirtualPage(pageId);
        return (virtualPage == null || (virtualPageConfig = virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String()) == null || (pageConfigToTemplateJson = Templates.INSTANCE.pageConfigToTemplateJson(virtualPageConfig)) == null) ? TemplateJsonBean.INSTANCE.defaultPaper() : pageConfigToTemplateJson;
    }

    public final void setColorList(@NotNull List<Integer> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.colorList = list;
    }

    public final void setTemplateFillColor(int i) {
        this.templateFillColor = i;
    }
}
