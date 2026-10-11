package com.onyx.galaxy.note.datarepository.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
import com.onyx.galaxy.note.common.base.BaseViewModel;
import com.onyx.galaxy.note.datarepository.action.DownloadShareResourceAction;
import com.onyx.galaxy.note.datarepository.bean.AttachmentBean;
import com.onyx.galaxy.note.datarepository.bean.LibraryBean;
import com.onyx.galaxy.note.datarepository.bean.ShareResourceBean;
import com.onyx.galaxy.note.datarepository.bean.ShareResourceDownloadBean;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b&\u0010'J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J1\u0010\r\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022!\u0010\f\u001a\u001d\u0012\u0013\u0012\u00110\b¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\u00040\u0007J\u0006\u0010\u000e\u001a\u00020\u0004J\u0006\u0010\u0010\u001a\u00020\u000fJ\u0006\u0010\u0011\u001a\u00020\u000fJ\u0006\u0010\u0012\u001a\u00020\u000fJ\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R#\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\b0\u00148\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R#\u0010!\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u001c0\u001b8\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$¨\u0006("}, m61528d2 = {"Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;", "Lcom/onyx/galaxy/note/common/base/BaseViewModel;", "Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceBean;", "resource", "", "initData", "data", "Lkotlin/Function1;", "Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;", "Lkotlin/ParameterName;", "name", "attachmentBean", "progressCallback", "startDownload", "stopDownloadDisposable", "", "isAllDownloadFinished", "isAllDownloadsFailed", "hasFailedDownloads", "d", "", "Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;", "i", "Ljava/util/Map;", "getDownloadProgress", "()Ljava/util/Map;", "downloadProgress", "Landroidx/lifecycle/MutableLiveData;", "", "j", "Landroidx/lifecycle/MutableLiveData;", "getAttachmentData", "()Landroidx/lifecycle/MutableLiveData;", "attachmentData", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", C4921e.f26537n, "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "compositeDisposable", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nShareResourceViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShareResourceViewModel.kt\ncom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,81:1\n1726#2,3:82\n1726#2,3:85\n1747#2,3:88\n*S KotlinDebug\n*F\n+ 1 ShareResourceViewModel.kt\ncom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel\n*L\n52#1:82,3\n56#1:85,3\n60#1:88,3\n*E\n"})
/* loaded from: classes9.dex */
public final class ShareResourceViewModel extends BaseViewModel {

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Map<AttachmentBean, ShareResourceDownloadBean> downloadProgress = new LinkedHashMap();

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<List<ShareResourceDownloadBean>> attachmentData = new MutableLiveData<>();

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public CompositeDisposable compositeDisposable = new CompositeDisposable();

    @SourceDebugExtension({"SMAP\nShareResourceViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShareResourceViewModel.kt\ncom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel$initAttachmentData$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,81:1\n1855#2:82\n1855#2,2:83\n1856#2:85\n*S KotlinDebug\n*F\n+ 1 ShareResourceViewModel.kt\ncom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel$initAttachmentData$1\n*L\n67#1:82\n68#1:83,2\n67#1:85\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.datarepository.viewmodel.ShareResourceViewModel$a */
    /* loaded from: classes9.dex */
    public static final class C11771a<T> implements Consumer {
        public C11771a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ShareResourceBean it2) {
            List<ShareResourceDownloadBean> list;
            Intrinsics.checkNotNullParameter(it2, "it");
            List<LibraryBean> items = it2.getItems();
            ShareResourceViewModel shareResourceViewModel = ShareResourceViewModel.this;
            Iterator<T> it3 = items.iterator();
            while (it3.hasNext()) {
                for (AttachmentBean attachmentBean : ((LibraryBean) it3.next()).getAttachments()) {
                    if (StringKt.isNotBlank(FileUtils.INSTANCE.computeMD5(attachmentBean.getValue()))) {
                        shareResourceViewModel.getDownloadProgress().put(attachmentBean, new ShareResourceDownloadBean(attachmentBean, new ProgressInfo()));
                    }
                }
            }
            MutableLiveData<List<ShareResourceDownloadBean>> attachmentData = ShareResourceViewModel.this.getAttachmentData();
            list = CollectionsKt___CollectionsKt.toList(ShareResourceViewModel.this.getDownloadProgress().values());
            attachmentData.postValue(list);
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.viewmodel.ShareResourceViewModel$b */
    /* loaded from: classes9.dex */
    public static final class C11772b<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ Function1<ShareResourceDownloadBean, Unit> f58091f;

        /* JADX WARN: Multi-variable type inference failed */
        public C11772b(Function1<? super ShareResourceDownloadBean, Unit> function1) {
            this.f58091f = function1;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Pair<AttachmentBean, ProgressInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ShareResourceDownloadBean shareResourceDownloadBean = new ShareResourceDownloadBean(it2.getFirst(), it2.getSecond());
            ShareResourceViewModel.this.getDownloadProgress().put(it2.getFirst(), shareResourceDownloadBean);
            this.f58091f.invoke(shareResourceDownloadBean);
        }
    }

    /* renamed from: d */
    public final void m45572d(ShareResourceBean resource) {
        Observable doOnNext = Observable.just(resource).observeOn(Schedulers.m61350io()).doOnNext(new C11771a());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        RxjavaKt.subscribeWithDefault$default(doOnNext, null, null, null, 7, null);
    }

    @NotNull
    public final MutableLiveData<List<ShareResourceDownloadBean>> getAttachmentData() {
        return this.attachmentData;
    }

    @NotNull
    public final Map<AttachmentBean, ShareResourceDownloadBean> getDownloadProgress() {
        return this.downloadProgress;
    }

    public final boolean hasFailedDownloads() {
        Collection<ShareResourceDownloadBean> values = this.downloadProgress.values();
        if ((values instanceof Collection) && values.isEmpty()) {
            return false;
        }
        Iterator<T> it2 = values.iterator();
        while (it2.hasNext()) {
            if (((ShareResourceDownloadBean) it2.next()).isDownloadFailed()) {
                return true;
            }
        }
        return false;
    }

    public final void initData(@NotNull ShareResourceBean resource) {
        Intrinsics.checkNotNullParameter(resource, "resource");
        this.downloadProgress.clear();
        m45572d(resource);
    }

    public final boolean isAllDownloadFinished() {
        Collection<ShareResourceDownloadBean> values = this.downloadProgress.values();
        if ((values instanceof Collection) && values.isEmpty()) {
            return true;
        }
        Iterator<T> it2 = values.iterator();
        while (it2.hasNext()) {
            if (!((ShareResourceDownloadBean) it2.next()).isDownloadFinished()) {
                return false;
            }
        }
        return true;
    }

    public final boolean isAllDownloadsFailed() {
        Collection<ShareResourceDownloadBean> values = this.downloadProgress.values();
        if ((values instanceof Collection) && values.isEmpty()) {
            return true;
        }
        Iterator<T> it2 = values.iterator();
        while (it2.hasNext()) {
            if (!((ShareResourceDownloadBean) it2.next()).isDownloadFailed()) {
                return false;
            }
        }
        return true;
    }

    public final void startDownload(@NotNull ShareResourceBean data, @NotNull Function1<? super ShareResourceDownloadBean, Unit> progressCallback) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(progressCallback, "progressCallback");
        Observable<Pair<? extends AttachmentBean, ? extends ProgressInfo>> doOnNext = new DownloadShareResourceAction(data.getItems()).build().doOnNext(new C11772b(progressCallback));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        this.compositeDisposable.add(RxjavaKt.subscribeWithDefault$default(doOnNext, null, null, null, 7, null));
    }

    public final void stopDownloadDisposable() {
        this.compositeDisposable.dispose();
    }
}
