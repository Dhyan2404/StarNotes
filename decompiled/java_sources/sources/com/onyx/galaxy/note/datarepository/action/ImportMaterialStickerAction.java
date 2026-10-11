package com.onyx.galaxy.note.datarepository.action;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.sticker.data.StickerValues;
import com.onyx.android.sdk.replicator.sticker.model.StickerCategoryModel;
import com.onyx.android.sdk.replicator.sticker.model.StickerModel;
import com.onyx.android.sdk.replicator.sticker.model.StickerModelKt;
import com.onyx.android.sdk.replicator.sticker.p038db.StickerProvider;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.galaxy.note.category.data.TemplateFileBean;
import com.onyx.galaxy.note.datarepository.bean.AttachmentBean;
import com.onyx.galaxy.note.datarepository.bean.LibraryBean;
import com.onyx.galaxy.note.datarepository.event.StickerChangeEvent;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B%\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0006\u0010\u0017\u001a\u00020\u0014\u0012\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00060\u0018¢\u0006\u0004\b \u0010!J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\f\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0002J \u0010\u0010\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\nH\u0002J\u0018\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\bH\u0002R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u001d\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00060\u00188\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c¨\u0006\""}, m61528d2 = {"Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "m", "Lcom/onyx/galaxy/note/category/data/TemplateFileBean;", "template", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;", C4921e.f26528e, "", "tempPath", "l", "tempId", "tempName", "tempFormat", GoogleApiAvailabilityLight.f29016b, "sticker", "p", "q", "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;", C6999h.f39688c, "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;", "library", "", "i", "Ljava/util/List;", "getTemplateFiles", "()Ljava/util/List;", "templateFiles", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ImportMaterialStickerAction extends RxBaseAppAction<ImportMaterialStickerAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final LibraryBean library;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final List<TemplateFileBean> templateFiles;

    /* renamed from: com.onyx.galaxy.note.datarepository.action.ImportMaterialStickerAction$a */
    /* loaded from: classes9.dex */
    public static final class C11751a<T> implements Consumer {
        public C11751a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ImportMaterialStickerAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImportMaterialStickerAction.this.m45458m();
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.ImportMaterialStickerAction$b */
    /* loaded from: classes9.dex */
    public static final class C11752b<T, R> implements Function {
        public C11752b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends TemplateFileBean> apply(@NotNull ImportMaterialStickerAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Observable.fromIterable(ImportMaterialStickerAction.this.getTemplateFiles());
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.ImportMaterialStickerAction$c */
    /* loaded from: classes9.dex */
    public static final class C11753c<T, R> implements Function {
        public C11753c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends StickerModel> apply(@NotNull TemplateFileBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ImportMaterialStickerAction.this.m45460o(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.ImportMaterialStickerAction$d */
    /* loaded from: classes9.dex */
    public static final class C11754d<T, R> implements Function {
        public C11754d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ImportMaterialStickerAction apply(@NotNull StickerModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ImportMaterialStickerAction.this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.ImportMaterialStickerAction$e */
    /* loaded from: classes9.dex */
    public static final class C11755e<T> implements Consumer {

        /* renamed from: e */
        public static final C11755e<T> f58023e = new C11755e<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ImportMaterialStickerAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GlobalBundle.INSTANCE.postEvent(new StickerChangeEvent());
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.ImportMaterialStickerAction$f */
    /* loaded from: classes9.dex */
    public static final class C11756f<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ String f58025f;

        public C11756f(String str) {
            this.f58025f = str;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull TemplateFileBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImportMaterialStickerAction.this.m45457l(it2, this.f58025f);
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.ImportMaterialStickerAction$g */
    /* loaded from: classes9.dex */
    public static final class C11757g<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ String f58027f;

        /* renamed from: g */
        public final /* synthetic */ String f58028g;

        /* renamed from: h */
        public final /* synthetic */ String f58029h;

        public C11757g(String str, String str2, String str3) {
            this.f58027f = str;
            this.f58028g = str2;
            this.f58029h = str3;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StickerModel apply(@NotNull TemplateFileBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ImportMaterialStickerAction.this.m45459n(this.f58027f, this.f58028g, this.f58029h);
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.ImportMaterialStickerAction$h */
    /* loaded from: classes9.dex */
    public static final class C11758h<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ String f58031f;

        public C11758h(String str) {
            this.f58031f = str;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StickerModel apply(@NotNull StickerModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ImportMaterialStickerAction.this.m45461p(it2, this.f58031f);
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.ImportMaterialStickerAction$i */
    /* loaded from: classes9.dex */
    public static final class C11759i<T, R> implements Function {
        public C11759i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StickerModel apply(@NotNull StickerModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ImportMaterialStickerAction.this.m45462q(it2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImportMaterialStickerAction(@NotNull EditorBundle editorBundle, @NotNull LibraryBean library, @NotNull List<TemplateFileBean> templateFiles) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(library, "library");
        Intrinsics.checkNotNullParameter(templateFiles, "templateFiles");
        this.library = library;
        this.templateFiles = templateFiles;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ImportMaterialStickerAction> create() {
        Observable concatMap = Observable.just(this).observeOn(Schedulers.m61350io()).doOnNext(new C11751a()).concatMap(new C11752b()).concatMap(new C11753c());
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        Observable<ImportMaterialStickerAction> doOnNext = RxjavaKt.takeLastOne(concatMap).map(new C11754d()).doOnNext(C11755e.f58023e);
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    @NotNull
    public final List<TemplateFileBean> getTemplateFiles() {
        return this.templateFiles;
    }

    /* renamed from: l */
    public final void m45457l(TemplateFileBean template, String tempPath) {
        FileUtils fileUtils = FileUtils.INSTANCE;
        fileUtils.ensureFileExists(tempPath);
        fileUtils.copyInputStreamToFile(ResManager.INSTANCE.getAppContext().getContentResolver().openInputStream(template.getUri()), new File(tempPath));
    }

    /* renamed from: m */
    public final void m45458m() {
        StickerProvider userStickerProvider = KSyncBundle.INSTANCE.getUserStickerProvider();
        StickerCategoryModel stickerCategoryModel = new StickerCategoryModel();
        stickerCategoryModel.setUniqueId(this.library.getId());
        stickerCategoryModel.setName(this.library.getDefaultName());
        stickerCategoryModel.setTitleList(this.library.getGroupName());
        stickerCategoryModel.setType(4);
        stickerCategoryModel.setParentUniqueId(StickerValues.CATEGORY_TYPE_MATERIALS_ID);
        for (final StickerModel stickerModel : userStickerProvider.loadStickerByCategory(stickerCategoryModel.getUniqueId())) {
            userStickerProvider.deleteRelationByStickerId(stickerModel.getUniqueId());
            if (!CollectionKt.contains(this.library.getAttachments(), new Function1<AttachmentBean, Boolean>() { // from class: com.onyx.galaxy.note.datarepository.action.ImportMaterialStickerAction$ensureStickerCategoryModel$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull AttachmentBean it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.valueOf(Intrinsics.areEqual(it2.getUniqueId(), StickerModel.this.getUniqueId()));
                }
            })) {
                userStickerProvider.deleteSticker(stickerModel);
            }
        }
        KSyncBundle.INSTANCE.getUserStickerProvider().addCategory(stickerCategoryModel);
    }

    /* renamed from: n */
    public final StickerModel m45459n(String tempId, String tempName, String tempFormat) {
        StickerModel stickerModel = new StickerModel();
        stickerModel.setName(tempName);
        stickerModel.setUniqueId(tempId);
        stickerModel.setType(4);
        stickerModel.setFormat(tempFormat);
        stickerModel.ensureUniqueIdExist();
        stickerModel.setImageUrl(StickerModelKt.getSavedFile(stickerModel));
        return stickerModel;
    }

    /* renamed from: o */
    public final Observable<StickerModel> m45460o(TemplateFileBean template) {
        String id = template.getId();
        String str = '.' + template.getFormat();
        String str2 = UUIDUtils.INSTANCE.shortUUID() + str;
        Path path = Paths.get(StickerValues.INSTANCE.getLocalCacheDir(), (String[]) Arrays.copyOf(new String[]{str2}, 1));
        Intrinsics.checkNotNullExpressionValue(path, "get(...)");
        String obj = path.toString();
        Observable<StickerModel> map = Observable.just(template).observeOn(Schedulers.m61350io()).doOnNext(new C11756f(obj)).map(new C11757g(id, str2, str)).map(new C11758h(obj)).map(new C11759i());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: p */
    public final StickerModel m45461p(StickerModel sticker, String tempPath) {
        String savedFile = StickerModelKt.getSavedFile(sticker);
        File file = new File(savedFile);
        if (file.exists()) {
            onyx.org.apache.commons.io.FileUtils.delete(file);
        }
        onyx.org.apache.commons.io.FileUtils.moveFile(new File(tempPath), new File(savedFile));
        return sticker;
    }

    /* renamed from: q */
    public final StickerModel m45462q(StickerModel sticker) {
        KSyncBundle.INSTANCE.getUserStickerProvider().addSticker(sticker, this.library.getId());
        return sticker;
    }
}
