package com.onyx.galaxy.note.datarepository.action;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.FileKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.galaxy.note.category.action.p127import.ParseFileAction;
import com.onyx.galaxy.note.datarepository.bean.AttachmentBean;
import com.onyx.galaxy.note.datarepository.bean.LibraryBean;
import com.onyx.galaxy.note.datarepository.download.DataRepositoryManager;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.io.File;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0017\u0012\u0006\u0010\u0012\u001a\u00020\r\u0012\u0006\u0010\u0018\u001a\u00020\u0013¢\u0006\u0004\b\u0019\u0010\u001aJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0002H\u0002J\"\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0002H\u0002J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0006H\u0002R\u0017\u0010\u0012\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0018\u001a\u00020\u00138\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/galaxy/note/datarepository/action/CreateNoteAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Ljava/io/File;", "l", "files", "m", "file", "Landroid/net/Uri;", GoogleApiAvailabilityLight.f29016b, "Landroid/content/Context;", "e", "Landroid/content/Context;", "getActivityContext", "()Landroid/content/Context;", "activityContext", "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;", C6997f.f39671c, "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;", "getLibrary", "()Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;", "library", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCreateNoteAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateNoteAction.kt\ncom/onyx/galaxy/note/datarepository/action/CreateNoteAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,73:1\n1549#2:74\n1620#2,3:75\n766#2:78\n857#2,2:79\n1855#2,2:81\n1549#2:83\n1620#2,3:84\n*S KotlinDebug\n*F\n+ 1 CreateNoteAction.kt\ncom/onyx/galaxy/note/datarepository/action/CreateNoteAction\n*L\n47#1:74\n47#1:75,3\n48#1:78\n48#1:79,2\n49#1:81,2\n62#1:83\n62#1:84,3\n*E\n"})
/* loaded from: classes9.dex */
public final class CreateNoteAction extends RxBaseAction<List<? extends SyncNoteModel>> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Context activityContext;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final LibraryBean library;

    /* renamed from: com.onyx.galaxy.note.datarepository.action.CreateNoteAction$a */
    /* loaded from: classes9.dex */
    public static final class C11713a<T, R> implements Function {
        public C11713a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<File> apply(@NotNull CreateNoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateNoteAction.this.m45395l();
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.CreateNoteAction$b */
    /* loaded from: classes9.dex */
    public static final class C11714b<T, R> implements Function {
        public C11714b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<SyncNoteModel>> apply(@NotNull List<? extends File> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateNoteAction.this.m45396m(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.CreateNoteAction$c */
    /* loaded from: classes9.dex */
    public static final class C11715c<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ ParseFileAction f57966e;

        public C11715c(ParseFileAction parseFileAction) {
            this.f57966e = parseFileAction;
        }

        @NotNull
        /* renamed from: a */
        public final List<SyncNoteModel> m45400a(boolean z) {
            return this.f57966e.getImportModels();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m45400a(((Boolean) obj).booleanValue());
        }
    }

    public CreateNoteAction(@NotNull Context activityContext, @NotNull LibraryBean library) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        Intrinsics.checkNotNullParameter(library, "library");
        this.activityContext = activityContext;
        this.library = library;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<? extends SyncNoteModel>> create() {
        Observable concatMap = Observable.just(this).observeOn(Schedulers.m61350io()).map(new C11713a()).concatMap(new C11714b());
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        return RxjavaKt.takeLastOne(concatMap);
    }

    @NotNull
    public final Context getActivityContext() {
        return this.activityContext;
    }

    @NotNull
    public final LibraryBean getLibrary() {
        return this.library;
    }

    /* renamed from: l */
    public final List<File> m45395l() {
        int collectionSizeOrDefault;
        ArrayList arrayList = new ArrayList();
        Path path = Paths.get(DataRepositoryManager.INSTANCE.getLibraryDirPath(), (String[]) Arrays.copyOf(new String[]{String.valueOf(this.library.getId())}, 1));
        Intrinsics.checkNotNullExpressionValue(path, "get(...)");
        List<AttachmentBean> attachments = this.library.getAttachments();
        if (attachments != null) {
            List<AttachmentBean> list = attachments;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList2.add(((AttachmentBean) it2.next()).getFileName());
            }
            ArrayList arrayList3 = new ArrayList();
            for (Object obj : arrayList2) {
                if (StringKt.isNotBlank((String) obj)) {
                    arrayList3.add(obj);
                }
            }
            Iterator it3 = arrayList3.iterator();
            while (it3.hasNext()) {
                Path append = com.onyx.android.sdk.base.extension.Paths.INSTANCE.append(path, (String) it3.next());
                if (Files.exists(append, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
                    File file = append.toFile();
                    Intrinsics.checkNotNullExpressionValue(file, "toFile(...)");
                    arrayList.add(file);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: m */
    public final Observable<List<SyncNoteModel>> m45396m(List<? extends File> files) {
        int collectionSizeOrDefault;
        List emptyList;
        if (files.isEmpty()) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            Observable<List<SyncNoteModel>> just = Observable.just(emptyList);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Context context = this.activityContext;
        List<? extends File> list = files;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(m45397n((File) it2.next()));
        }
        ParseFileAction parseFileAction = new ParseFileAction(context, arrayList);
        Observable<List<SyncNoteModel>> map = RxjavaKt.takeLastOne(parseFileAction.build()).map(new C11715c(parseFileAction));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final Uri m45397n(File file) {
        return FileKt.toProviderUri(file, ResManager.INSTANCE.getAppContext());
    }
}
