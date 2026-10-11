package com.onyx.galaxy.note.category.action.template;

import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.data.template.TemplateResourceConstant;
import com.onyx.android.sdk.data.common.path.TemplatePaths;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfoUtils;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.bean.SizeFormat;
import com.onyx.android.sdk.replicator.note.bean.TemplateResourceWrapper;
import com.onyx.android.sdk.replicator.note.p035db.TemplateProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateResourceModel;
import com.onyx.android.sdk.universal.docmanager.action.name.GenerateNameAction;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.data.TemplateManagerBundle;
import com.onyx.android.sdk.universal.p042ui.data.Templates;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.p127import.SaveFilesAsCustomTemplateAction;
import com.onyx.galaxy.note.category.action.template.ImportFilesAsCustomPaperAction;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.data.TemplateFileBean;
import com.onyx.galaxy.note.category.data.TemplateImportBean;
import com.onyx.galaxy.note.category.event.ImportCustomPaperEvent;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.BooleanSupplier;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u001d\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\"\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0002H\u0002J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0006H\u0002R(\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R \u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/galaxy/note/category/data/TemplateImportBean;", "list", "m", "bean", C4921e.f26528e, "Lcom/onyx/galaxy/note/category/data/TemplateFileBean;", C6999h.f39688c, "Ljava/util/List;", "getList", "()Ljava/util/List;", "setList", "(Ljava/util/List;)V", "Lkotlin/Function1;", "", "", "i", "Lkotlin/jvm/functions/Function1;", "checkDuplicate", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ImportFilesAsCustomPaperAction extends RxBaseAppAction<List<? extends TemplateModel>> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public List<TemplateFileBean> list;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Function1<String, Boolean> checkDuplicate;

    /* renamed from: com.onyx.galaxy.note.category.action.template.ImportFilesAsCustomPaperAction$a */
    /* loaded from: classes9.dex */
    public static final class C11192a<T, R> implements Function {
        public C11192a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<TemplateModel>> apply(@NotNull SaveFilesAsCustomTemplateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ImportFilesAsCustomPaperAction.this.m42956m(it2.getBeanList());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.template.ImportFilesAsCustomPaperAction$b */
    /* loaded from: classes9.dex */
    public static final class C11193b<T, R> implements Function {

        /* renamed from: e */
        public static final C11193b<T, R> f54347e = new C11193b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TemplateImportBean apply(@NotNull Iterator<TemplateImportBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.next();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.template.ImportFilesAsCustomPaperAction$c */
    /* loaded from: classes9.dex */
    public static final class C11194c<T, R> implements Function {

        /* renamed from: com.onyx.galaxy.note.category.action.template.ImportFilesAsCustomPaperAction$c$a */
        /* loaded from: classes9.dex */
        public static final class a<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ TemplateImportBean f54349e;

            public a(TemplateImportBean templateImportBean) {
                this.f54349e = templateImportBean;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final TemplateImportBean apply(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                this.f54349e.setTitle(it2);
                return this.f54349e;
            }
        }

        public C11194c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends TemplateImportBean> apply(@NotNull TemplateImportBean origin) {
            Intrinsics.checkNotNullParameter(origin, "origin");
            ResManager resManager = ResManager.INSTANCE;
            return new GenerateNameAction(resManager.getStringSafely(C10651R.string.custom_paper), resManager.getInteger(C10651R.integer.custom_template_max_length), ImportFilesAsCustomPaperAction.this.checkDuplicate, null, 8, null).build().map(new a(origin));
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.template.ImportFilesAsCustomPaperAction$d */
    /* loaded from: classes9.dex */
    public static final class C11195d<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<TemplateModel> f54350e;

        /* renamed from: f */
        public final /* synthetic */ ImportFilesAsCustomPaperAction f54351f;

        public C11195d(List<TemplateModel> list, ImportFilesAsCustomPaperAction importFilesAsCustomPaperAction) {
            this.f54350e = list;
            this.f54351f = importFilesAsCustomPaperAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull TemplateImportBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(this.f54350e.add(this.f54351f.m42957o(it2)));
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.template.ImportFilesAsCustomPaperAction$e */
    /* loaded from: classes9.dex */
    public static final class C11196e<T> implements Predicate {

        /* renamed from: e */
        public final /* synthetic */ Iterator<TemplateImportBean> f54352e;

        public C11196e(Iterator<TemplateImportBean> it2) {
            this.f54352e = it2;
        }

        /* renamed from: a */
        public final boolean m42963a(boolean z) {
            return !this.f54352e.hasNext();
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public /* bridge */ /* synthetic */ boolean test(Object obj) {
            return m42963a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.template.ImportFilesAsCustomPaperAction$f */
    /* loaded from: classes9.dex */
    public static final class C11197f<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<TemplateModel> f54353e;

        public C11197f(List<TemplateModel> list) {
            this.f54353e = list;
        }

        @NotNull
        /* renamed from: a */
        public final List<TemplateModel> m42964a(boolean z) {
            return this.f54353e;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42964a(((Boolean) obj).booleanValue());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImportFilesAsCustomPaperAction(@NotNull EditorBundle editorBundle, @NotNull List<TemplateFileBean> list) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(list, "list");
        this.list = list;
        this.checkDuplicate = new Function1<String, Boolean>() { // from class: com.onyx.galaxy.note.category.action.template.ImportFilesAsCustomPaperAction$checkDuplicate$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull String generateName) {
                Intrinsics.checkNotNullParameter(generateName, "generateName");
                return Boolean.valueOf(KSyncBundle.INSTANCE.getDbProviderBundle().getTemplateProvider(ProviderInfoUtils.INSTANCE.getUserDataProviderInfo(AccountDataBundle.INSTANCE.getSyncUserId())).checkTemplateNameRepeat(generateName));
            }
        };
    }

    /* renamed from: n */
    public static final boolean m42955n(Iterator iterator) {
        Intrinsics.checkNotNullParameter(iterator, "$iterator");
        return !iterator.hasNext();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<TemplateModel>> create() {
        if (this.list.isEmpty()) {
            Observable<List<TemplateModel>> just = Observable.just(new ArrayList());
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable flatMap = new SaveFilesAsCustomTemplateAction(getEditorBundle(), this.list, TemplatePaths.INSTANCE.appUserNoteTemplateResDir(AccountDataBundle.INSTANCE.getSyncUserId()).toAbsolutePath().toString()).build().observeOn(TemplateManagerBundle.INSTANCE.getObserveOn()).flatMap(new C11192a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @NotNull
    public final List<TemplateFileBean> getList() {
        return this.list;
    }

    /* renamed from: m */
    public final Observable<List<TemplateModel>> m42956m(List<TemplateImportBean> list) {
        final Iterator<TemplateImportBean> it2 = list.iterator();
        ArrayList arrayList = new ArrayList();
        Observable<List<TemplateModel>> map = Observable.just(it2).map(C11193b.f54347e).flatMap(new C11194c()).observeOn(TemplateManagerBundle.INSTANCE.getObserveOn()).map(new C11195d(arrayList, this)).repeatUntil(new BooleanSupplier() { // from class: com.sunia.HTREnginev2.sii
            @Override // io.reactivex.rxjava3.functions.BooleanSupplier
            public final boolean getAsBoolean() {
                boolean m42955n;
                m42955n = ImportFilesAsCustomPaperAction.m42955n(it2);
                return m42955n;
            }
        }).filter(new C11196e(it2)).map(new C11197f(arrayList));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: o */
    public final TemplateModel m42957o(TemplateImportBean bean) {
        List<String> mutableListOf;
        List<TemplateResourceModel> mutableListOf2;
        TemplateModel templateModel = new TemplateModel();
        RectF pageOriginSize = bean.getReaderPageInfo().getPageOriginSize();
        String title = bean.getTitle();
        TemplateResourceModel templateResourceModel = new TemplateResourceModel();
        UUIDUtils uUIDUtils = UUIDUtils.INSTANCE;
        templateResourceModel.setUniqueId(uUIDUtils.shortUUID());
        templateResourceModel.setSource(1);
        templateResourceModel.setRelativePath(TemplatePaths.INSTANCE.templateResRelativePath(bean.getReaderPageInfo().getPath()));
        TemplateResourceConstant templateResourceConstant = TemplateResourceConstant.INSTANCE;
        FileUtils fileUtils = FileUtils.INSTANCE;
        templateResourceModel.setResourceType(templateResourceConstant.getResourceType(fileUtils.getFileName(bean.getReaderPageInfo().getPath())));
        templateResourceModel.setThumbnailRelativePath(bean.getThumbnailRelativePath());
        templateResourceModel.setResRect(RectFKt.copy(bean.getReaderPageInfo().getPageOriginSize()));
        templateResourceModel.setFillColor(Templates.INSTANCE.loadResourceColor(bean.getThumbnailRelativePath()));
        templateModel.setUniqueId(uUIDUtils.shortUUID());
        templateModel.setTitle(fileUtils.getFileBaseName(title));
        templateModel.setCategoryId("CUSTOM");
        templateModel.setContentPageId(bean.getReaderPageInfo().getPageId());
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(templateResourceModel.getUniqueId());
        templateModel.setResourceIdList(mutableListOf);
        templateModel.setSource(1);
        templateModel.setOrientation(RectKt.getOrientation(pageOriginSize).getValue());
        templateModel.setTemplateResourceWrapper(new TemplateResourceWrapper());
        templateModel.getTemplateResourceWrapper().setTemplateUniqueId(TemplateResourceWrapper.INSTANCE.generateResourceId(templateModel.getCategoryId(), templateModel.getUniqueId()));
        TemplateResourceWrapper templateResourceWrapper = templateModel.getTemplateResourceWrapper();
        mutableListOf2 = CollectionsKt__CollectionsKt.mutableListOf(templateResourceModel);
        templateResourceWrapper.setResourceList(mutableListOf2);
        templateModel.setSizeFormat(SizeFormat.CUSTOM.name());
        TemplateProvider templateProvider = KSyncBundle.INSTANCE.getDbProviderBundle().getTemplateProvider(ProviderInfoUtils.INSTANCE.getUserDataProviderInfo(AccountDataBundle.INSTANCE.getSyncUserId()));
        templateProvider.saveTemplate(templateModel);
        TemplateProvider.saveTemplateResourceList$default(templateProvider, templateModel.getTemplateResourceWrapper().getResourceList(), false, 2, null);
        DocCollectionBundle.INSTANCE.postEvent(new ImportCustomPaperEvent());
        return templateModel;
    }

    public final void setList(@NotNull List<TemplateFileBean> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.list = list;
    }
}
