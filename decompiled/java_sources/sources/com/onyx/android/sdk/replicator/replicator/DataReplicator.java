package com.onyx.android.sdk.replicator.replicator;

import com.alibaba.sdk.android.oss.ServiceException;
import com.alibaba.sdk.android.oss.common.utils.BinaryUtil;
import com.alibaba.sdk.android.oss.model.GetObjectResult;
import com.alibaba.sdk.android.oss.model.HeadObjectResult;
import com.alibaba.sdk.android.oss.model.ObjectMetadata;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.eventbus.EventBusHolder;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.NetworkUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.data.common.oss.GetObjectBean;
import com.onyx.android.sdk.data.common.oss.PutObjectBean;
import com.onyx.android.sdk.data.common.oss.PutObjectProgress;
import com.onyx.android.sdk.data.common.oss.RxOSSManager;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.bean.DataReplicatorInfo;
import com.onyx.android.sdk.replicator.bean.OnyxErrorType;
import com.onyx.android.sdk.replicator.bean.StartTaskBean;
import com.onyx.android.sdk.replicator.bean.SyncDataBean;
import com.onyx.android.sdk.replicator.bean.SyncRecordType;
import com.onyx.android.sdk.replicator.bean.TaskFinishArgs;
import com.onyx.android.sdk.replicator.bean.TaskManager;
import com.onyx.android.sdk.replicator.event.ComparedSyncFileEvent;
import com.onyx.android.sdk.replicator.event.DataSyncProgressEvent;
import com.onyx.android.sdk.replicator.replicator.DataReplicator;
import com.onyx.android.sdk.replicator.request.ComputeDataFileMD5Request;
import com.onyx.android.sdk.replicator.request.SaveDataFileRequest;
import com.onyx.android.sdk.replicator.utils.KSyncLogUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010F\u001a\u00020C\u0012\u0006\u0010L\u001a\u00020G¢\u0006\u0004\b\\\u0010]J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0016\u0010\u0007\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\b\u0010\b\u001a\u00020\u0002H\u0002J\u0016\u0010\n\u001a\u00020\u00022\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0005H\u0002J\u001e\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0018\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0010H\u0002J\u0018\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u0010\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0005H\u0002J\u0010\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u0018\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u001cH\u0002J\u0010\u0010\u001f\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u001cH\u0002J\u0018\u0010#\u001a\u00020\"2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010!\u001a\u00020 H\u0002J\u0010\u0010$\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0005H\u0002J\u0010\u0010%\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0005H\u0002J\u0010\u0010&\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0005H\u0002J\u0012\u0010*\u001a\u00020)2\b\u0010(\u001a\u0004\u0018\u00010'H\u0002J\u0010\u0010+\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0005H\u0002J\u0018\u0010,\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u0010\u0010/\u001a\u00020-2\u0006\u0010.\u001a\u00020-H\u0002J\b\u00100\u001a\u00020\u0000H&J\u0012\u00101\u001a\u00020\u00022\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005H&J\u0012\u00102\u001a\u00020\u00022\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005H&J\u0012\u00103\u001a\u00020\u00022\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005H&J\u0006\u00104\u001a\u00020\u0002J\u0006\u00105\u001a\u00020\u0002J\b\u00106\u001a\u0004\u0018\u00010'J\u0014\u00108\u001a\u00020\u00022\f\u00107\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u0006\u00109\u001a\u00020\u0002J\u0010\u0010:\u001a\u00020\u00132\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015J\u0010\u0010;\u001a\u00020\u00022\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u0006\u0010<\u001a\u00020\u0002J\u0018\u0010>\u001a\b\u0012\u0004\u0012\u00020)0\u000f2\b\u0010=\u001a\u0004\u0018\u00010'H\u0016J\f\u0010?\u001a\b\u0012\u0004\u0012\u00020-0\u000fJ\u0006\u0010@\u001a\u00020\u0002J\b\u0010A\u001a\u0004\u0018\u00010-J\u0006\u0010B\u001a\u00020\u0002R\u0014\u0010F\u001a\u00020C8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bD\u0010ER\u0017\u0010L\u001a\u00020G8\u0006¢\u0006\f\n\u0004\bH\u0010I\u001a\u0004\bJ\u0010KR\u0014\u0010P\u001a\u00020M8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bN\u0010OR\u001a\u0010S\u001a\b\u0012\u0004\u0012\u00020\u00050Q8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010RR\u0018\u0010.\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010TR\u0011\u0010W\u001a\u00020'8F¢\u0006\u0006\u001a\u0004\bU\u0010VR\u0013\u0010[\u001a\u0004\u0018\u00010X8F¢\u0006\u0006\u001a\u0004\bY\u0010Z¨\u0006^"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;", "", "", "z", "", "Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;", "beanList", "j", "y", "syncRecordList", C4921e.f26537n, "dataBean", "r", "Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;", "getObjectBean", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;", "i", "headObjectResult", "", "d", "", "throwable", "l", "p", "Lcom/onyx/android/sdk/replicator/bean/TaskFinishArgs;", "args", "q", "", "errorType", C4921e.f26528e, C6999h.f39688c, "Lcom/alibaba/sdk/android/oss/model/GetObjectResult;", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "Lcom/onyx/android/sdk/replicator/request/SaveDataFileRequest;", "w", C6997f.f39671c, "t", "u", "", "uploadFilePath", "Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;", "e", GoogleApiAvailabilityLight.f29016b, "m", "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "clusterInfo", "x", "syncActual", "onDataSyncSuccess", "onPullDataSaveSuccess", "addDataCommitPoint", "onAllTaskFinished", "startSync", "getUserId", "dataBeans", "syncDataFile", "stop", "isDataNotFound", "onPullCoverNotExist", "postSyncProgressEvent", "filePath", "computeFileMD5Observable", "updateClusterInfoObservable", "postComparedSyncFileEvent", "getClusterInfo", "close", "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", "a", "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", "eventBusHolder", "Lcom/onyx/android/sdk/replicator/bean/DataReplicatorInfo;", "b", "Lcom/onyx/android/sdk/replicator/bean/DataReplicatorInfo;", "getReplicatorInfo", "()Lcom/onyx/android/sdk/replicator/bean/DataReplicatorInfo;", "replicatorInfo", "Lcom/onyx/android/sdk/replicator/bean/TaskManager;", "c", "Lcom/onyx/android/sdk/replicator/bean/TaskManager;", "taskManager", "", "Ljava/util/List;", "syncDataBeans", "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "getDocumentId", "()Ljava/lang/String;", "documentId", "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;", "getRxOSSManager", "()Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;", "rxOSSManager", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;Lcom/onyx/android/sdk/replicator/bean/DataReplicatorInfo;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDataReplicator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataReplicator.kt\ncom/onyx/android/sdk/replicator/replicator/DataReplicator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,396:1\n1#2:397\n*E\n"})
/* loaded from: classes8.dex */
public abstract class DataReplicator {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final EventBusHolder eventBusHolder;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final DataReplicatorInfo replicatorInfo;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final TaskManager taskManager;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final List<SyncDataBean> syncDataBeans;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public ClusterInfo clusterInfo;

    /* renamed from: com.onyx.android.sdk.replicator.replicator.DataReplicator$a */
    /* loaded from: classes8.dex */
    public static final class C7808a<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ String f46132f;

        public C7808a(String str) {
            this.f46132f = str;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObjectMetadata apply(@NotNull KSyncBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DataReplicator.this.m35618e(this.f46132f);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.DataReplicator$b */
    /* loaded from: classes8.dex */
    public static final class C7809b<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ SyncDataBean f46134f;

        public C7809b(SyncDataBean syncDataBean) {
            this.f46134f = syncDataBean;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable throwable) {
            Intrinsics.checkNotNullParameter(throwable, "throwable");
            DataReplicator.this.m35627o(this.f46134f, OnyxErrorType.INSTANCE.getREMOVE_DATA_ERROR());
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.DataReplicator$c */
    /* loaded from: classes8.dex */
    public static final class C7810c<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ SyncDataBean f46136f;

        /* renamed from: g */
        public final /* synthetic */ GetObjectBean f46137g;

        public C7810c(SyncDataBean syncDataBean, GetObjectBean getObjectBean) {
            this.f46136f = syncDataBean;
            this.f46137g = getObjectBean;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HeadObjectResult> apply(@NotNull DataReplicator it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DataReplicator.this.m35621i(this.f46136f, this.f46137g);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.DataReplicator$d */
    /* loaded from: classes8.dex */
    public static final class C7811d<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ SyncDataBean f46139f;

        public C7811d(SyncDataBean syncDataBean) {
            this.f46139f = syncDataBean;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull HeadObjectResult headObjectResult) {
            Intrinsics.checkNotNullParameter(headObjectResult, "headObjectResult");
            return Boolean.valueOf(DataReplicator.this.m35617d(this.f46139f, headObjectResult));
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.DataReplicator$e */
    /* loaded from: classes8.dex */
    public static final class C7812e<T> implements Predicate {

        /* renamed from: e */
        public static final C7812e<T> f46140e = new C7812e<>();

        /* renamed from: a */
        public final boolean m35641a(boolean z) {
            return !z;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public /* bridge */ /* synthetic */ boolean test(Object obj) {
            return m35641a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.DataReplicator$f */
    /* loaded from: classes8.dex */
    public static final class C7813f<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ GetObjectBean f46142f;

        public C7813f(GetObjectBean getObjectBean) {
            this.f46142f = getObjectBean;
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends GetObjectResult> m35642a(boolean z) {
            RxOSSManager rxOSSManager = DataReplicator.this.getRxOSSManager();
            Intrinsics.checkNotNull(rxOSSManager);
            return rxOSSManager.getObject(this.f46142f);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m35642a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.DataReplicator$g */
    /* loaded from: classes8.dex */
    public static final class C7814g<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ SyncDataBean f46144f;

        public C7814g(SyncDataBean syncDataBean) {
            this.f46144f = syncDataBean;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SaveDataFileRequest apply(@NotNull GetObjectResult getObjectResult) {
            Intrinsics.checkNotNullParameter(getObjectResult, "getObjectResult");
            return DataReplicator.this.m35633w(this.f46144f, getObjectResult);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.DataReplicator$h */
    /* loaded from: classes8.dex */
    public static final class C7815h<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ SyncDataBean f46146f;

        public C7815h(SyncDataBean syncDataBean) {
            this.f46146f = syncDataBean;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable throwable) {
            Intrinsics.checkNotNullParameter(throwable, "throwable");
            DataReplicator.this.m35624l(this.f46146f, throwable);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.DataReplicator$i */
    /* loaded from: classes8.dex */
    public static final class C7816i<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ PutObjectBean f46147e;

        /* renamed from: f */
        public final /* synthetic */ DataReplicator f46148f;

        public C7816i(PutObjectBean putObjectBean, DataReplicator dataReplicator) {
            this.f46147e = putObjectBean;
            this.f46148f = dataReplicator;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends PutObjectProgress> apply(@NotNull ObjectMetadata metadata) {
            Intrinsics.checkNotNullParameter(metadata, "metadata");
            this.f46147e.setMetadata(metadata);
            RxOSSManager rxOSSManager = this.f46148f.getRxOSSManager();
            Intrinsics.checkNotNull(rxOSSManager);
            return rxOSSManager.putObject(this.f46147e);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.DataReplicator$j */
    /* loaded from: classes8.dex */
    public static final class C7817j<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ SyncDataBean f46150f;

        public C7817j(SyncDataBean syncDataBean) {
            this.f46150f = syncDataBean;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable throwable) {
            Intrinsics.checkNotNullParameter(throwable, "throwable");
            DataReplicator.this.m35625m(this.f46150f, throwable);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.DataReplicator$k */
    /* loaded from: classes8.dex */
    public static final class C7818k<T, R> implements Function {
        public C7818k() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DataReplicator apply(@NotNull ClusterInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DataReplicator.this.syncActual();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.DataReplicator$l */
    /* loaded from: classes8.dex */
    public static final class C7819l<T, R> implements Function {
        public C7819l() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ClusterInfo apply(@NotNull ClusterInfo clusterInfo) {
            Intrinsics.checkNotNullParameter(clusterInfo, "clusterInfo");
            return DataReplicator.this.m35634x(clusterInfo);
        }
    }

    public DataReplicator(@NotNull EventBusHolder eventBusHolder, @NotNull DataReplicatorInfo replicatorInfo) {
        Intrinsics.checkNotNullParameter(eventBusHolder, "eventBusHolder");
        Intrinsics.checkNotNullParameter(replicatorInfo, "replicatorInfo");
        this.eventBusHolder = eventBusHolder;
        this.replicatorInfo = replicatorInfo;
        this.taskManager = new TaskManager();
        this.syncDataBeans = new ArrayList();
    }

    /* renamed from: g */
    public static final void m35614g(DataReplicator this$0, SyncDataBean dataBean) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(dataBean, "$dataBean");
        this$0.m35628p(dataBean);
    }

    /* renamed from: s */
    public static final void m35615s(DataReplicator this$0, SyncDataBean dataBean) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(dataBean, "$dataBean");
        this$0.m35628p(dataBean);
    }

    /* renamed from: v */
    public static final void m35616v(DataReplicator this$0, SyncDataBean dataBean) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(dataBean, "$dataBean");
        this$0.m35626n(dataBean);
    }

    public abstract void addDataCommitPoint(@Nullable SyncDataBean dataBean);

    public final void close() {
        this.taskManager.close();
    }

    @NotNull
    public Observable<ObjectMetadata> computeFileMD5Observable(@Nullable String filePath) {
        Observable map = KSyncBundle.INSTANCE.createObservable().map(new C7808a(filePath));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: d */
    public final boolean m35617d(SyncDataBean dataBean, HeadObjectResult headObjectResult) throws IOException {
        String contentMD5 = headObjectResult.getMetadata().getContentMD5();
        if (StringUtils.isBlank(contentMD5)) {
            return false;
        }
        String localSavePath = dataBean.getLocalSavePath();
        boolean equals = StringUtils.equals(contentMD5, BinaryUtil.calculateBase64Md5(localSavePath));
        if (equals) {
            KSyncLogUtils.INSTANCE.m35864d(getClass(), localSavePath + " has exist ");
        }
        return equals;
    }

    /* renamed from: e */
    public final ObjectMetadata m35618e(String uploadFilePath) throws Exception {
        ComputeDataFileMD5Request computeDataFileMD5Request = new ComputeDataFileMD5Request(uploadFilePath);
        computeDataFileMD5Request.execute();
        ObjectMetadata objectMetadata = new ObjectMetadata();
        objectMetadata.setContentMD5(computeDataFileMD5Request.getMd5());
        return objectMetadata;
    }

    /* renamed from: f */
    public final void m35619f(final SyncDataBean dataBean) {
        List<String> listOf;
        String ossFilePath = dataBean.getOssFilePath();
        Intrinsics.checkNotNull(ossFilePath);
        RxOSSManager rxOSSManager = getRxOSSManager();
        Intrinsics.checkNotNull(rxOSSManager);
        listOf = CollectionsKt__CollectionsJVMKt.listOf(ossFilePath);
        rxOSSManager.deleteMultipleObject(listOf, false).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.mue
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                DataReplicator.m35614g(DataReplicator.this, dataBean);
            }
        }).doOnError(new C7809b(dataBean)).subscribe();
    }

    @Nullable
    public final ClusterInfo getClusterInfo() {
        return this.clusterInfo;
    }

    @NotNull
    public final String getDocumentId() {
        return this.replicatorInfo.getDocumentId();
    }

    @NotNull
    public final DataReplicatorInfo getReplicatorInfo() {
        return this.replicatorInfo;
    }

    @Nullable
    public final RxOSSManager getRxOSSManager() {
        ClusterInfo clusterInfo = this.clusterInfo;
        if (clusterInfo != null) {
            return KSyncBundle.INSTANCE.getRxOSSManager(clusterInfo);
        }
        return null;
    }

    @Nullable
    public final String getUserId() {
        return this.replicatorInfo.getUserId();
    }

    /* renamed from: h */
    public final boolean m35620h(int errorType) {
        return errorType != OnyxErrorType.INSTANCE.getUSER_STORAGE_TOO_LOW();
    }

    /* renamed from: i */
    public final Observable<HeadObjectResult> m35621i(SyncDataBean dataBean, GetObjectBean getObjectBean) {
        if (FileUtils.INSTANCE.isEmpty(dataBean.getLocalSavePath())) {
            Observable<HeadObjectResult> just = Observable.just(new HeadObjectResult());
            Intrinsics.checkNotNull(just);
            return just;
        }
        RxOSSManager rxOSSManager = getRxOSSManager();
        Intrinsics.checkNotNull(rxOSSManager);
        return rxOSSManager.headObject(getObjectBean);
    }

    public final boolean isDataNotFound(@Nullable Throwable throwable) {
        return (throwable instanceof ServiceException) && ((ServiceException) throwable).getStatusCode() == 404;
    }

    /* renamed from: j */
    public final void m35622j(List<SyncDataBean> beanList) {
        List<SyncDataBean> list = beanList;
        if (list == null || list.isEmpty()) {
            return;
        }
        CollectionKt.addDistinctBy(this.syncDataBeans, list, new Function1<SyncDataBean, String>() { // from class: com.onyx.android.sdk.replicator.replicator.DataReplicator$mergeSyncDataList$1
            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final String invoke(@NotNull SyncDataBean it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getOssFilePath();
            }
        });
    }

    /* renamed from: k */
    public final void m35623k(List<SyncDataBean> syncRecordList) {
        Iterator<SyncDataBean> it2 = syncRecordList.iterator();
        while (it2.hasNext()) {
            this.taskManager.onTaskFail(it2.next().getOssFilePath(), OnyxErrorType.INSTANCE.getNETWORK_ERROR());
        }
        this.syncDataBeans.clear();
        postSyncProgressEvent();
    }

    /* renamed from: l */
    public final void m35624l(SyncDataBean dataBean, Throwable throwable) {
        KSyncLogUtils.INSTANCE.m35865e(getClass(), "pull error:" + dataBean.getSyncOssPath());
        OnyxErrorType onyxErrorType = OnyxErrorType.INSTANCE;
        int pull_data_error = onyxErrorType.getPULL_DATA_ERROR();
        if (throwable instanceof SocketTimeoutException) {
            pull_data_error = onyxErrorType.getTIMEOUT_ERROR();
        } else if (isDataNotFound(throwable) && SyncRecordType.INSTANCE.isCoverType(dataBean.getRecordType())) {
            pull_data_error = onyxErrorType.getTHUMBNAIL_CLOUD_FILE_NOT_EXIST();
            onPullCoverNotExist(dataBean);
        }
        m35627o(dataBean, pull_data_error);
    }

    /* renamed from: m */
    public final void m35625m(SyncDataBean dataBean, Throwable throwable) {
        OnyxErrorType onyxErrorType = OnyxErrorType.INSTANCE;
        int push_data_error = onyxErrorType.getPUSH_DATA_ERROR();
        if (throwable instanceof SocketTimeoutException) {
            push_data_error = onyxErrorType.getTIMEOUT_ERROR();
        }
        m35627o(dataBean, push_data_error);
        KSyncLogUtils.INSTANCE.m35865e(getClass(), "push error " + dataBean.getSyncOssPath());
    }

    /* renamed from: n */
    public final void m35626n(SyncDataBean dataBean) {
        String localSavePath = dataBean.getLocalSavePath();
        KSyncLogUtils.INSTANCE.m35864d(getClass(), "push success: " + dataBean.getSyncOssPath());
        KSyncBundle kSyncBundle = KSyncBundle.INSTANCE;
        kSyncBundle.useStorage(FileUtils.INSTANCE.getFileSize(localSavePath));
        kSyncBundle.setNeedUpdateUserStorage(true);
        kSyncBundle.setNeedRecalculateUserStorage(true);
        addDataCommitPoint(dataBean);
        m35628p(dataBean);
    }

    /* renamed from: o */
    public final void m35627o(SyncDataBean dataBean, int errorType) {
        String ossFilePath = dataBean.getOssFilePath();
        this.taskManager.onTaskFail(ossFilePath, errorType);
        boolean isTaskSyncFinished = this.taskManager.isTaskSyncFinished(ossFilePath);
        if (isTaskSyncFinished) {
            this.syncDataBeans.remove(dataBean);
        }
        m35629q(new TaskFinishArgs().setPostProgress(isTaskSyncFinished).setSyncNext(m35620h(errorType)));
    }

    public final void onAllTaskFinished() {
    }

    public abstract void onDataSyncSuccess(@Nullable SyncDataBean dataBean);

    public final void onPullCoverNotExist(@Nullable SyncDataBean dataBean) {
        onDataSyncSuccess(dataBean);
    }

    public abstract void onPullDataSaveSuccess(@Nullable SyncDataBean dataBean);

    /* renamed from: p */
    public final void m35628p(SyncDataBean dataBean) {
        this.taskManager.onTaskSuccess(dataBean.getOssFilePath());
        this.syncDataBeans.remove(dataBean);
        onDataSyncSuccess(dataBean);
        m35629q(new TaskFinishArgs().setPostProgress(true).setSyncNext(true));
    }

    public final void postComparedSyncFileEvent() {
        this.eventBusHolder.post(new ComparedSyncFileEvent());
    }

    public final void postSyncProgressEvent() {
        this.eventBusHolder.post(new DataSyncProgressEvent().setFinished(this.taskManager.isAllTaskFinished()).setErrorTypes(this.taskManager.getErrorTypes()).setCompleted(this.taskManager.getSyncSuccessTaskCount()).setPushCompletedCount(this.taskManager.getPushSuccessTaskCount()).setPullCompletedCount(this.taskManager.getPullSuccessTaskCount()).setTotal(this.taskManager.getTotalTaskCount()));
    }

    /* renamed from: q */
    public final void m35629q(TaskFinishArgs args) {
        if (this.taskManager.isAllTaskFinished()) {
            onAllTaskFinished();
            this.taskManager.printTaskResult(getClass().getSimpleName() + ", documentId: " + getDocumentId());
        } else if (args.getIsSyncNext()) {
            m35636z();
        }
        if (args.getIsPostProgress()) {
            postSyncProgressEvent();
        }
    }

    /* renamed from: r */
    public final void m35630r(final SyncDataBean dataBean) {
        String ossFilePath = dataBean.getOssFilePath();
        if (this.taskManager.isTaskSyncingOrFinished(ossFilePath)) {
            return;
        }
        if (this.replicatorInfo.getDebugLog()) {
            KSyncLogUtils.INSTANCE.m35864d(getClass(), "pull ossFileKey: " + dataBean.getSyncOssPath() + " save file Path: " + dataBean.getLocalSavePath());
        }
        postSyncProgressEvent();
        GetObjectBean getObjectBean = new GetObjectBean(null, null, 3, null);
        getObjectBean.setOssFileObjectKey(dataBean.getSyncOssPath());
        Disposable subscribe = Observable.just(this).flatMap(new C7810c(dataBean, getObjectBean)).map(new C7811d(dataBean)).filter(C7812e.f46140e).flatMap(new C7813f(getObjectBean)).map(new C7814g(dataBean)).observeOn(AndroidSchedulers.mainThread()).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.nue
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                DataReplicator.m35615s(DataReplicator.this, dataBean);
            }
        }).doOnError(new C7815h(dataBean)).subscribe();
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.taskManager.startPull(new StartTaskBean().setKey(ossFilePath).setSyncRecordType(dataBean.getRecordType()).setTaskDisposable(subscribe));
    }

    public final void startSync() {
        updateClusterInfoObservable().map(new C7818k()).subscribe();
    }

    public final void stop() {
        this.syncDataBeans.clear();
        postSyncProgressEvent();
    }

    @NotNull
    public abstract DataReplicator syncActual();

    public final void syncDataFile(@NotNull List<SyncDataBean> dataBeans) {
        Intrinsics.checkNotNullParameter(dataBeans, "dataBeans");
        m35622j(dataBeans);
        m35635y();
        postSyncProgressEvent();
    }

    /* renamed from: t */
    public final void m35631t(SyncDataBean dataBean) {
        String ossFilePath = dataBean.getOssFilePath();
        if (this.taskManager.isTaskSyncingOrFinished(ossFilePath)) {
            return;
        }
        String localSavePath = dataBean.getLocalSavePath();
        KSyncBundle kSyncBundle = KSyncBundle.INSTANCE;
        FileUtils fileUtils = FileUtils.INSTANCE;
        if (!kSyncBundle.isUserStorageEnough(fileUtils.getFileSize(localSavePath))) {
            m35627o(dataBean, OnyxErrorType.INSTANCE.getUSER_STORAGE_TOO_LOW());
            kSyncBundle.setNeedUpdateUserStorage(true);
            KSyncLogUtils.INSTANCE.m35865e(getClass(), "user storage is not enough");
            return;
        }
        if (fileUtils.isEmpty(localSavePath)) {
            KSyncLogUtils.INSTANCE.m35865e(getClass(), "upload data path is empty:" + localSavePath);
            m35628p(dataBean);
            return;
        }
        if (this.replicatorInfo.getDebugLog()) {
            KSyncLogUtils.INSTANCE.m35864d(getClass(), "push ossFileKey: " + dataBean.getSyncOssPath() + " upload file Path: " + localSavePath);
        }
        postSyncProgressEvent();
        this.taskManager.startPush(new StartTaskBean().setSyncRecordType(dataBean.getRecordType()).setKey(ossFilePath));
        m35632u(dataBean);
    }

    /* renamed from: u */
    public final void m35632u(final SyncDataBean dataBean) {
        String localSavePath = dataBean.getLocalSavePath();
        String ossFilePath = dataBean.getOssFilePath();
        PutObjectBean putObjectBean = new PutObjectBean(null, null, null, 7, null);
        putObjectBean.setUploadFilePath(localSavePath);
        putObjectBean.setOssFileObjectKey(dataBean.getSyncOssPath());
        Disposable subscribe = computeFileMD5Observable(localSavePath).flatMap(new C7816i(putObjectBean, this)).observeOn(AndroidSchedulers.mainThread()).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.oue
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                DataReplicator.m35616v(DataReplicator.this, dataBean);
            }
        }).doOnError(new C7817j(dataBean)).subscribe();
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.taskManager.startPush(new StartTaskBean().setKey(ossFilePath).setSyncRecordType(dataBean.getRecordType()).setTaskDisposable(subscribe));
    }

    @NotNull
    public final Observable<ClusterInfo> updateClusterInfoObservable() {
        Observable map = ClusterManager.INSTANCE.getCurrentClusterObservable().map(new C7819l());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: w */
    public final SaveDataFileRequest m35633w(SyncDataBean dataBean, GetObjectResult result) throws Exception {
        SaveDataFileRequest saveDataFileRequest = new SaveDataFileRequest(dataBean, result);
        saveDataFileRequest.execute();
        onPullDataSaveSuccess(dataBean);
        KSyncLogUtils.INSTANCE.m35864d(getClass(), "pull success: " + dataBean.getLocalSavePath());
        return saveDataFileRequest;
    }

    /* renamed from: x */
    public final ClusterInfo m35634x(ClusterInfo clusterInfo) {
        this.clusterInfo = clusterInfo;
        return clusterInfo;
    }

    /* renamed from: y */
    public final void m35635y() {
        List<SyncDataBean> list = this.syncDataBeans;
        if (list == null || list.isEmpty()) {
            postSyncProgressEvent();
            return;
        }
        ArrayList arrayList = new ArrayList(this.syncDataBeans);
        Iterator<SyncDataBean> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            this.taskManager.placeTaskHolder(it2.next().getOssFilePath());
        }
        if (this.taskManager.isAllTaskFinished()) {
            postSyncProgressEvent();
            return;
        }
        if (!NetworkUtils.INSTANCE.isWifiConnected(ResManager.INSTANCE.getAppContext())) {
            m35623k(arrayList);
            return;
        }
        for (SyncDataBean syncDataBean : arrayList) {
            if (this.taskManager.isSyncTaskOutOfLimit()) {
                return;
            }
            int i = syncDataBean.getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_SYNC_STATUS java.lang.String();
            if (i == 1) {
                m35630r(syncDataBean);
            } else if (i == 2) {
                m35631t(syncDataBean);
            } else if (i == 3) {
                m35619f(syncDataBean);
            }
        }
    }

    /* renamed from: z */
    public final void m35636z() {
        if (CollectionKt.isNonBlank(this.syncDataBeans)) {
            m35635y();
        }
    }
}
