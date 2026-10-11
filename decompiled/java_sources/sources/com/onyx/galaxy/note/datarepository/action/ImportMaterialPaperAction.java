package com.onyx.galaxy.note.datarepository.action;

import android.graphics.RectF;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.data.template.TemplateResourceConstant;
import com.onyx.android.sdk.data.common.path.TemplatePaths;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.bean.SizeFormat;
import com.onyx.android.sdk.replicator.note.bean.TemplateResourceWrapper;
import com.onyx.android.sdk.replicator.note.p035db.TemplateProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateCategoryModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
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

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B%\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u0012\u001a\u00020\r\u0012\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00130\u0006¢\u0006\u0004\b\u001b\u0010\u001cJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u00062\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u0010\u0010\f\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0007H\u0002R\u0017\u0010\u0012\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u001d\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00130\u00068\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialPaperAction;", "Lcom/onyx/galaxy/note/datarepository/action/BaseMaterialAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "m", "", "Lcom/onyx/galaxy/note/category/data/TemplateImportBean;", "list", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "l", "bean", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;", C6999h.f39688c, "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;", "getLibrary", "()Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;", "library", "Lcom/onyx/galaxy/note/category/data/TemplateFileBean;", "i", "Ljava/util/List;", "getTemplateFiles", "()Ljava/util/List;", "templateFiles", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nImportMaterialPaperAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImportMaterialPaperAction.kt\ncom/onyx/galaxy/note/datarepository/action/ImportMaterialPaperAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,112:1\n1549#2:113\n1620#2,3:114\n*S KotlinDebug\n*F\n+ 1 ImportMaterialPaperAction.kt\ncom/onyx/galaxy/note/datarepository/action/ImportMaterialPaperAction\n*L\n72#1:113\n72#1:114,3\n*E\n"})
/* loaded from: classes9.dex */
public final class ImportMaterialPaperAction extends BaseMaterialAction<ImportMaterialPaperAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final LibraryBean library;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final List<TemplateFileBean> templateFiles;

    /* renamed from: com.onyx.galaxy.note.datarepository.action.ImportMaterialPaperAction$a */
    /* loaded from: classes9.dex */
    public static final class C11746a<T, R> implements Function {
        public C11746a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SaveFilesAsCustomTemplateAction> apply(@NotNull ImportMaterialPaperAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new SaveFilesAsCustomTemplateAction(ImportMaterialPaperAction.this.getEditorBundle(), ImportMaterialPaperAction.this.getTemplateFiles(), TemplatePaths.INSTANCE.appUserNoteTemplateResDir(AccountDataBundle.INSTANCE.getSyncUserId()).toAbsolutePath().toString()).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.ImportMaterialPaperAction$b */
    /* loaded from: classes9.dex */
    public static final class C11747b<T> implements Consumer {
        public C11747b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SaveFilesAsCustomTemplateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImportMaterialPaperAction.this.m45450m();
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.ImportMaterialPaperAction$c */
    /* loaded from: classes9.dex */
    public static final class C11748c<T, R> implements Function {
        public C11748c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<TemplateModel> apply(@NotNull SaveFilesAsCustomTemplateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ImportMaterialPaperAction.this.m45449l(it2.getBeanList());
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.ImportMaterialPaperAction$d */
    /* loaded from: classes9.dex */
    public static final class C11749d<T, R> implements Function {
        public C11749d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ImportMaterialPaperAction apply(@NotNull List<TemplateModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ImportMaterialPaperAction.this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.ImportMaterialPaperAction$e */
    /* loaded from: classes9.dex */
    public static final class C11750e<T> implements Consumer {

        /* renamed from: e */
        public static final C11750e<T> f58016e = new C11750e<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ImportMaterialPaperAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GlobalBundle.INSTANCE.postEvent(new TemplateChangeEvent());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImportMaterialPaperAction(@NotNull EditorBundle editorBundle, @NotNull LibraryBean library, @NotNull List<TemplateFileBean> templateFiles) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(library, "library");
        Intrinsics.checkNotNullParameter(templateFiles, "templateFiles");
        this.library = library;
        this.templateFiles = templateFiles;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ImportMaterialPaperAction> create() {
        Observable map = Observable.just(this).flatMap(new C11746a()).observeOn(TemplateManagerBundle.INSTANCE.getObserveOn()).doOnNext(new C11747b()).map(new C11748c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        Observable<ImportMaterialPaperAction> doOnNext = RxjavaKt.takeLastOne(map).map(new C11749d()).doOnNext(C11750e.f58016e);
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
    public final List<TemplateModel> m45449l(List<TemplateImportBean> list) {
        int collectionSizeOrDefault;
        List<TemplateImportBean> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(m45451n((TemplateImportBean) it2.next()));
        }
        return arrayList;
    }

    /* renamed from: m */
    public final void m45450m() {
        List mutableListOf;
        TemplateProvider userTemplateProvider = KSyncBundle.INSTANCE.getUserTemplateProvider();
        TemplateCategoryModel templateCategoryModel = new TemplateCategoryModel();
        templateCategoryModel.setSource(3);
        templateCategoryModel.setTitle(this.library.getDefaultName());
        templateCategoryModel.setUniqueId(this.library.getId());
        templateCategoryModel.setTitleList(this.library.getGroupName());
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(templateCategoryModel);
        TemplateProvider.saveTemplateCategoryList$default(userTemplateProvider, mutableListOf, false, 2, null);
        userTemplateProvider.removeTemplateByCategory(this.library.getId());
    }

    /* renamed from: n */
    public final TemplateModel m45451n(TemplateImportBean bean) {
        List<String> mutableListOf;
        List<TemplateResourceModel> mutableListOf2;
        TemplateModel templateModel = new TemplateModel();
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
        String id = bean.getId();
        if (id == null) {
            id = uUIDUtils.shortUUID();
        }
        templateModel.setUniqueId(id);
        templateModel.setTitle(bean.getTitle());
        templateModel.setTitleList(bean.getTitleList());
        templateModel.setCategoryId(this.library.getId());
        templateModel.setContentPageId(bean.getReaderPageInfo().getPageId());
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(templateResourceModel.getUniqueId());
        templateModel.setResourceIdList(mutableListOf);
        templateModel.setSource(3);
        templateModel.setOrientation(RectKt.getOrientation(pageOriginSize).getValue());
        templateModel.setTemplateResourceWrapper(new TemplateResourceWrapper());
        templateModel.getTemplateResourceWrapper().setTemplateUniqueId(TemplateResourceWrapper.INSTANCE.generateResourceId(templateModel.getCategoryId(), templateModel.getUniqueId()));
        TemplateResourceWrapper templateResourceWrapper = templateModel.getTemplateResourceWrapper();
        mutableListOf2 = CollectionsKt__CollectionsKt.mutableListOf(templateResourceModel);
        templateResourceWrapper.setResourceList(mutableListOf2);
        templateModel.setSizeFormat(SizeFormat.CUSTOM.name());
        TemplateProvider userTemplateProvider = KSyncBundle.INSTANCE.getUserTemplateProvider();
        TemplateProvider.saveTemplateResourceList$default(userTemplateProvider, templateModel.getTemplateResourceWrapper().getResourceList(), false, 2, null);
        userTemplateProvider.saveTemplate(templateModel);
        return templateModel;
    }
}
