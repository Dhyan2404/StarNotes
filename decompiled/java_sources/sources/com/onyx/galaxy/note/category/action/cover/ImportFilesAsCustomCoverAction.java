package com.onyx.galaxy.note.category.action.cover;

import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.data.template.TemplateResourceConstant;
import com.onyx.android.sdk.data.common.path.CoverPaths;
import com.onyx.android.sdk.data.common.path.TemplatePaths;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfoUtils;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.bean.SizeFormat;
import com.onyx.android.sdk.replicator.note.bean.TemplateResourceWrapper;
import com.onyx.android.sdk.replicator.note.p035db.CoverProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateResourceModel;
import com.onyx.android.sdk.universal.docmanager.action.name.GenerateNameAction;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.data.TemplateManagerBundle;
import com.onyx.android.sdk.universal.p042ui.data.Templates;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.cover.ImportFilesAsCustomCoverAction;
import com.onyx.galaxy.note.category.action.p127import.SaveFilesAsCustomTemplateAction;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.data.TemplateFileBean;
import com.onyx.galaxy.note.category.data.TemplateImportBean;
import com.onyx.galaxy.note.category.event.ImportCustomCoverEvent;
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

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u001d\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\"\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0002H\u0002J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0006H\u0002R(\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R \u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/cover/ImportFilesAsCustomCoverAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/galaxy/note/category/data/TemplateImportBean;", "list", "m", "bean", C4921e.f26528e, "Lcom/onyx/galaxy/note/category/data/TemplateFileBean;", C6999h.f39688c, "Ljava/util/List;", "getList", "()Ljava/util/List;", "setList", "(Ljava/util/List;)V", "Lkotlin/Function1;", "", "", "i", "Lkotlin/jvm/functions/Function1;", "checkDuplicate", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ImportFilesAsCustomCoverAction extends RxBaseAppAction<List<? extends CoverModel>> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public List<TemplateFileBean> list;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Function1<String, Boolean> checkDuplicate;

    /* renamed from: com.onyx.galaxy.note.category.action.cover.ImportFilesAsCustomCoverAction$a */
    /* loaded from: classes9.dex */
    public static final class C11028a<T, R> implements Function {
        public C11028a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<CoverModel>> apply(@NotNull SaveFilesAsCustomTemplateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ImportFilesAsCustomCoverAction.this.m42638m(it2.getBeanList());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.cover.ImportFilesAsCustomCoverAction$b */
    /* loaded from: classes9.dex */
    public static final class C11029b<T, R> implements Function {

        /* renamed from: e */
        public static final C11029b<T, R> f54087e = new C11029b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TemplateImportBean apply(@NotNull Iterator<TemplateImportBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.next();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.cover.ImportFilesAsCustomCoverAction$c */
    /* loaded from: classes9.dex */
    public static final class C11030c<T, R> implements Function {

        /* renamed from: com.onyx.galaxy.note.category.action.cover.ImportFilesAsCustomCoverAction$c$a */
        /* loaded from: classes9.dex */
        public static final class a<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ TemplateImportBean f54089e;

            public a(TemplateImportBean templateImportBean) {
                this.f54089e = templateImportBean;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final TemplateImportBean apply(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                this.f54089e.setTitle(it2);
                return this.f54089e;
            }
        }

        public C11030c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends TemplateImportBean> apply(@NotNull TemplateImportBean origin) {
            Intrinsics.checkNotNullParameter(origin, "origin");
            ResManager resManager = ResManager.INSTANCE;
            return new GenerateNameAction(resManager.getStringSafely(C10651R.string.custom_cover), resManager.getInteger(C10651R.integer.custom_template_max_length), ImportFilesAsCustomCoverAction.this.checkDuplicate, null, 8, null).build().map(new a(origin));
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.cover.ImportFilesAsCustomCoverAction$d */
    /* loaded from: classes9.dex */
    public static final class C11031d<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<CoverModel> f54090e;

        /* renamed from: f */
        public final /* synthetic */ ImportFilesAsCustomCoverAction f54091f;

        public C11031d(List<CoverModel> list, ImportFilesAsCustomCoverAction importFilesAsCustomCoverAction) {
            this.f54090e = list;
            this.f54091f = importFilesAsCustomCoverAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull TemplateImportBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(this.f54090e.add(this.f54091f.m42639o(it2)));
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.cover.ImportFilesAsCustomCoverAction$e */
    /* loaded from: classes9.dex */
    public static final class C11032e<T> implements Predicate {

        /* renamed from: e */
        public final /* synthetic */ Iterator<TemplateImportBean> f54092e;

        public C11032e(Iterator<TemplateImportBean> it2) {
            this.f54092e = it2;
        }

        /* renamed from: a */
        public final boolean m42645a(boolean z) {
            return !this.f54092e.hasNext();
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public /* bridge */ /* synthetic */ boolean test(Object obj) {
            return m42645a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.cover.ImportFilesAsCustomCoverAction$f */
    /* loaded from: classes9.dex */
    public static final class C11033f<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<CoverModel> f54093e;

        public C11033f(List<CoverModel> list) {
            this.f54093e = list;
        }

        @NotNull
        /* renamed from: a */
        public final List<CoverModel> m42646a(boolean z) {
            return this.f54093e;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42646a(((Boolean) obj).booleanValue());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImportFilesAsCustomCoverAction(@NotNull EditorBundle editorBundle, @NotNull List<TemplateFileBean> list) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(list, "list");
        this.list = list;
        this.checkDuplicate = new Function1<String, Boolean>() { // from class: com.onyx.galaxy.note.category.action.cover.ImportFilesAsCustomCoverAction$checkDuplicate$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull String generateName) {
                Intrinsics.checkNotNullParameter(generateName, "generateName");
                return Boolean.valueOf(KSyncBundle.INSTANCE.getDbProviderBundle().getCoverProvider(ProviderInfoUtils.INSTANCE.getUserDataProviderInfo(AccountDataBundle.INSTANCE.getSyncUserId())).checkTemplateNameRepeat(generateName));
            }
        };
    }

    /* renamed from: n */
    public static final boolean m42637n(Iterator iterator) {
        Intrinsics.checkNotNullParameter(iterator, "$iterator");
        return !iterator.hasNext();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<CoverModel>> create() {
        if (this.list.isEmpty()) {
            Observable<List<CoverModel>> just = Observable.just(new ArrayList());
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable flatMap = new SaveFilesAsCustomTemplateAction(getEditorBundle(), this.list, CoverPaths.INSTANCE.appUserNoteCoverResDir(AccountDataBundle.INSTANCE.getSyncUserId()).toAbsolutePath().toString()).build().takeLast(1).observeOn(TemplateManagerBundle.INSTANCE.getObserveOn()).flatMap(new C11028a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @NotNull
    public final List<TemplateFileBean> getList() {
        return this.list;
    }

    /* renamed from: m */
    public final Observable<List<CoverModel>> m42638m(List<TemplateImportBean> list) {
        final Iterator<TemplateImportBean> it2 = list.iterator();
        ArrayList arrayList = new ArrayList();
        Observable<List<CoverModel>> map = Observable.just(it2).map(C11029b.f54087e).flatMap(new C11030c()).observeOn(TemplateManagerBundle.INSTANCE.getObserveOn()).map(new C11031d(arrayList, this)).repeatUntil(new BooleanSupplier() { // from class: com.sunia.HTREnginev2.rii
            @Override // io.reactivex.rxjava3.functions.BooleanSupplier
            public final boolean getAsBoolean() {
                boolean m42637n;
                m42637n = ImportFilesAsCustomCoverAction.m42637n(it2);
                return m42637n;
            }
        }).filter(new C11032e(it2)).map(new C11033f(arrayList));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: o */
    public final CoverModel m42639o(TemplateImportBean bean) {
        List<String> mutableListOf;
        List<TemplateResourceModel> mutableListOf2;
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
        CoverModel coverModel = new CoverModel();
        coverModel.setUniqueId(uUIDUtils.shortUUID());
        coverModel.setTitle(fileUtils.getFileBaseName(title));
        coverModel.setCategoryId("CUSTOM");
        coverModel.setContentPageId(bean.getReaderPageInfo().getPageId());
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(templateResourceModel.getUniqueId());
        coverModel.setResourceIdList(mutableListOf);
        coverModel.setSource(1);
        coverModel.setOrientation(RectKt.getOrientation(pageOriginSize).getValue());
        coverModel.setTemplateResourceWrapper(new TemplateResourceWrapper());
        coverModel.getTemplateResourceWrapper().setTemplateUniqueId(TemplateResourceWrapper.INSTANCE.generateResourceId(coverModel.getCategoryId(), coverModel.getUniqueId()));
        TemplateResourceWrapper templateResourceWrapper = coverModel.getTemplateResourceWrapper();
        mutableListOf2 = CollectionsKt__CollectionsKt.mutableListOf(templateResourceModel);
        templateResourceWrapper.setResourceList(mutableListOf2);
        coverModel.setSizeFormat(SizeFormat.CUSTOM.name());
        CoverProvider coverProvider = KSyncBundle.INSTANCE.getDbProviderBundle().getCoverProvider(ProviderInfoUtils.INSTANCE.getUserDataProviderInfo(AccountDataBundle.INSTANCE.getSyncUserId()));
        coverProvider.save(coverModel);
        CoverProvider.saveTemplateResourceList$default(coverProvider, coverModel.getTemplateResourceWrapper().getResourceList(), false, 2, null);
        DocCollectionBundle.INSTANCE.postEvent(new ImportCustomCoverEvent());
        return coverModel;
    }

    public final void setList(@NotNull List<TemplateFileBean> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.list = list;
    }
}
