package com.onyx.android.sdk.replicator.replicator;

import com.couchbase.lite.Collection;
import com.couchbase.lite.Conflict;
import com.couchbase.lite.ConflictResolver;
import com.couchbase.lite.Database;
import com.couchbase.lite.Document;
import com.couchbase.lite.DocumentReplication;
import com.couchbase.lite.DocumentReplicationListener;
import com.couchbase.lite.ReplicatedDocument;
import com.couchbase.lite.ReplicationFilter;
import com.couchbase.lite.ReplicatorChange;
import com.couchbase.lite.ReplicatorChangeListener;
import com.couchbase.lite.ReplicatorStatus;
import com.couchbase.lite.ReplicatorType;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.eventbus.EventBusHolder;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.scheduler.RxScheduler;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.RxTimerUtil;
import com.onyx.android.sdk.bundle.DBProviderBundle;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.couchbase.CouchHolder;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.bean.ReplicatorError;
import com.onyx.android.sdk.data.couchbase.bean.StartReplicatorBean;
import com.onyx.android.sdk.data.couchbase.bean.SyncGateway;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfo;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfoUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.bean.ReplicatorArgs;
import com.onyx.android.sdk.replicator.bean.ReplicatorBean;
import com.onyx.android.sdk.replicator.replicator.BaseReplicator;
import com.onyx.android.sdk.replicator.utils.KSyncLogUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000è\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\u0006\n\u0002\u0010#\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010`\u001a\u00020[\u0012\b\u0010²\u0001\u001a\u00030±\u0001¢\u0006\u0006\b³\u0001\u0010´\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\b\u001a\u00020\u0004H\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\f\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tH\u0002J\b\u0010\r\u001a\u00020\u0004H\u0002J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0010\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\b\u0010\u0016\u001a\u00020\u0015H\u0002J\n\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0014J\u0006\u0010\u001a\u001a\u00020\u0019J\b\u0010\u001b\u001a\u00020\u0019H\u0016J\u000e\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00000\u001cH\u0016J\b\u0010\u001e\u001a\u00020\u0006H\u0014J\u0010\u0010!\u001a\u00020\u00002\b\u0010 \u001a\u0004\u0018\u00010\u001fJ\u0010\u0010#\u001a\u00020\u00002\b\u0010\"\u001a\u0004\u0018\u00010\u001fJ\u0010\u0010&\u001a\u00020\u00002\b\u0010%\u001a\u0004\u0018\u00010$J\u0010\u0010*\u001a\u0004\u0018\u00010)2\u0006\u0010(\u001a\u00020'J\u0006\u0010,\u001a\u00020+J\u0006\u0010-\u001a\u00020\u0004J\u0010\u0010.\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0001J\u000e\u00100\u001a\u00020\u00042\u0006\u0010/\u001a\u00020+J\u000e\u00102\u001a\u00020\u00042\u0006\u00101\u001a\u00020+J\u000e\u00104\u001a\u00020\u00042\u0006\u00103\u001a\u00020+J\u000e\u00107\u001a\u00020\u00042\u0006\u00106\u001a\u000205J\u0016\u0010;\u001a\u00020\u00002\u000e\u0010:\u001a\n\u0012\u0004\u0012\u000209\u0018\u000108J\u000e\u0010=\u001a\u00020\u00042\u0006\u0010<\u001a\u000209J\u000e\u0010>\u001a\u00020\u00042\u0006\u0010<\u001a\u000209J\u0010\u0010?\u001a\u00020+2\b\u0010<\u001a\u0004\u0018\u000109J\u0006\u0010@\u001a\u00020\u0006J\b\u0010A\u001a\u0004\u0018\u00010\u0006J\u0016\u0010D\u001a\u00020\u00002\u000e\u0010C\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001090BJ\u0012\u0010G\u001a\u00020+2\n\b\u0002\u0010F\u001a\u0004\u0018\u00010EJ\u0006\u0010H\u001a\u00020+J\b\u0010I\u001a\u00020\u0004H&J\u000e\u0010J\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tJ\u0010\u0010K\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0010\u0010L\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\f\u0010M\u001a\b\u0012\u0004\u0012\u0002090BJ\f\u0010N\u001a\b\u0012\u0004\u0012\u0002090BJ\f\u0010O\u001a\b\u0012\u0004\u0012\u0002090BJ\f\u0010P\u001a\b\u0012\u0004\u0012\u0002090BJ\f\u0010Q\u001a\b\u0012\u0004\u0012\u0002090BJ\f\u0010R\u001a\b\u0012\u0004\u0012\u0002090BJ\f\u0010S\u001a\b\u0012\u0004\u0012\u0002090BJ\u0006\u0010T\u001a\u00020+J\u0006\u0010V\u001a\u00020UJ\u0006\u0010W\u001a\u00020\u0004J\u0006\u0010X\u001a\u00020+J\u0006\u0010Y\u001a\u00020\u0000J\u0006\u0010Z\u001a\u00020\u0000R\u0017\u0010`\u001a\u00020[8\u0006¢\u0006\f\n\u0004\b\\\u0010]\u001a\u0004\b^\u0010_R\u0018\u0010c\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\ba\u0010bR\u001b\u0010h\u001a\u00020d8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010e\u001a\u0004\bf\u0010gR\u001b\u0010m\u001a\u00020i8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bj\u0010e\u001a\u0004\bk\u0010lR\u001a\u0010q\u001a\b\u0012\u0004\u0012\u0002090n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bo\u0010pR\u001a\u0010r\u001a\b\u0012\u0004\u0012\u0002090n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010pR\u001a\u0010s\u001a\b\u0012\u0004\u0012\u0002090n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010pR\u001a\u0010t\u001a\b\u0012\u0004\u0012\u0002090n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bf\u0010pR8\u0010x\u001a&\u0012\f\u0012\n v*\u0004\u0018\u00010909 v*\u0012\u0012\f\u0012\n v*\u0004\u0018\u00010909\u0018\u0001080u8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010wR\u0016\u0010z\u001a\u0002058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010yR\u0016\u00101\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010{R\u0016\u00103\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010{R\"\u0010|\u001a\u00020+8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010{\u001a\u0004\b|\u0010}\"\u0004\b~\u0010\u007fR%\u0010\u0080\u0001\u001a\u00020+8\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b\f\u0010{\u001a\u0005\b\u0080\u0001\u0010}\"\u0005\b\u0081\u0001\u0010\u007fR\u001a\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0007\u0010\u0082\u0001R\u0019\u0010\"\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\r\u0010\u0082\u0001R\u0019\u0010%\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0005\u0010\u0084\u0001R\u0019\u0010\u0087\u0001\u001a\u00030\u0085\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u000e\u0010\u0086\u0001R\u0018\u0010\u0089\u0001\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0088\u0001\u0010{R\u001a\u0010\u008d\u0001\u001a\u00030\u008a\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008b\u0001\u0010\u008c\u0001R\u001b\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008e\u0001\u0010\u008f\u0001R)\u0010\u0097\u0001\u001a\u0002098\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u0091\u0001\u0010\u0092\u0001\u001a\u0006\b\u0093\u0001\u0010\u0094\u0001\"\u0006\b\u0095\u0001\u0010\u0096\u0001R\u0017\u0010\u0099\u0001\u001a\u0002098&X¦\u0004¢\u0006\b\u001a\u0006\b\u0098\u0001\u0010\u0094\u0001R\u0015\u0010\u009d\u0001\u001a\u00030\u009a\u00018F¢\u0006\b\u001a\u0006\b\u009b\u0001\u0010\u009c\u0001R\u0015\u0010¡\u0001\u001a\u00030\u009e\u00018F¢\u0006\b\u001a\u0006\b\u009f\u0001\u0010 \u0001R\u001c\u0010¤\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001090B8F¢\u0006\b\u001a\u0006\b¢\u0001\u0010£\u0001R\u0013\u0010¥\u0001\u001a\u00020+8F¢\u0006\u0007\u001a\u0005\b¥\u0001\u0010}R\u0015\u0010¨\u0001\u001a\u00030\u0085\u00018F¢\u0006\b\u001a\u0006\b¦\u0001\u0010§\u0001R\u0013\u0010©\u0001\u001a\u00020+8F¢\u0006\u0007\u001a\u0005\b©\u0001\u0010}R\u0015\u0010¬\u0001\u001a\u00030\u008a\u00018F¢\u0006\b\u001a\u0006\bª\u0001\u0010«\u0001R\u0014\u0010®\u0001\u001a\u0002098F¢\u0006\b\u001a\u0006\b\u00ad\u0001\u0010\u0094\u0001R\u0017\u0010°\u0001\u001a\u0002098VX\u0096\u0004¢\u0006\b\u001a\u0006\b¯\u0001\u0010\u0094\u0001¨\u0006µ\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;", "", "Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;", C6998g.f39679a, "", "q", "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", C4921e.f26528e, "c", "Lcom/couchbase/lite/ReplicatorChange;", "change", "i", GoogleApiAvailabilityLight.f29016b, "p", "r", "Lcom/couchbase/lite/DocumentReplication;", "replication", C4921e.f26537n, "j", "l", "m", "Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;", C6997f.f39671c, "Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;", "getSyncGateway", "Lcom/couchbase/lite/Collection;", "ensureCollectionRequireNonNull", "ensureCollection", "Lio/reactivex/rxjava3/core/Observable;", "createBaseObservable", "createCouchHolder", "Lcom/couchbase/lite/ReplicationFilter;", "filter", "setPushFilter", "pullFilter", "setPullFilter", "Lcom/couchbase/lite/ConflictResolver;", "conflictResolver", "setConflictResolver", "Lcom/couchbase/lite/Conflict;", "conflict", "Lcom/couchbase/lite/Document;", "handleConflictResolver", "", "isSyncEnabled", "sendReplicatorInfoBroadcast", "post", "retry", "setRetryWhenError", "continuous", "setContinuous", "enableLog", "setEnableLog", "Lcom/couchbase/lite/ReplicatorType;", "type", "setReplicatorType", "", "", Constant.MAP_TAG, "setDisabledSyncDocIdMap", "documentId", "addDisabledSyncDocId", "removeDisabledSyncDocId", "isEnabledSyncDocId", "ensureCouchDb", "getCouchHolder", "", "channels", "setSyncChannels", "Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;", "args", "startReplicator", "hasReplicator", "onSyncChangeFinished", "onSyncChanged", "onPulledDocument", "onPushedDocument", "detachPullDeleteDocIdList", "detachPullUpdateDocIdList", "detachPushUpdateDocIdList", "detachErrorPushDocIdList", "getPullDeleteDocIdList", "getPullUpdateDocIdList", "getPushUpdateDocIdList", Constants.CLEAR_ATTRIBUTES, "Lcom/couchbase/lite/Database;", "ensureDB", "delete", "hasSynced", "closeReplicator", "stopReplicator", "Lcom/onyx/android/sdk/bundle/DBProviderBundle;", "a", "Lcom/onyx/android/sdk/bundle/DBProviderBundle;", "getProviderBundle", "()Lcom/onyx/android/sdk/bundle/DBProviderBundle;", "providerBundle", "b", "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "couchHolder", "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "Lkotlin/Lazy;", C6999h.f39688c, "()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "rxScheduler", "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", "d", "getEventBusHolder", "()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", "eventBusHolder", "", "e", "Ljava/util/List;", "pullUpdateDocIdList", "pushUpdateDocIdList", "pullDeleteDocIdList", "errorPushDocIdList", "", "kotlin.jvm.PlatformType", "Ljava/util/Set;", "disabledSyncDocIdMap", "Lcom/couchbase/lite/ReplicatorType;", "replicatorType", Constants.HASIDCALL_INDEX_SIG, "isPushed", Constants.BOOLEAN_VALUE_SIG, "setPushed", "(Z)V", "isLoadedDisabledSyncDocId", "setLoadedDisabledSyncDocId", "Lcom/couchbase/lite/ReplicationFilter;", "pushFilter", "Lcom/couchbase/lite/ConflictResolver;", "", "I", "retryCount", "s", "retryWhenError", "", "t", "J", "lastRetryTime", "u", "Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;", "retryTimerObserver", "v", Constants.STRING_SIG, "getUserId", "()Ljava/lang/String;", "setUserId", "(Ljava/lang/String;)V", Constant.TAG_USER_ID, "getCouchName", "couchName", "Lio/reactivex/rxjava3/core/Scheduler;", "getObserveOn", "()Lio/reactivex/rxjava3/core/Scheduler;", "observeOn", "Lcom/onyx/android/sdk/replicator/bean/ReplicatorBean;", "getReplicatorBean", "()Lcom/onyx/android/sdk/replicator/bean/ReplicatorBean;", "replicatorBean", "getSyncChannels", "()Ljava/util/List;", "syncChannels", "isSyncError", "getReplicatorStatus", "()I", "replicatorStatus", "isSyncIdle", "getCount", "()J", "count", "getDbId", CouchFieldKey.KEY_DB_ID, "getCbUserId", "cbUserId", "Lcom/onyx/android/sdk/replicator/bean/ReplicatorArgs;", "replicatorArgs", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/bundle/DBProviderBundle;Lcom/onyx/android/sdk/replicator/bean/ReplicatorArgs;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public abstract class BaseReplicator {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final DBProviderBundle providerBundle;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public CouchHolder couchHolder;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final Lazy rxScheduler;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final Lazy eventBusHolder;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final List<String> pullUpdateDocIdList;

    /* renamed from: f */
    @NotNull
    public final List<String> pushUpdateDocIdList;

    /* renamed from: g */
    @NotNull
    public final List<String> pullDeleteDocIdList;

    /* renamed from: h */
    @NotNull
    public final List<String> errorPushDocIdList;

    /* renamed from: i, reason: from kotlin metadata */
    public final Set<String> disabledSyncDocIdMap;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public ReplicatorType replicatorType;

    /* renamed from: k */
    public boolean continuous;

    /* renamed from: l */
    public boolean enableLog;

    /* renamed from: m */
    public boolean isPushed;

    /* renamed from: n */
    public boolean isLoadedDisabledSyncDocId;

    /* renamed from: o */
    @Nullable
    public ReplicationFilter pushFilter;

    /* renamed from: p, reason: from kotlin metadata */
    @Nullable
    public ReplicationFilter pullFilter;

    /* renamed from: q, reason: from kotlin metadata */
    @Nullable
    public ConflictResolver conflictResolver;

    /* renamed from: r, reason: from kotlin metadata */
    public int retryCount;

    /* renamed from: s */
    public boolean retryWhenError;

    /* renamed from: t, reason: from kotlin metadata */
    public long lastRetryTime;

    /* renamed from: u, reason: from kotlin metadata */
    @Nullable
    public RxTimerUtil.TimerObserver retryTimerObserver;

    /* renamed from: v */
    @NotNull
    public String userId;

    /* renamed from: com.onyx.android.sdk.replicator.replicator.BaseReplicator$a */
    /* loaded from: classes8.dex */
    public static final class C7806a<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ ReplicatorChange f46122f;

        public C7806a(ReplicatorChange replicatorChange) {
            this.f46122f = replicatorChange;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a */
        public final BaseReplicator apply(@NotNull BaseReplicator it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BaseReplicator.this.m35604n(this.f46122f);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.BaseReplicator$b */
    /* loaded from: classes8.dex */
    public static final class C7807b<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ DocumentReplication f46124f;

        public C7807b(DocumentReplication documentReplication) {
            this.f46124f = documentReplication;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a */
        public final BaseReplicator apply(@NotNull BaseReplicator it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BaseReplicator.this.m35600j(this.f46124f);
        }
    }

    public BaseReplicator(@NotNull DBProviderBundle providerBundle, @NotNull ReplicatorArgs replicatorArgs) {
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(providerBundle, "providerBundle");
        Intrinsics.checkNotNullParameter(replicatorArgs, "replicatorArgs");
        this.providerBundle = providerBundle;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<RxScheduler>() { // from class: com.onyx.android.sdk.replicator.replicator.BaseReplicator$rxScheduler$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final RxScheduler invoke() {
                return RxScheduler.INSTANCE.newSingleThreadManager();
            }
        });
        this.rxScheduler = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<EventBusHolder>() { // from class: com.onyx.android.sdk.replicator.replicator.BaseReplicator$eventBusHolder$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final EventBusHolder invoke() {
                return new EventBusHolder(null, 1, null);
            }
        });
        this.eventBusHolder = lazy2;
        this.pullUpdateDocIdList = new ArrayList();
        this.pushUpdateDocIdList = new ArrayList();
        this.pullDeleteDocIdList = new ArrayList();
        this.errorPushDocIdList = new ArrayList();
        this.disabledSyncDocIdMap = Collections.synchronizedSet(new LinkedHashSet());
        this.replicatorType = ReplicatorType.PUSH_AND_PULL;
        this.retryWhenError = true;
        this.userId = replicatorArgs.getUserId();
    }

    /* renamed from: d */
    public static final void m35593d(BaseReplicator this$0, DocumentReplication replication) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(replication, "replication");
        this$0.m35601k(replication);
    }

    /* renamed from: e */
    public static final void m35594e(BaseReplicator this$0, ReplicatorChange change) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(change, "change");
        this$0.m35599i(change);
    }

    public static /* synthetic */ boolean startReplicator$default(BaseReplicator baseReplicator, StartReplicatorBean startReplicatorBean, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: startReplicator");
        }
        if ((i & 1) != 0) {
            startReplicatorBean = null;
        }
        return baseReplicator.startReplicator(startReplicatorBean);
    }

    public final void addDisabledSyncDocId(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        this.disabledSyncDocIdMap.add(documentId);
    }

    /* renamed from: c */
    public final void m35595c() {
        if (ensureCouchDb().hasReplicationListener()) {
            return;
        }
        ensureCouchDb().addDocumentReplicationListener(new DocumentReplicationListener() { // from class: com.sunia.HTREnginev2.fo
            @Override // com.couchbase.lite.DocumentReplicationListener
            public final void replication(DocumentReplication documentReplication) {
                BaseReplicator.m35593d(BaseReplicator.this, documentReplication);
            }
        });
        ensureCouchDb().addChangeListener(new ReplicatorChangeListener() { // from class: com.sunia.HTREnginev2.go
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.couchbase.lite.ReplicatorChangeListener, com.couchbase.lite.ChangeListener
            public final void changed(ReplicatorChange replicatorChange) {
                BaseReplicator.m35594e(BaseReplicator.this, replicatorChange);
            }
        });
    }

    public final boolean clear() {
        return CouchHolder.CouchDataProvider.INSTANCE.clear(ensureCouchDb());
    }

    @NotNull
    public final BaseReplicator closeReplicator() {
        if (this.couchHolder == null) {
            return this;
        }
        this.isLoadedDisabledSyncDocId = false;
        this.providerBundle.closeCouchHolder(m35596f());
        this.couchHolder = null;
        this.disabledSyncDocIdMap.clear();
        m35606p();
        return this;
    }

    @NotNull
    public Observable<BaseReplicator> createBaseObservable() {
        Observable<BaseReplicator> observeOn = Observable.just(this).observeOn(getObserveOn());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @NotNull
    public CouchHolder createCouchHolder() {
        return this.providerBundle.getNoteCouchHolder(m35596f());
    }

    public final void delete() {
        CouchHolder.CouchDataProvider.INSTANCE.delete(ensureCouchDb());
    }

    @NotNull
    public final List<String> detachErrorPushDocIdList() {
        ArrayList arrayList = new ArrayList(this.errorPushDocIdList);
        this.errorPushDocIdList.clear();
        return arrayList;
    }

    @NotNull
    public final List<String> detachPullDeleteDocIdList() {
        ArrayList arrayList = new ArrayList(this.pullDeleteDocIdList);
        this.pullDeleteDocIdList.clear();
        return arrayList;
    }

    @NotNull
    public final List<String> detachPullUpdateDocIdList() {
        ArrayList arrayList = new ArrayList(this.pullUpdateDocIdList);
        this.pullUpdateDocIdList.clear();
        return arrayList;
    }

    @NotNull
    public final List<String> detachPushUpdateDocIdList() {
        ArrayList arrayList = new ArrayList(this.pushUpdateDocIdList);
        this.pushUpdateDocIdList.clear();
        return arrayList;
    }

    @NotNull
    public Collection ensureCollection() {
        return CouchHolder.ensureCollection$default(ensureCouchDb(), null, 1, null);
    }

    @NotNull
    public final Collection ensureCollectionRequireNonNull() {
        return ensureCouchDb().ensureCollectionRequireNonNull();
    }

    @NotNull
    public final CouchHolder ensureCouchDb() {
        if (this.couchHolder == null) {
            this.couchHolder = m35605o();
        }
        CouchHolder couchHolder = this.couchHolder;
        Intrinsics.checkNotNull(couchHolder, "null cannot be cast to non-null type com.onyx.android.sdk.data.couchbase.CouchHolder");
        return couchHolder;
    }

    @NotNull
    public final Database ensureDB() {
        return ensureCouchDb().ensureDB();
    }

    /* renamed from: f */
    public final ProviderInfo m35596f() {
        return ProviderInfoUtils.INSTANCE.getNoteProviderInfo(this.userId, getCouchName());
    }

    /* renamed from: g */
    public final RxTimerUtil.TimerObserver m35597g() {
        if (this.retryTimerObserver == null) {
            this.retryTimerObserver = new RxTimerUtil.TimerObserver() { // from class: com.onyx.android.sdk.replicator.replicator.BaseReplicator$getRetryTimerObserver$1
                @Override // io.reactivex.rxjava3.core.Observer
                public /* bridge */ /* synthetic */ void onNext(Long l) {
                    onNext(l.longValue());
                }

                public void onNext(long aLong) {
                    BaseReplicator.this.m35607q();
                }
            };
        }
        RxTimerUtil.TimerObserver timerObserver = this.retryTimerObserver;
        Intrinsics.checkNotNull(timerObserver, "null cannot be cast to non-null type com.onyx.android.sdk.base.utils.RxTimerUtil.TimerObserver");
        return timerObserver;
    }

    @NotNull
    public String getCbUserId() {
        String userId;
        CouchHolder couchHolder = this.couchHolder;
        return (couchHolder == null || (userId = couchHolder.getUserId()) == null) ? "" : userId;
    }

    @Nullable
    public final CouchHolder getCouchHolder() {
        return this.couchHolder;
    }

    @NotNull
    public abstract String getCouchName();

    public final long getCount() {
        return ensureCouchDb().getCount();
    }

    @NotNull
    public final String getDbId() {
        return CouchUtils.INSTANCE.dbFullName(getCbUserId(), getCouchName());
    }

    @NotNull
    public final EventBusHolder getEventBusHolder() {
        return (EventBusHolder) this.eventBusHolder.getValue();
    }

    @NotNull
    public final Scheduler getObserveOn() {
        return m35598h().getObserveOn();
    }

    @NotNull
    public final DBProviderBundle getProviderBundle() {
        return this.providerBundle;
    }

    @NotNull
    public final List<String> getPullDeleteDocIdList() {
        return this.pullDeleteDocIdList;
    }

    @NotNull
    public final List<String> getPullUpdateDocIdList() {
        return this.pullUpdateDocIdList;
    }

    @NotNull
    public final List<String> getPushUpdateDocIdList() {
        return this.pushUpdateDocIdList;
    }

    @NotNull
    public final ReplicatorBean getReplicatorBean() {
        ReplicatorBean replicatorBean = new ReplicatorBean();
        if (getCouchHolder() == null) {
            replicatorBean.setStatus(9);
        } else {
            CouchHolder couchHolder = getCouchHolder();
            if (couchHolder != null) {
                ReplicatorBean status = replicatorBean.setStatus(couchHolder.getReplicatorStatus());
                CouchHolder couchHolder2 = getCouchHolder();
                Intrinsics.checkNotNull(couchHolder2);
                status.setError(couchHolder2.replicatorError());
            }
        }
        SyncGateway syncGateway = getSyncGateway();
        boolean z = false;
        if (syncGateway != null && syncGateway.isInValid()) {
            z = true;
        }
        if (z) {
            ReplicatorError code = new ReplicatorError().setCode(100);
            SyncGateway syncGateway2 = getSyncGateway();
            replicatorBean.setError(code.setMessage(syncGateway2 != null ? syncGateway2.getError() : null));
        }
        return replicatorBean;
    }

    public final int getReplicatorStatus() {
        return ensureCouchDb().getReplicatorStatus();
    }

    @NotNull
    public final List<String> getSyncChannels() {
        return ensureCouchDb().getSyncChannels();
    }

    @Nullable
    public SyncGateway getSyncGateway() {
        return KSyncBundle.INSTANCE.getSyncGateway();
    }

    @NotNull
    public final String getUserId() {
        return this.userId;
    }

    /* renamed from: h */
    public final RxScheduler m35598h() {
        return (RxScheduler) this.rxScheduler.getValue();
    }

    @Nullable
    public final Document handleConflictResolver(@NotNull Conflict conflict) {
        Intrinsics.checkNotNullParameter(conflict, "conflict");
        if (conflict.getRemoteDocument() == null && conflict.getLocalDocument() == null) {
            return null;
        }
        if (conflict.getRemoteDocument() != null && conflict.getLocalDocument() == null) {
            return conflict.getRemoteDocument();
        }
        if (conflict.getRemoteDocument() == null && conflict.getLocalDocument() != null) {
            return conflict.getLocalDocument();
        }
        Document remoteDocument = conflict.getRemoteDocument();
        Intrinsics.checkNotNull(remoteDocument);
        long j = remoteDocument.getLong("updatedAt");
        Document localDocument = conflict.getLocalDocument();
        Intrinsics.checkNotNull(localDocument);
        long j2 = localDocument.getLong("updatedAt");
        KSyncLogUtils kSyncLogUtils = KSyncLogUtils.INSTANCE;
        Class<?> cls = getClass();
        StringBuilder sb = new StringBuilder();
        sb.append("handleConflictResolver local time:");
        DateTimeUtil dateTimeUtil = DateTimeUtil.INSTANCE;
        sb.append(dateTimeUtil.formatDate(j2));
        sb.append("，remote time: ");
        sb.append(dateTimeUtil.formatDate(j));
        kSyncLogUtils.m35864d(cls, sb.toString());
        return j >= j2 ? conflict.getRemoteDocument() : conflict.getLocalDocument();
    }

    public final boolean hasReplicator() {
        CouchHolder couchHolder = this.couchHolder;
        if (couchHolder != null) {
            Intrinsics.checkNotNull(couchHolder);
            if (couchHolder.hasReplicator()) {
                return true;
            }
        }
        return false;
    }

    public final boolean hasSynced() {
        return (this.pushUpdateDocIdList.isEmpty() ^ true) || (this.pullUpdateDocIdList.isEmpty() ^ true) || (this.pullDeleteDocIdList.isEmpty() ^ true);
    }

    /* renamed from: i */
    public final void m35599i(ReplicatorChange change) {
        createBaseObservable().map(new C7806a(change)).subscribe();
    }

    public final boolean isEnabledSyncDocId(@Nullable String documentId) {
        if (this.disabledSyncDocIdMap.contains(documentId)) {
            return false;
        }
        CouchHolder couchHolder = this.couchHolder;
        return couchHolder != null && couchHolder.isEnabledSyncDocId(documentId);
    }

    /* renamed from: isLoadedDisabledSyncDocId, reason: from getter */
    public final boolean getIsLoadedDisabledSyncDocId() {
        return this.isLoadedDisabledSyncDocId;
    }

    /* renamed from: isPushed, reason: from getter */
    public final boolean getIsPushed() {
        return this.isPushed;
    }

    public final boolean isSyncEnabled() {
        return true;
    }

    public final boolean isSyncError() {
        CouchHolder couchHolder = this.couchHolder;
        if (couchHolder != null) {
            Intrinsics.checkNotNull(couchHolder);
            if (couchHolder.isSyncError()) {
                return true;
            }
        }
        return false;
    }

    public final boolean isSyncIdle() {
        return ensureCouchDb().isSyncIdle();
    }

    /* renamed from: j */
    public final BaseReplicator m35600j(DocumentReplication replication) {
        ensureCouchDb().printDocumentReplicationLog(replication);
        if (replication.isPush()) {
            m35603m(replication);
        } else {
            m35602l(replication);
        }
        return this;
    }

    /* renamed from: k */
    public final void m35601k(DocumentReplication documentReplication) {
        createBaseObservable().map(new C7807b(documentReplication)).subscribe();
    }

    /* renamed from: l */
    public final void m35602l(DocumentReplication replication) {
        for (ReplicatedDocument replicatedDocument : replication.getDocuments()) {
            CouchUtils couchUtils = CouchUtils.INSTANCE;
            Intrinsics.checkNotNull(replicatedDocument);
            if (couchUtils.checkReplicatedDocumentValid(replication, replicatedDocument) && !this.pullUpdateDocIdList.contains(replicatedDocument.getID())) {
                List<String> list = this.pullUpdateDocIdList;
                String id = replicatedDocument.getID();
                Intrinsics.checkNotNullExpressionValue(id, "getID(...)");
                list.add(id);
            }
            if (couchUtils.isDeleteDocument(replicatedDocument) && !this.pullDeleteDocIdList.contains(replicatedDocument.getID())) {
                List<String> list2 = this.pullDeleteDocIdList;
                String id2 = replicatedDocument.getID();
                Intrinsics.checkNotNullExpressionValue(id2, "getID(...)");
                list2.add(id2);
            }
        }
        KSyncLogUtils.INSTANCE.m35866i(getClass(), "pull doc count: " + CollectionKt.getSize(replication.getDocuments()));
        onPulledDocument(replication);
    }

    /* renamed from: m */
    public final void m35603m(DocumentReplication replication) {
        for (ReplicatedDocument replicatedDocument : replication.getDocuments()) {
            CouchUtils couchUtils = CouchUtils.INSTANCE;
            Intrinsics.checkNotNull(replicatedDocument);
            if (couchUtils.checkReplicatedDocumentValid(replication, replicatedDocument) && !this.pushUpdateDocIdList.contains(replicatedDocument.getID())) {
                List<String> list = this.pushUpdateDocIdList;
                String id = replicatedDocument.getID();
                Intrinsics.checkNotNullExpressionValue(id, "getID(...)");
                list.add(id);
            }
            if (replicatedDocument.getError() != null) {
                List<String> list2 = this.errorPushDocIdList;
                String id2 = replicatedDocument.getID();
                Intrinsics.checkNotNullExpressionValue(id2, "getID(...)");
                list2.add(id2);
            }
            KSyncLogUtils.INSTANCE.m35864d(getClass(), "push doc id: " + replicatedDocument.getID());
        }
        KSyncLogUtils.INSTANCE.m35866i(getClass(), "push doc count: " + CollectionKt.getSize(replication.getDocuments()));
        this.isPushed = true;
        onPushedDocument(replication);
    }

    /* renamed from: n */
    public final BaseReplicator m35604n(ReplicatorChange replicatorChange) {
        onSyncChanged(replicatorChange);
        if (getCouchHolder() == null) {
            return this;
        }
        ensureCouchDb().printChangeLog(replicatorChange);
        CouchHolder ensureCouchDb = ensureCouchDb();
        ReplicatorStatus status = replicatorChange.getStatus();
        Intrinsics.checkNotNullExpressionValue(status, "getStatus(...)");
        if (ensureCouchDb.isSyncFinished(status)) {
            onSyncChangeFinished();
            m35608r(replicatorChange);
        }
        return this;
    }

    /* renamed from: o */
    public final CouchHolder m35605o() {
        return createCouchHolder().setReplicatorType(this.replicatorType).setContinuous(this.continuous).setPushFilter(this.pushFilter).setPullFilter(this.pullFilter).setConflictResolver(this.conflictResolver);
    }

    public void onPulledDocument(@NotNull DocumentReplication replication) {
        Intrinsics.checkNotNullParameter(replication, "replication");
    }

    public void onPushedDocument(@NotNull DocumentReplication replication) {
        Intrinsics.checkNotNullParameter(replication, "replication");
    }

    public abstract void onSyncChangeFinished();

    public final void onSyncChanged(@NotNull ReplicatorChange change) {
        Intrinsics.checkNotNullParameter(change, "change");
    }

    /* renamed from: p */
    public final void m35606p() {
        this.retryCount = 0;
        this.lastRetryTime = 0L;
        RxTimerUtil.INSTANCE.cancel(this.retryTimerObserver);
    }

    public final void post(@Nullable Object r1) {
        getEventBusHolder().post(r1);
    }

    /* renamed from: q */
    public final void m35607q() {
        startReplicator$default(this, null, 1, null);
        this.retryCount++;
        this.lastRetryTime = System.currentTimeMillis();
        KSyncLogUtils.INSTANCE.m35865e(getClass(), getClass().getSimpleName() + " retry : " + this.retryCount);
    }

    /* renamed from: r */
    public final void m35608r(ReplicatorChange change) {
        if (this.retryWhenError) {
            if (change.getStatus().getError() == null) {
                m35606p();
                return;
            }
            if (this.retryCount < 3) {
                long min = (int) Math.min(3000L, System.currentTimeMillis() - this.lastRetryTime);
                if (min >= 3000) {
                    m35607q();
                    return;
                }
                RxTimerUtil rxTimerUtil = RxTimerUtil.INSTANCE;
                rxTimerUtil.cancel(this.retryTimerObserver);
                rxTimerUtil.timer(3000 - min, m35597g());
            }
        }
    }

    public final void removeDisabledSyncDocId(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        this.disabledSyncDocIdMap.remove(documentId);
    }

    public final void sendReplicatorInfoBroadcast() {
        if (getCouchHolder() == null) {
            return;
        }
        new HashMap().put(getCouchName(), getReplicatorBean());
    }

    @NotNull
    public final BaseReplicator setConflictResolver(@Nullable ConflictResolver conflictResolver) {
        this.conflictResolver = conflictResolver;
        return this;
    }

    public final void setContinuous(boolean continuous) {
        this.continuous = continuous;
    }

    @NotNull
    public final BaseReplicator setDisabledSyncDocIdMap(@Nullable Set<String> r2) {
        Set<String> set = this.disabledSyncDocIdMap;
        Intrinsics.checkNotNull(r2);
        set.addAll(r2);
        this.isLoadedDisabledSyncDocId = true;
        return this;
    }

    public final void setEnableLog(boolean enableLog) {
        this.enableLog = enableLog;
    }

    public final void setLoadedDisabledSyncDocId(boolean z) {
        this.isLoadedDisabledSyncDocId = z;
    }

    @NotNull
    public final BaseReplicator setPullFilter(@Nullable ReplicationFilter pullFilter) {
        this.pullFilter = pullFilter;
        return this;
    }

    @NotNull
    public final BaseReplicator setPushFilter(@Nullable ReplicationFilter filter) {
        this.pushFilter = filter;
        return this;
    }

    public final void setPushed(boolean z) {
        this.isPushed = z;
    }

    public final void setReplicatorType(@NotNull ReplicatorType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.replicatorType = type;
    }

    public final void setRetryWhenError(boolean retry) {
        this.retryWhenError = retry;
    }

    @NotNull
    public final BaseReplicator setSyncChannels(@NotNull List<String> channels) {
        Intrinsics.checkNotNullParameter(channels, "channels");
        ensureCouchDb().setSyncChannels(channels);
        return this;
    }

    public final void setUserId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.userId = str;
    }

    public final boolean startReplicator(@Nullable StartReplicatorBean args) {
        ensureCouchDb().setSyncGateway(getSyncGateway());
        m35595c();
        return ensureCouchDb().startReplicator(args);
    }

    @NotNull
    public final BaseReplicator stopReplicator() {
        CouchHolder couchHolder = this.couchHolder;
        if (couchHolder != null) {
            couchHolder.stopReplicator();
        }
        return this;
    }
}
