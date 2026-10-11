package com.onyx.android.sdk.cloudstorage.provider.common.action.cloud;

import androidx.core.net.MailTo;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.audio.SilenceSkippingAudioProcessor;
import com.liulishuo.okdownload.DownloadTask;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.C7153R;
import com.onyx.android.sdk.cloudstorage.CloudStorageManager;
import com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction;
import com.onyx.android.sdk.cloudstorage.event.CloudStorageDownloadFileEvent;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.common.SyncStatus;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageRecordProvider;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileByUrlAction;
import com.onyx.android.sdk.data.common.download.OnyxDownloadManager;
import com.onyx.android.sdk.data.common.download.data.OnyxFileTransferStatus;
import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
import com.onyx.android.sdk.data.common.download.data.action.DownloadAction;
import com.onyx.android.sdk.data.common.exception.AbortException;
import com.onyx.android.sdk.data.common.exception.ContentException;
import com.sun.org.apache.bcel.internal.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.schedulers.Schedulers;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.io.File;
import java.net.ProtocolException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010%\n\u0002\b\u0007\b&\u0018\u0000 C2\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u00020\u0001:\u0001CB\u0015\u0012\f\u00105\u001a\b\u0012\u0004\u0012\u00020\u00040\u0002¢\u0006\u0004\bA\u0010BJ\u001c\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u001c\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0002J(\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u00062\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000b0\nH\u0002J>\u0010\u0012\u001a\u00020\u00112\u0012\u0010\u000f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u000e2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u001e\u0010\u0016\u001a\u00020\u00152\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u001e\u0010\u0019\u001a\u00020\u00152\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0018\u001a\u00020\u0017H\u0002J&\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00062\b\u0010\u001a\u001a\u0004\u0018\u00010\u000b2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00130\u0006H\u0002J\u0010\u0010\u001f\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u0004H\u0002J&\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0002J\u001e\u0010\"\u001a\u00020!2\u0014\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\nH\u0002J\u0010\u0010#\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0016\u0010$\u001a\u00020\u00152\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0002J\u0016\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010&\u001a\u00020!2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010'\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010(\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u001a\u0010)\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u00020\u0006H\u0016J\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00040\u0002J\u0010\u0010,\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0004H$J\u0010\u0010-\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004H$J\u001c\u0010.\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\u0018\u00101\u001a\u0002002\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010/\u001a\u00020\u000bH\u0014R\u001d\u00105\u001a\b\u0012\u0004\u0012\u00020\u00040\u00028\u0006¢\u0006\f\n\u0004\b\u0014\u00102\u001a\u0004\b3\u00104R\"\u0010<\u001a\u0002068\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b7\u0010\u0016\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R \u0010@\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00040=8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u0010?¨\u0006D"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;", "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;", "", "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fileBean", "Lio/reactivex/rxjava3/core/Observable;", "r", "status", "A", "Lkotlin/Pair;", "", "pair", "t", "Lio/reactivex/rxjava3/subjects/PublishSubject;", MailTo.f5529g, "downloadStatus", "Lio/reactivex/rxjava3/disposables/Disposable;", "u", "", "e", "", "I", "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;", "progressInfo", "B", "tag", "observable", "", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "cloudFileBean", "H", "z", "", "p", "E", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "s", "q", "F", "G", BaiduYunConstant.CREATE, "getCloudFileBeanList", "oldFileBean", "fetchFileInfoFromCloud", "queryDownloadLink", "queryFileLink", "url", "Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;", "createDownloadAction", "Ljava/util/List;", "getCloudFileBeans", "()Ljava/util/List;", "cloudFileBeans", "", C6997f.f39671c, "getRetryCount", "()I", "setRetryCount", "(I)V", "retryCount", "", C6998g.f39679a, "Ljava/util/Map;", "cloudFileBeanMap", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDownloadFileByUrlAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadFileByUrlAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,323:1\n1855#2,2:324\n*S KotlinDebug\n*F\n+ 1 DownloadFileByUrlAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction\n*L\n54#1:324,2\n*E\n"})
/* loaded from: classes7.dex */
public abstract class DownloadFileByUrlAction extends BaseCloudStorageAction<List<? extends OnyxFileTransferStatus<CloudFileBean>>> {

    /* renamed from: h */
    @NotNull
    public static final Map<String, String> f41435h = new LinkedHashMap();

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final List<CloudFileBean> cloudFileBeans;

    /* renamed from: f, reason: from kotlin metadata */
    public int retryCount;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Map<String, CloudFileBean> cloudFileBeanMap;

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileByUrlAction$a */
    /* loaded from: classes7.dex */
    public static final class C7241a<T, R> implements Function {
        public C7241a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends OnyxFileTransferStatus<CloudFileBean>> apply(@NotNull CloudFileBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DownloadFileByUrlAction.this.m32502r(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileByUrlAction$b */
    /* loaded from: classes7.dex */
    public static final class C7242b<T> implements Predicate {
        public C7242b() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull CloudFileBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !DownloadFileByUrlAction.this.m32501q(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileByUrlAction$c */
    /* loaded from: classes7.dex */
    public static final class C7243c<T, R> implements Function {
        public C7243c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileBean apply(@NotNull CloudFileBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DownloadFileByUrlAction.this.fetchFileInfoFromCloud(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileByUrlAction$d */
    /* loaded from: classes7.dex */
    public static final class C7244d<T> implements Consumer {
        public C7244d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CloudFileBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            if (StringKt.isNotBlank(it2.getCloudFilePath())) {
                Map map = DownloadFileByUrlAction.this.cloudFileBeanMap;
                String cloudFilePath = it2.getCloudFilePath();
                Intrinsics.checkNotNull(cloudFilePath);
                map.put(cloudFilePath, it2);
            }
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileByUrlAction$e */
    /* loaded from: classes7.dex */
    public static final class C7245e<T, R> implements Function {
        public C7245e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Pair<CloudFileBean, String> apply(@NotNull CloudFileBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DownloadFileByUrlAction.this.queryFileLink(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileByUrlAction$f */
    /* loaded from: classes7.dex */
    public static final class C7246f<T> implements Predicate {
        public C7246f() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull Pair<CloudFileBean, String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DownloadFileByUrlAction.this.m32500p(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileByUrlAction$g */
    /* loaded from: classes7.dex */
    public static final class C7247g<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ CloudFileBean f41446f;

        public C7247g(CloudFileBean cloudFileBean) {
            this.f41446f = cloudFileBean;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DownloadFileByUrlAction.this.m32495E(this.f41446f);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileByUrlAction$h */
    /* loaded from: classes7.dex */
    public static final class C7248h<T, R> implements Function {
        public C7248h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends OnyxFileTransferStatus<CloudFileBean>> apply(@NotNull Pair<CloudFileBean, String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DownloadFileByUrlAction.this.m32504t(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileByUrlAction$i */
    /* loaded from: classes7.dex */
    public static final class C7249i<T, R> implements Function {
        public C7249i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final OnyxFileTransferStatus<CloudFileBean> apply(@NotNull OnyxFileTransferStatus<CloudFileBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DownloadFileByUrlAction.this.m32491A(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileByUrlAction$j */
    /* loaded from: classes7.dex */
    public static final class C7250j<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ Pair<CloudFileBean, String> f41450f;

        public C7250j(Pair<CloudFileBean, String> pair) {
            this.f41450f = pair;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OnyxFileTransferStatus<DownloadTask> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DownloadFileByUrlAction.this.m32498H(this.f41450f.getFirst());
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileByUrlAction$k */
    /* loaded from: classes7.dex */
    public static final class C7251k<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Pair<CloudFileBean, String> f41451e;

        /* renamed from: f */
        public final /* synthetic */ DownloadFileByUrlAction f41452f;

        public C7251k(Pair<CloudFileBean, String> pair, DownloadFileByUrlAction downloadFileByUrlAction) {
            this.f41451e = pair;
            this.f41452f = downloadFileByUrlAction;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Disposable disposable) {
            Intrinsics.checkNotNullParameter(disposable, "disposable");
            if (StringKt.isNotBlank(this.f41451e.getFirst().getLocalFilePath())) {
                BaseCloudStorageProvider webDavProvider = this.f41452f.getWebDavProvider();
                String localFilePath = this.f41451e.getFirst().getLocalFilePath();
                Intrinsics.checkNotNull(localFilePath);
                webDavProvider.addTransferDisposable(localFilePath, disposable);
            }
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileByUrlAction$l */
    /* loaded from: classes7.dex */
    public static final class C7252l<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ Pair<CloudFileBean, String> f41454f;

        public C7252l(Pair<CloudFileBean, String> pair) {
            this.f41454f = pair;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<?> apply(@NotNull Observable<Throwable> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DownloadFileByUrlAction.this.m32494D(this.f41454f.getFirst().getUniqueId(), it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileByUrlAction$m */
    /* loaded from: classes7.dex */
    public static final class C7253m<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ OnyxFileTransferStatus<CloudFileBean> f41456f;

        public C7253m(OnyxFileTransferStatus<CloudFileBean> onyxFileTransferStatus) {
            this.f41456f = onyxFileTransferStatus;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OnyxFileTransferStatus<DownloadTask> status) {
            Intrinsics.checkNotNullParameter(status, "status");
            DownloadFileByUrlAction.this.m32492B(this.f41456f, status.getProgressInfo());
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileByUrlAction$n */
    /* loaded from: classes7.dex */
    public static final class C7254n<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ OnyxFileTransferStatus<CloudFileBean> f41458f;

        /* renamed from: g */
        public final /* synthetic */ PublishSubject<OnyxFileTransferStatus<CloudFileBean>> f41459g;

        public C7254n(OnyxFileTransferStatus<CloudFileBean> onyxFileTransferStatus, PublishSubject<OnyxFileTransferStatus<CloudFileBean>> publishSubject) {
            this.f41458f = onyxFileTransferStatus;
            this.f41459g = publishSubject;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable e) {
            Intrinsics.checkNotNullParameter(e, "e");
            DownloadFileByUrlAction.this.m32499I(this.f41458f, e);
            DownloadFileByUrlAction.this.m32506z(this.f41458f, e);
            this.f41459g.onError(e);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileByUrlAction$o */
    /* loaded from: classes7.dex */
    public static final class C7255o<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ String f41461f;

        public C7255o(String str) {
            this.f41461f = str;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Long> apply(@NotNull Throwable e) {
            Intrinsics.checkNotNullParameter(e, "e");
            Debug.INSTANCE.m32035d(DownloadFileByUrlAction.this.getClass(), this.f41461f + " retryCount:" + DownloadFileByUrlAction.this.getRetryCount(), new Object[0]);
            if (DownloadFileByUrlAction.this.getRetryCount() < 0 || !((e instanceof SocketTimeoutException) || (e instanceof SocketException) || (e instanceof ProtocolException))) {
                return Observable.error(e);
            }
            DownloadFileByUrlAction.this.setRetryCount(r4.getRetryCount() - 1);
            return Observable.timer(SilenceSkippingAudioProcessor.DEFAULT_PADDING_SILENCE_US, TimeUnit.MILLISECONDS);
        }
    }

    public DownloadFileByUrlAction(@NotNull List<CloudFileBean> cloudFileBeans) {
        Intrinsics.checkNotNullParameter(cloudFileBeans, "cloudFileBeans");
        this.cloudFileBeans = cloudFileBeans;
        this.retryCount = 3;
        this.cloudFileBeanMap = new LinkedHashMap();
        for (CloudFileBean cloudFileBean : cloudFileBeans) {
            if (cloudFileBean.getCloudFilePath() != null) {
                Map<String, CloudFileBean> map = this.cloudFileBeanMap;
                String cloudFilePath = cloudFileBean.getCloudFilePath();
                Intrinsics.checkNotNull(cloudFilePath);
                map.put(cloudFilePath, cloudFileBean);
            }
        }
    }

    /* renamed from: v */
    public static final void m32487v(Disposable disposable) {
        Intrinsics.checkNotNullParameter(disposable, "$disposable");
        disposable.dispose();
    }

    /* renamed from: w */
    public static final void m32488w(DownloadFileByUrlAction this$0, Pair pair, OnyxFileTransferStatus downloadStatus) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(pair, "$pair");
        Intrinsics.checkNotNullParameter(downloadStatus, "$downloadStatus");
        Debug.INSTANCE.m32035d(this$0.getClass(), "dispose download:" + ((CloudFileBean) pair.getFirst()).getLocalFilePath() + ",uid:" + ((CloudFileBean) pair.getFirst()).getUniqueId(), new Object[0]);
        this$0.m32506z(downloadStatus, new AbortException());
    }

    /* renamed from: x */
    public static final void m32489x(OnyxFileTransferStatus downloadStatus, Pair pair, DownloadFileByUrlAction this$0, PublishSubject subject) {
        Intrinsics.checkNotNullParameter(downloadStatus, "$downloadStatus");
        Intrinsics.checkNotNullParameter(pair, "$pair");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(subject, "$subject");
        downloadStatus.setEntry(pair.getFirst());
        this$0.m32506z(downloadStatus, null);
        subject.onNext(downloadStatus);
        subject.onComplete();
    }

    /* renamed from: y */
    public static final void m32490y(Pair pair, DownloadFileByUrlAction this$0) {
        Intrinsics.checkNotNullParameter(pair, "$pair");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (StringKt.isNotBlank(((CloudFileBean) pair.getFirst()).getLocalFilePath())) {
            BaseCloudStorageProvider webDavProvider = this$0.getWebDavProvider();
            String localFilePath = ((CloudFileBean) pair.getFirst()).getLocalFilePath();
            Intrinsics.checkNotNull(localFilePath);
            webDavProvider.removeTransferDisposable(localFilePath);
        }
    }

    /* renamed from: A */
    public final OnyxFileTransferStatus<CloudFileBean> m32491A(OnyxFileTransferStatus<CloudFileBean> status) {
        Debug.INSTANCE.m32035d(getClass(), status.getTag() + " onFinish:" + status.getStatus(), new Object[0]);
        for (CloudFileBean cloudFileBean : this.cloudFileBeans) {
            if (StringKt.equals(cloudFileBean.getCloudFilePath(), String.valueOf(status.getTag()))) {
                if (status.isCompleted()) {
                    cloudFileBean.setSyncStatus(SyncStatus.NEW_FROM_CLOUD);
                } else {
                    cloudFileBean.setSyncStatus(SyncStatus.NEW_FROM_LOCAL);
                }
                OnyxFileTransferStatus<CloudFileBean> onyxFileTransferStatus = new OnyxFileTransferStatus<>(cloudFileBean);
                onyxFileTransferStatus.setTag(status.getTag());
                if (status.isCompleted()) {
                    onyxFileTransferStatus.setStatus(-3);
                } else {
                    onyxFileTransferStatus.setStatus(-1);
                }
                return onyxFileTransferStatus;
            }
        }
        return new OnyxFileTransferStatus<>();
    }

    /* renamed from: B */
    public final void m32492B(OnyxFileTransferStatus<CloudFileBean> downloadStatus, ProgressInfo progressInfo) {
        Debug.INSTANCE.m32035d(getClass(), downloadStatus.getTag() + " progressInfo:" + progressInfo.getProgress(), new Object[0]);
        if (progressInfo.getProgress() > downloadStatus.getProgress()) {
            this.retryCount = 3;
        }
        if (progressInfo.getProgress() > 0.0d || downloadStatus.getProgress() <= 0.0d) {
            downloadStatus.m72247setProgressInfo(progressInfo);
        }
        m32493C(downloadStatus);
    }

    /* renamed from: C */
    public final void m32493C(OnyxFileTransferStatus<CloudFileBean> status) {
        CloudStorageManager.INSTANCE.getOurInstance().postEvent(new CloudStorageDownloadFileEvent(status));
    }

    /* renamed from: D */
    public final Observable<Long> m32494D(String tag, Observable<Throwable> observable) {
        Observable flatMap = observable.flatMap(new C7255o(tag));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: E */
    public final void m32495E(CloudFileBean fileBean) {
        OnyxFileTransferStatus<CloudFileBean> m32503s = m32503s(fileBean);
        m32503s.setErrorStatus();
        m32493C(m32503s);
    }

    /* renamed from: F */
    public final void m32496F(CloudFileBean fileBean) {
        ProgressInfo progressInfo = OnyxDownloadManager.INSTANCE.getProgressInfo(fileBean.getUniqueId());
        if (progressInfo == null) {
            return;
        }
        OnyxFileTransferStatus<CloudFileBean> m32503s = m32503s(fileBean);
        m32503s.m72247setProgressInfo(progressInfo);
        m32493C(m32503s);
    }

    /* renamed from: G */
    public final void m32497G(CloudFileBean fileBean) {
        m32493C(m32503s(fileBean));
    }

    /* renamed from: H */
    public final void m32498H(CloudFileBean cloudFileBean) {
        List listOf;
        cloudFileBean.setSyncStatus(SyncStatus.NEW_FROM_CLOUD);
        CloudStorageRecordProvider cloudStorageRecordProvider = getWebDavProvider().getCloudStorageRecordProvider();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(cloudFileBean);
        cloudStorageRecordProvider.saveCloudFiles(listOf);
    }

    /* renamed from: I */
    public final void m32499I(OnyxFileTransferStatus<CloudFileBean> downloadStatus, Throwable e) {
        if (e instanceof ContentException.FileCheckException) {
            String string = ResManager.INSTANCE.getString(C7153R.string.cloud_file_check_fail_tip);
            Intrinsics.checkNotNull(string);
            downloadStatus.updateErrorResultCode(7, string);
        } else {
            String string2 = ResManager.INSTANCE.getString(C7153R.string.network_or_server_error);
            Intrinsics.checkNotNull(string2);
            downloadStatus.updateErrorResultCode(-1, string2);
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<OnyxFileTransferStatus<CloudFileBean>>> create() {
        Observable<List<OnyxFileTransferStatus<CloudFileBean>>> observable = Observable.fromIterable(this.cloudFileBeans).flatMap(new C7241a()).toList().toObservable();
        Intrinsics.checkNotNullExpressionValue(observable, "toObservable(...)");
        return observable;
    }

    @NotNull
    public DownloadAction createDownloadAction(@NotNull CloudFileBean cloudFileBean, @NotNull String url) {
        Intrinsics.checkNotNullParameter(cloudFileBean, "cloudFileBean");
        Intrinsics.checkNotNullParameter(url, "url");
        FileUtils fileUtils = FileUtils.INSTANCE;
        fileUtils.mkdirs(fileUtils.getParent(cloudFileBean.getLocalFilePath()));
        String uniqueId = cloudFileBean.getUniqueId();
        Intrinsics.checkNotNull(uniqueId);
        String localFilePath = cloudFileBean.getLocalFilePath();
        Intrinsics.checkNotNull(localFilePath);
        String absolutePath = new File(localFilePath).getAbsolutePath();
        Debug.INSTANCE.m32035d(getClass(), "downloading cloud file:" + url + "\r\n" + absolutePath, new Object[0]);
        DownloadAction downloadAction = new DownloadAction(url, absolutePath + ".1", uniqueId, null);
        downloadAction.setFileSize(Long.valueOf(cloudFileBean.getSize()));
        downloadAction.setTargetPath(absolutePath);
        return downloadAction;
    }

    @NotNull
    public abstract CloudFileBean fetchFileInfoFromCloud(@NotNull CloudFileBean oldFileBean) throws Exception;

    @NotNull
    public final List<CloudFileBean> getCloudFileBeanList() {
        List<CloudFileBean> list;
        list = CollectionsKt___CollectionsKt.toList(this.cloudFileBeanMap.values());
        return list;
    }

    @NotNull
    public final List<CloudFileBean> getCloudFileBeans() {
        return this.cloudFileBeans;
    }

    public final int getRetryCount() {
        return this.retryCount;
    }

    /* renamed from: p */
    public final boolean m32500p(Pair<CloudFileBean, String> pair) throws Exception {
        if (pair.getSecond() != null) {
            String second = pair.getSecond();
            if (!(second == null || second.length() == 0)) {
                return true;
            }
        }
        m32495E(pair.getFirst());
        return false;
    }

    /* renamed from: q */
    public final boolean m32501q(CloudFileBean fileBean) {
        if (OnyxDownloadManager.INSTANCE.existTask(fileBean.getUniqueId())) {
            m32496F(fileBean);
            return true;
        }
        m32497G(fileBean);
        return false;
    }

    @NotNull
    public abstract String queryDownloadLink(@NotNull CloudFileBean fileBean) throws Exception;

    @NotNull
    public Pair<CloudFileBean, String> queryFileLink(@NotNull CloudFileBean fileBean) throws Exception {
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        Map<String, String> map = f41435h;
        String str = map.get(fileBean.getUniqueId());
        if (str == null || str.length() == 0) {
            String uniqueId = fileBean.getUniqueId();
            Intrinsics.checkNotNull(uniqueId);
            map.put(uniqueId, queryDownloadLink(fileBean));
        }
        String str2 = map.get(fileBean.getUniqueId());
        Intrinsics.checkNotNull(str2);
        return TuplesKt.m61535to(fileBean, str2);
    }

    /* renamed from: r */
    public final Observable<OnyxFileTransferStatus<CloudFileBean>> m32502r(CloudFileBean fileBean) {
        Observable<OnyxFileTransferStatus<CloudFileBean>> map = Observable.just(fileBean).observeOn(AndroidSchedulers.mainThread()).filter(new C7242b()).observeOn(getMultiObserveOn()).map(new C7243c()).doOnNext(new C7244d()).map(new C7245e()).filter(new C7246f()).doOnError(new C7247g(fileBean)).observeOn(AndroidSchedulers.mainThread()).flatMap(new C7248h()).map(new C7249i());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: s */
    public final OnyxFileTransferStatus<CloudFileBean> m32503s(CloudFileBean fileBean) {
        OnyxFileTransferStatus<CloudFileBean> onyxFileTransferStatus = new OnyxFileTransferStatus<>(fileBean);
        onyxFileTransferStatus.setTag(fileBean.getCloudFilePath());
        return onyxFileTransferStatus;
    }

    public final void setRetryCount(int i) {
        this.retryCount = i;
    }

    /* renamed from: t */
    public final Observable<OnyxFileTransferStatus<CloudFileBean>> m32504t(Pair<CloudFileBean, String> pair) {
        PublishSubject<OnyxFileTransferStatus<CloudFileBean>> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        if (pair.getFirst().isLocalFileChanged()) {
            final Disposable m32505u = m32505u(create, m32503s(pair.getFirst()), pair);
            Observable<OnyxFileTransferStatus<CloudFileBean>> doOnDispose = create.doOnDispose(new Action() { // from class: com.sunia.HTREnginev2.agf
                @Override // io.reactivex.rxjava3.functions.Action
                public final void run() {
                    DownloadFileByUrlAction.m32487v(Disposable.this);
                }
            });
            Intrinsics.checkNotNullExpressionValue(doOnDispose, "doOnDispose(...)");
            return doOnDispose;
        }
        OnyxFileTransferStatus<CloudFileBean> m32503s = m32503s(pair.getFirst());
        m32503s.setEntry(pair.getFirst());
        m32506z(m32503s, null);
        Observable<OnyxFileTransferStatus<CloudFileBean>> just = Observable.just(m32503s);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: u */
    public final Disposable m32505u(final PublishSubject<OnyxFileTransferStatus<CloudFileBean>> subject, final OnyxFileTransferStatus<CloudFileBean> downloadStatus, final Pair<CloudFileBean, String> pair) {
        Disposable subscribe = createDownloadAction(pair.getFirst(), pair.getSecond()).build().observeOn(Schedulers.m61350io()).doOnNext(new C7250j(pair)).observeOn(AndroidSchedulers.mainThread()).doOnDispose(new Action() { // from class: com.sunia.HTREnginev2.xff
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                DownloadFileByUrlAction.m32488w(DownloadFileByUrlAction.this, pair, downloadStatus);
            }
        }).doOnSubscribe(new C7251k(pair, this)).retryWhen(new C7252l(pair)).doOnNext(new C7253m(downloadStatus)).doOnError(new C7254n(downloadStatus, subject)).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.yff
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                DownloadFileByUrlAction.m32489x(OnyxFileTransferStatus.this, pair, this, subject);
            }
        }).doFinally(new Action() { // from class: com.sunia.HTREnginev2.zff
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                DownloadFileByUrlAction.m32490y(Pair.this, this);
            }
        }).observeOn(AndroidSchedulers.mainThread()).subscribe();
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        return subscribe;
    }

    /* renamed from: z */
    public final OnyxFileTransferStatus<CloudFileBean> m32506z(OnyxFileTransferStatus<CloudFileBean> status, Throwable e) {
        if (e == null) {
            status.setCompleteStatus();
            f41435h.remove(String.valueOf(status.getTag()));
        } else if (e instanceof AbortException) {
            status.setInvalidStatus();
            f41435h.remove(String.valueOf(status.getTag()));
        } else {
            status.setErrorStatus();
        }
        Debug.INSTANCE.m32035d(getClass(), status.getTag() + " done:" + status.getStatus(), new Object[0]);
        m32493C(status);
        return status;
    }
}
