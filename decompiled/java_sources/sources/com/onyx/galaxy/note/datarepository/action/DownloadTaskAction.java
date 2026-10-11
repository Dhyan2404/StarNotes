package com.onyx.galaxy.note.datarepository.action;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
import com.onyx.galaxy.note.datarepository.action.DownloadTaskAction;
import com.onyx.galaxy.note.datarepository.bean.AttachmentBean;
import com.onyx.galaxy.note.datarepository.bean.LibraryBean;
import com.onyx.galaxy.note.datarepository.download.DataRepositoryManager;
import com.onyx.galaxy.note.datarepository.download.DownloadTask;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\u0004¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0014\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\t\u001a\u00020\u0007H\u0002R\u0017\u0010\u000f\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;", "data", "", "Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;", "m", "task", GoogleApiAvailabilityLight.f29016b, "e", "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;", "getLibraryBean", "()Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;", "libraryBean", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDownloadTaskAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadTaskAction.kt\ncom/onyx/galaxy/note/datarepository/action/DownloadTaskAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,55:1\n1855#2,2:56\n*S KotlinDebug\n*F\n+ 1 DownloadTaskAction.kt\ncom/onyx/galaxy/note/datarepository/action/DownloadTaskAction\n*L\n40#1:56,2\n*E\n"})
/* loaded from: classes9.dex */
public final class DownloadTaskAction extends RxBaseAction<DownloadTaskAction> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final LibraryBean libraryBean;

    /* renamed from: com.onyx.galaxy.note.datarepository.action.DownloadTaskAction$a */
    /* loaded from: classes9.dex */
    public static final class C11734a<T> implements Consumer {
        public C11734a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull DownloadTaskAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DataRepositoryManager.INSTANCE.deleteLibrary(DownloadTaskAction.this.getLibraryBean().getId());
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.DownloadTaskAction$b */
    /* loaded from: classes9.dex */
    public static final class C11735b<T, R> implements Function {
        public C11735b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<DownloadTask> apply(@NotNull DownloadTaskAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DownloadTaskAction downloadTaskAction = DownloadTaskAction.this;
            return downloadTaskAction.m45430m(downloadTaskAction.getLibraryBean());
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.DownloadTaskAction$c */
    /* loaded from: classes9.dex */
    public static final class C11736c<T, R> implements Function {

        /* renamed from: e */
        public static final C11736c<T, R> f57996e = new C11736c<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends DownloadTask> apply(@NotNull List<DownloadTask> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Observable.fromIterable(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.DownloadTaskAction$d */
    /* loaded from: classes9.dex */
    public static final class C11737d<T, R> implements Function {
        public C11737d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull DownloadTask it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DownloadTaskAction.this.m45431n(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.DownloadTaskAction$e */
    /* loaded from: classes9.dex */
    public static final class C11738e<T, R> implements Function {
        public C11738e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DownloadTaskAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DownloadTaskAction.this;
        }
    }

    public DownloadTaskAction(@NotNull LibraryBean libraryBean) {
        Intrinsics.checkNotNullParameter(libraryBean, "libraryBean");
        this.libraryBean = libraryBean;
    }

    /* renamed from: o */
    public static final void m45429o(DownloadTask task) {
        Intrinsics.checkNotNullParameter(task, "$task");
        DataRepositoryManager.INSTANCE.saveDownloadRecord(task);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<DownloadTaskAction> create() {
        Observable concatMap = Observable.just(this).observeOn(Schedulers.m61350io()).doOnNext(new C11734a()).map(new C11735b()).flatMap(C11736c.f57996e).concatMap(new C11737d());
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        Observable<DownloadTaskAction> map = RxjavaKt.takeLastOne(concatMap).map(new C11738e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final LibraryBean getLibraryBean() {
        return this.libraryBean;
    }

    /* renamed from: m */
    public final List<DownloadTask> m45430m(LibraryBean data) {
        String id = data.getId();
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        String libraryDirPath = DataRepositoryManager.INSTANCE.getLibraryDirPath();
        for (AttachmentBean attachmentBean : data.getAttachments()) {
            String computeMD5 = FileUtils.INSTANCE.computeMD5(attachmentBean.getValue());
            if (StringKt.isNotBlank(computeMD5)) {
                hashMap.put(computeMD5, new ProgressInfo());
                arrayList.add(new DownloadTask(libraryDirPath, id, attachmentBean));
            }
        }
        return arrayList;
    }

    /* renamed from: n */
    public final Observable<?> m45431n(final DownloadTask task) {
        Observable<ProgressInfo> doOnComplete = task.startTask().doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.ogf
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                DownloadTaskAction.m45429o(DownloadTask.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnComplete, "doOnComplete(...)");
        return doOnComplete;
    }
}
