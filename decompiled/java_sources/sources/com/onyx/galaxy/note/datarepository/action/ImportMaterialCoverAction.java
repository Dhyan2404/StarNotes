package com.onyx.galaxy.note.datarepository.action;

import android.graphics.RectF;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.data.template.TemplateResourceConstant;
import com.onyx.android.sdk.data.common.path.CoverPaths;
import com.onyx.android.sdk.data.common.path.TemplatePaths;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.bean.SizeFormat;
import com.onyx.android.sdk.replicator.note.bean.TemplateResourceWrapper;
import com.onyx.android.sdk.replicator.note.p035db.CoverProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverCategoryModel;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateResourceModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.data.TemplateManagerBundle;
import com.onyx.galaxy.note.category.action.p127import.SaveFilesAsCustomTemplateAction;
import com.onyx.galaxy.note.category.data.TemplateFileBean;
import com.onyx.galaxy.note.category.data.TemplateImportBean;
import com.onyx.galaxy.note.datarepository.bean.LibraryBean;
import com.onyx.galaxy.note.datarepository.event.TemplateChangeEvent;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B%\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u0012\u001a\u00020\r\u0012\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00130\u0004¢\u0006\u0004\b\u001b\u0010\u001cJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u001c\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\b\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\f\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0005H\u0002R\u0017\u0010\u0012\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u001d\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00130\u00048\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialCoverAction;", "Lcom/onyx/galaxy/note/datarepository/action/BaseMaterialAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/galaxy/note/category/data/TemplateImportBean;", "list", "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", "l", "", "m", "bean", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;", C6999h.f39688c, "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;", "getLibrary", "()Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;", "library", "Lcom/onyx/galaxy/note/category/data/TemplateFileBean;", "i", "Ljava/util/List;", "getTemplateFiles", "()Ljava/util/List;", "templateFiles", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nImportMaterialCoverAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImportMaterialCoverAction.kt\ncom/onyx/galaxy/note/datarepository/action/ImportMaterialCoverAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,110:1\n1549#2:111\n1620#2,3:112\n*S KotlinDebug\n*F\n+ 1 ImportMaterialCoverAction.kt\ncom/onyx/galaxy/note/datarepository/action/ImportMaterialCoverAction\n*L\n63#1:111\n63#1:112,3\n*E\n"})
/* loaded from: classes9.dex */
public final class ImportMaterialCoverAction extends BaseMaterialAction<ImportMaterialCoverAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final LibraryBean library;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final List<TemplateFileBean> templateFiles;

    /* renamed from: com.onyx.galaxy.note.datarepository.action.ImportMaterialCoverAction$a */
    /* loaded from: classes9.dex */
    public static final class C11741a<T, R> implements Function {
        public C11741a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SaveFilesAsCustomTemplateAction> apply(@NotNull ImportMaterialCoverAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new SaveFilesAsCustomTemplateAction(ImportMaterialCoverAction.this.getEditorBundle(), ImportMaterialCoverAction.this.getTemplateFiles(), CoverPaths.INSTANCE.appCurUserNoteCoverResDir().toAbsolutePath().toString()).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.ImportMaterialCoverAction$b */
    /* loaded from: classes9.dex */
    public static final class C11742b<T> implements Consumer {
        public C11742b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SaveFilesAsCustomTemplateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImportMaterialCoverAction.this.m45442m();
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.ImportMaterialCoverAction$c */
    /* loaded from: classes9.dex */
    public static final class C11743c<T, R> implements Function {
        public C11743c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<CoverModel> apply(@NotNull SaveFilesAsCustomTemplateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ImportMaterialCoverAction.this.m45441l(it2.getBeanList());
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.ImportMaterialCoverAction$d */
    /* loaded from: classes9.dex */
    public static final class C11744d<T, R> implements Function {
        public C11744d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ImportMaterialCoverAction apply(@NotNull List<CoverModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ImportMaterialCoverAction.this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.ImportMaterialCoverAction$e */
    /* loaded from: classes9.dex */
    public static final class C11745e<T> implements Consumer {

        /* renamed from: e */
        public static final C11745e<T> f58009e = new C11745e<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ImportMaterialCoverAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GlobalBundle.INSTANCE.postEvent(new TemplateChangeEvent());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImportMaterialCoverAction(@NotNull EditorBundle editorBundle, @NotNull LibraryBean library, @NotNull List<TemplateFileBean> templateFiles) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(library, "library");
        Intrinsics.checkNotNullParameter(templateFiles, "templateFiles");
        this.library = library;
        this.templateFiles = templateFiles;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ImportMaterialCoverAction> create() {
        if (this.templateFiles.isEmpty()) {
            Observable<ImportMaterialCoverAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable map = Observable.just(this).flatMap(new C11741a()).observeOn(TemplateManagerBundle.INSTANCE.getObserveOn()).doOnNext(new C11742b()).map(new C11743c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        Observable<ImportMaterialCoverAction> doOnNext = RxjavaKt.takeLastOne(map).map(new C11744d()).doOnNext(C11745e.f58009e);
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    @NotNull
    public final LibraryBean getLibrary() {
        return this.library;
    }

    @NotNull
    public final List<TemplateFileBean> getTemplateFiles() {
        return this.templateFiles;
    }

    /* renamed from: l */
    public final List<CoverModel> m45441l(List<TemplateImportBean> list) {
        int collectionSizeOrDefault;
        List<TemplateImportBean> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(m45443n((TemplateImportBean) it2.next()));
        }
        return arrayList;
    }

    /* renamed from: m */
    public final void m45442m() {
        List mutableListOf;
        CoverProvider userCoverProvider = KSyncBundle.INSTANCE.getUserCoverProvider();
        CoverCategoryModel coverCategoryModel = new CoverCategoryModel();
        coverCategoryModel.setSource(3);
        coverCategoryModel.setTitle(this.library.getDefaultName());
        coverCategoryModel.setUniqueId(this.library.getId());
        coverCategoryModel.setTitleList(this.library.getGroupName());
        userCoverProvider.removeCoverByCategory(this.library.getId());
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(coverCategoryModel);
        CoverProvider.saveCoverCategoryList$default(userCoverProvider, mutableListOf, false, 2, null);
    }

    /* renamed from: n */
    public final CoverModel m45443n(TemplateImportBean bean) {
        List<String> mutableListOf;
        List<TemplateResourceModel> mutableListOf2;
        RectF pageOriginSize = bean.getReaderPageInfo().getPageOriginSize();
        TemplateResourceModel templateResourceModel = new TemplateResourceModel();
        UUIDUtils uUIDUtils = UUIDUtils.INSTANCE;
        templateResourceModel.setUniqueId(uUIDUtils.shortUUID());
        templateResourceModel.setSource(3);
        templateResourceModel.setRelativePath(TemplatePaths.INSTANCE.templateResRelativePath(bean.getReaderPageInfo().getPath()));
        templateResourceModel.setResourceType(TemplateResourceConstant.INSTANCE.getResourceType(FileUtils.INSTANCE.getFileName(bean.getReaderPageInfo().getPath())));
        templateResourceModel.setThumbnailRelativePath(bean.getThumbnailRelativePath());
        templateResourceModel.setResRect(RectFKt.copy(bean.getReaderPageInfo().getPageOriginSize()));
        templateResourceModel.setFillColor(loadResourceColor(bean.getThumbnailRelativePath()));
        CoverModel coverModel = new CoverModel();
        String id = bean.getId();
        if (id == null) {
            id = uUIDUtils.shortUUID();
        }
        coverModel.setUniqueId(id);
        coverModel.setTitle(bean.getTitle());
        coverModel.setTitleList(bean.getTitleList());
        coverModel.setContentPageId(bean.getReaderPageInfo().getPageId());
        coverModel.setCategoryId(this.library.getId());
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(templateResourceModel.getUniqueId());
        coverModel.setResourceIdList(mutableListOf);
        coverModel.setSource(3);
        coverModel.setOrientation(RectKt.getOrientation(pageOriginSize).getValue());
        coverModel.setTemplateResourceWrapper(new TemplateResourceWrapper());
        coverModel.getTemplateResourceWrapper().setTemplateUniqueId(TemplateResourceWrapper.INSTANCE.generateResourceId(coverModel.getCategoryId(), coverModel.getUniqueId()));
        TemplateResourceWrapper templateResourceWrapper = coverModel.getTemplateResourceWrapper();
        mutableListOf2 = CollectionsKt__CollectionsKt.mutableListOf(templateResourceModel);
        templateResourceWrapper.setResourceList(mutableListOf2);
        coverModel.setSizeFormat(SizeFormat.CUSTOM.name());
        CoverProvider userCoverProvider = KSyncBundle.INSTANCE.getUserCoverProvider();
        CoverProvider.saveTemplateResourceList$default(userCoverProvider, coverModel.getTemplateResourceWrapper().getResourceList(), false, 2, null);
        userCoverProvider.save(coverModel);
        return coverModel;
    }
}
