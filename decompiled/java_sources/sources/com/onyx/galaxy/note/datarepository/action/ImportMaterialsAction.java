package com.onyx.galaxy.note.datarepository.action;

import android.net.Uri;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.p035db.model.MaterialAddRecordModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.galaxy.note.category.data.TemplateFileBean;
import com.onyx.galaxy.note.datarepository.bean.AttachmentBean;
import com.onyx.galaxy.note.datarepository.bean.LibraryBean;
import com.onyx.galaxy.note.datarepository.download.DataRepositoryManager;
import com.onyx.galaxy.note.datarepository.event.DownloadEvent;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006¢\u0006\u0004\b\u0014\u0010\u0015J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\"\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\u001d\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00040\u00068\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;", "library", "", "Lcom/onyx/galaxy/note/category/data/TemplateFileBean;", "l", "templateFiles", "m", "", GoogleApiAvailabilityLight.f29016b, C6999h.f39688c, "Ljava/util/List;", "getLibraryList", "()Ljava/util/List;", "libraryList", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nImportMaterialsAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImportMaterialsAction.kt\ncom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,96:1\n1855#2:97\n1856#2:99\n36#3:98\n*S KotlinDebug\n*F\n+ 1 ImportMaterialsAction.kt\ncom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction\n*L\n51#1:97\n51#1:99\n60#1:98\n*E\n"})
/* loaded from: classes9.dex */
public final class ImportMaterialsAction extends RxBaseAppAction<ImportMaterialsAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<LibraryBean> libraryList;

    /* renamed from: com.onyx.galaxy.note.datarepository.action.ImportMaterialsAction$a */
    /* loaded from: classes9.dex */
    public static final class C11760a<T, R> implements Function {
        public C11760a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends LibraryBean> apply(@NotNull ImportMaterialsAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Observable.fromIterable(ImportMaterialsAction.this.getLibraryList());
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.ImportMaterialsAction$b */
    /* loaded from: classes9.dex */
    public static final class C11761b<T, R> implements Function {

        /* renamed from: com.onyx.galaxy.note.datarepository.action.ImportMaterialsAction$b$a */
        /* loaded from: classes9.dex */
        public static final class a<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ ImportMaterialsAction f58036e;

            /* renamed from: f */
            public final /* synthetic */ LibraryBean f58037f;

            public a(ImportMaterialsAction importMaterialsAction, LibraryBean libraryBean) {
                this.f58036e = importMaterialsAction;
                this.f58037f = libraryBean;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final List<TemplateFileBean> apply(@NotNull LibraryBean it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return this.f58036e.m45472l(this.f58037f);
            }
        }

        /* renamed from: com.onyx.galaxy.note.datarepository.action.ImportMaterialsAction$b$b */
        /* loaded from: classes9.dex */
        public static final class b<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ ImportMaterialsAction f58038e;

            /* renamed from: f */
            public final /* synthetic */ LibraryBean f58039f;

            public b(ImportMaterialsAction importMaterialsAction, LibraryBean libraryBean) {
                this.f58038e = importMaterialsAction;
                this.f58039f = libraryBean;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ObservableSource<? extends Object> apply(@NotNull List<TemplateFileBean> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return this.f58038e.m45473m(this.f58039f, it2);
            }
        }

        public C11761b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull LibraryBean library) {
            Intrinsics.checkNotNullParameter(library, "library");
            return Observable.just(library).observeOn(Schedulers.m61350io()).map(new a(ImportMaterialsAction.this, library)).flatMap(new b(ImportMaterialsAction.this, library));
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.ImportMaterialsAction$c */
    /* loaded from: classes9.dex */
    public static final class C11762c<T, R> implements Function {
        public C11762c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ImportMaterialsAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ImportMaterialsAction.this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.ImportMaterialsAction$d */
    /* loaded from: classes9.dex */
    public static final class C11763d<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ LibraryBean f58042f;

        public C11763d(LibraryBean libraryBean) {
            this.f58042f = libraryBean;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImportMaterialsAction.this.m45474n(this.f58042f);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImportMaterialsAction(@NotNull EditorBundle editorBundle, @NotNull List<LibraryBean> libraryList) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(libraryList, "libraryList");
        this.libraryList = libraryList;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ImportMaterialsAction> create() {
        if (this.libraryList.isEmpty()) {
            Observable<ImportMaterialsAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable concatMap = Observable.just(this).observeOn(Schedulers.m61350io()).flatMap(new C11760a()).concatMap(new C11761b());
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        Observable<ImportMaterialsAction> map = RxjavaKt.takeLastOne(concatMap).map(new C11762c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final List<LibraryBean> getLibraryList() {
        return this.libraryList;
    }

    /* renamed from: l */
    public final List<TemplateFileBean> m45472l(LibraryBean library) {
        Path path = Paths.get(DataRepositoryManager.INSTANCE.getLibraryDirPath(), (String[]) Arrays.copyOf(new String[]{String.valueOf(library.getId())}, 1));
        Intrinsics.checkNotNullExpressionValue(path, "get(...)");
        ArrayList arrayList = new ArrayList();
        for (AttachmentBean attachmentBean : library.getAttachments()) {
            String fileName = attachmentBean.getFileName();
            if (!(fileName.length() == 0)) {
                File file = com.onyx.android.sdk.base.extension.Paths.INSTANCE.append(path, fileName).toFile();
                if (file.exists()) {
                    TemplateFileBean.Companion companion = TemplateFileBean.INSTANCE;
                    Intrinsics.checkNotNull(file);
                    TemplateFileBean createTemplateFileBean$default = TemplateFileBean.Companion.createTemplateFileBean$default(companion, Uri.fromFile(file), null, null, 6, null);
                    createTemplateFileBean$default.setTitle(attachmentBean.getDefaultName());
                    createTemplateFileBean$default.setTitleList(attachmentBean.getDisplayName());
                    String format = attachmentBean.getFormat();
                    if (format == null) {
                        format = "";
                    }
                    createTemplateFileBean$default.setFormat(format);
                    createTemplateFileBean$default.setId(attachmentBean.getUniqueId());
                    arrayList.add(createTemplateFileBean$default);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: m */
    public final Observable<?> m45473m(LibraryBean library, List<TemplateFileBean> templateFiles) {
        Observable<ImportMaterialStickerAction> build;
        if (!Intrinsics.areEqual(library.getResourceType(), com.onyx.galaxy.note.datarepository.constants.Constants.RESOURCE_TYPE_TEMPLATE)) {
            if (Intrinsics.areEqual(library.getResourceType(), com.onyx.galaxy.note.datarepository.constants.Constants.RESOURCE_TYPE_STICKER)) {
                build = new ImportMaterialStickerAction(getEditorBundle(), library, templateFiles).build();
            }
            build = null;
        } else if (library.getType() == 3) {
            build = new ImportMaterialCoverAction(getEditorBundle(), library, templateFiles).build();
        } else {
            if (library.getType() == 2) {
                build = new ImportMaterialPaperAction(getEditorBundle(), library, templateFiles).build();
            }
            build = null;
        }
        if (build == null) {
            Observable<?> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<ImportMaterialStickerAction> doOnNext = build.doOnNext(new C11763d(library));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: n */
    public final void m45474n(LibraryBean library) {
        KSyncBundle.INSTANCE.getUserDataRepositoryProvider().saveMaterialAddRecord(new MaterialAddRecordModel(library.getId(), library.getResourceType(), library.getVersion()));
        GlobalBundle.INSTANCE.postEvent(new DownloadEvent(library.getId(), 100, 3));
    }
}
