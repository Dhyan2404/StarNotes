package com.onyx.galaxy.note.datarepository.action;

import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
import com.onyx.galaxy.note.datarepository.bean.AttachmentBean;
import com.onyx.galaxy.note.datarepository.bean.LibraryBean;
import com.onyx.galaxy.note.datarepository.download.DownloadTask;
import com.onyx.galaxy.note.datarepository.download.ShareResourceManager;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00020\u0001B\u0015\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\f0\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u001c\u0010\u0006\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00020\u0005H\u0014J\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002J$\u0010\u000b\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00020\u00052\u0006\u0010\n\u001a\u00020\bH\u0002R\u001d\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\f0\u00078\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lkotlin/Pair;", "Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;", "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;", "l", "task", "m", "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;", "e", "Ljava/util/List;", "getLibraryList", "()Ljava/util/List;", "libraryList", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDownloadShareResourceAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadShareResourceAction.kt\ncom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,51:1\n1855#2:52\n1855#2,2:53\n1856#2:55\n*S KotlinDebug\n*F\n+ 1 DownloadShareResourceAction.kt\ncom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction\n*L\n33#1:52\n35#1:53,2\n33#1:55\n*E\n"})
/* loaded from: classes9.dex */
public final class DownloadShareResourceAction extends RxBaseAction<Pair<? extends AttachmentBean, ? extends ProgressInfo>> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final List<LibraryBean> libraryList;

    /* renamed from: com.onyx.galaxy.note.datarepository.action.DownloadShareResourceAction$a */
    /* loaded from: classes9.dex */
    public static final class C11730a<T, R> implements Function {
        public C11730a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends DownloadTask> apply(@NotNull DownloadShareResourceAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Observable.fromIterable(DownloadShareResourceAction.this.m45422l());
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.DownloadShareResourceAction$b */
    /* loaded from: classes9.dex */
    public static final class C11731b<T, R> implements Function {
        public C11731b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Pair<AttachmentBean, ProgressInfo>> apply(@NotNull DownloadTask it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DownloadShareResourceAction.this.m45423m(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.DownloadShareResourceAction$c */
    /* loaded from: classes9.dex */
    public static final class C11732c<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ DownloadTask f57991e;

        public C11732c(DownloadTask downloadTask) {
            this.f57991e = downloadTask;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Pair<AttachmentBean, ProgressInfo> apply(@NotNull ProgressInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new Pair<>(this.f57991e.getAttachment(), it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.DownloadShareResourceAction$d */
    /* loaded from: classes9.dex */
    public static final class C11733d<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ DownloadTask f57992e;

        public C11733d(DownloadTask downloadTask) {
            this.f57992e = downloadTask;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Pair<AttachmentBean, ProgressInfo> apply(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new Pair<>(this.f57992e.getAttachment(), null);
        }
    }

    public DownloadShareResourceAction(@NotNull List<LibraryBean> libraryList) {
        Intrinsics.checkNotNullParameter(libraryList, "libraryList");
        this.libraryList = libraryList;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Pair<? extends AttachmentBean, ? extends ProgressInfo>> create() {
        Observable<Pair<? extends AttachmentBean, ? extends ProgressInfo>> flatMap = Observable.just(this).observeOn(Schedulers.m61350io()).flatMap(new C11730a()).flatMap(new C11731b());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @NotNull
    public final List<LibraryBean> getLibraryList() {
        return this.libraryList;
    }

    /* renamed from: l */
    public final List<DownloadTask> m45422l() {
        ArrayList arrayList = new ArrayList();
        String shareResourceDirPath = ShareResourceManager.INSTANCE.getShareResourceDirPath();
        for (LibraryBean libraryBean : this.libraryList) {
            String id = libraryBean.getId();
            for (AttachmentBean attachmentBean : libraryBean.getAttachments()) {
                if (StringKt.isNotBlank(FileUtils.INSTANCE.computeMD5(attachmentBean.getValue()))) {
                    arrayList.add(new DownloadTask(shareResourceDirPath, id, attachmentBean));
                }
            }
        }
        return arrayList;
    }

    /* renamed from: m */
    public final Observable<Pair<AttachmentBean, ProgressInfo>> m45423m(DownloadTask task) {
        Observable<Pair<AttachmentBean, ProgressInfo>> onErrorReturn = task.startTask().map(new C11732c(task)).onErrorReturn(new C11733d(task));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "onErrorReturn(...)");
        return onErrorReturn;
    }
}
