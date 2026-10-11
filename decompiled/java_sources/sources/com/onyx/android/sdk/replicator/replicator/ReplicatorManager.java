package com.onyx.android.sdk.replicator.replicator;

import com.google.android.material.motion.MotionUtils;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.scheduler.RxScheduler;
import com.onyx.android.sdk.base.utils.RxTimerUtil;
import com.onyx.android.sdk.data.couchbase.bean.StartReplicatorBean;
import com.onyx.android.sdk.data.couchbase.bean.StartReplicatorBeanKt;
import com.onyx.android.sdk.replicator.bean.PendingDocReplicators;
import com.onyx.android.sdk.replicator.bean.ReplicatorInfo;
import com.onyx.android.sdk.replicator.replicator.action.ScheduleNextDocReplicatorAction;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u001e\n\u0002\b\u000e\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\\\u0010]J\b\u0010\u0003\u001a\u00020\u0002H\u0002J8\u0010\u000b\u001a\u00020\u00022\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00042\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00042\u0006\u0010\n\u001a\u00020\tH\u0002J\b\u0010\r\u001a\u00020\fH\u0002J\b\u0010\u000f\u001a\u00020\u000eH&J\u0010\u0010\u0010\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH&J\u000e\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0005J\u0006\u0010\u0013\u001a\u00020\u0002J\u0006\u0010\u0014\u001a\u00020\u0002J\u000e\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015J\b\u0010\u0018\u001a\u0004\u0018\u00010\u0015J\u000e\u0010\u0012\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tJ\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00000\u0019J\u0014\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00060\u00192\u0006\u0010\u001b\u001a\u00020\u0005J\u0014\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00060\u00192\u0006\u0010\u001b\u001a\u00020\u0005J\u000e\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u0015J\u000e\u0010 \u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tJ\u0006\u0010!\u001a\u00020\u0000J\u0006\u0010\"\u001a\u00020\u0000J\u0006\u0010#\u001a\u00020\u0000J\u000e\u0010$\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tJ\u000e\u0010%\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0005J\u000e\u0010&\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0005J\u000e\u0010(\u001a\u00020'2\u0006\u0010\u0011\u001a\u00020\u0005J\u0006\u0010)\u001a\u00020\u0002J\u0006\u0010*\u001a\u00020\u0002J\u0010\u0010+\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0011\u001a\u00020\u0005J\u000e\u0010,\u001a\u00020'2\u0006\u0010\u0011\u001a\u00020\u0005J\u000e\u0010-\u001a\u00020'2\u0006\u0010\u0011\u001a\u00020\u0005J\u000e\u0010.\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tJ\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060/J\b\u00101\u001a\u00020\u0002H\u0016J\u0006\u00103\u001a\u000202J\u0012\u00104\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060/J\b\u00105\u001a\u00020\u0000H\u0016J\u0006\u00106\u001a\u00020\u0002J\u0016\u00107\u001a\b\u0012\u0004\u0012\u00020\t0\u00192\u0006\u0010\n\u001a\u00020\tH\u0016R \u0010:\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006088\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u00109R \u0010;\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006088\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u00109R\u0014\u0010=\u001a\u0002028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010<R\u001a\u0010A\u001a\b\u0012\u0004\u0012\u00020\u00050>8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b?\u0010@R\u001a\u0010C\u001a\b\u0012\u0004\u0012\u00020\u00050>8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bB\u0010@R\u0014\u0010G\u001a\u00020D8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bE\u0010FR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010IR\u0011\u0010M\u001a\u00020J8F¢\u0006\u0006\u001a\u0004\bK\u0010LR\u0011\u0010N\u001a\u00020'8F¢\u0006\u0006\u001a\u0004\bN\u0010OR\u0019\u0010S\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060P8F¢\u0006\u0006\u001a\u0004\bQ\u0010RR\u0017\u0010U\u001a\b\u0012\u0004\u0012\u00020\u00060P8F¢\u0006\u0006\u001a\u0004\bT\u0010RR\u0011\u0010X\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\bV\u0010WR\u0011\u0010[\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\bY\u0010Z¨\u0006^"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;", "", "", "a", "", "", "Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;", "srcMap", "dstMap", "Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;", "replicatorInfo", "b", "", "c", "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;", "getTreeReplicator", "createDocReplicator", "documentId", "ensureDocReplicator", gon.f71290o0, "close", "Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;", "replicatorBean", "mergeStartReplicatorBean", "detachStartReplicatorBean", "Lio/reactivex/rxjava3/core/Observable;", "createObservable", EditorConstants.ARGS_DOC_ID, "ensureReplicatorObservable", "ensureReplicatorObservableWithoutPost", "startReplicatorBean", "addPendingDoc", "addWaitingDocReplicator", "clearDocReplicator", "clearQueue", "clearSyncReplicators", "onReplicateFail", "addClosingDocId", "removeClosingDocId", "", "isClosingDocId", "scheduleNextReplicator", "timerScheduleWaitingReplicator", "getRunningDocReplicator", "isRunningDocReplicator", "isRunningOrWaitingDocReplicator", "finishReplicator", "", "getRunningDocReplicatorMap", "onAllDocsSyncFinished", "Lcom/onyx/android/sdk/replicator/bean/PendingDocReplicators;", "getPendingDocReplicators", "getWaitingDocReplicatorMap", "postProgress", "checkClearFinishMapDocId", "addCommitPoint", "Ljava/util/LinkedHashMap;", "Ljava/util/LinkedHashMap;", "runningDocReplicatorMap", "waitingDocReplicatorMap", "Lcom/onyx/android/sdk/replicator/bean/PendingDocReplicators;", "pendingDocReplicators", "Ljava/util/LinkedHashSet;", "d", "Ljava/util/LinkedHashSet;", "finishDocIdMap", "e", "closingDocIdMap", "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", C6997f.f39671c, "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "rxScheduler", C6998g.f39679a, "Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;", "Lio/reactivex/rxjava3/core/Scheduler;", "getObserveOn", "()Lio/reactivex/rxjava3/core/Scheduler;", "observeOn", "isSyncEnabled", Constants.BOOLEAN_VALUE_SIG, "", "getRunningDocReplicatorList", "()Ljava/util/Collection;", "runningDocReplicatorList", "getOpenDocReplicatorList", "openDocReplicatorList", "getRunningDocInfo", "()Ljava/lang/String;", "runningDocInfo", "getProgress", "()I", "progress", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nReplicatorManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReplicatorManager.kt\ncom/onyx/android/sdk/replicator/replicator/ReplicatorManager\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,295:1\n215#2,2:296\n*S KotlinDebug\n*F\n+ 1 ReplicatorManager.kt\ncom/onyx/android/sdk/replicator/replicator/ReplicatorManager\n*L\n246#1:296,2\n*E\n"})
/* loaded from: classes8.dex */
public abstract class ReplicatorManager {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final LinkedHashMap<String, DocReplicator> runningDocReplicatorMap = new LinkedHashMap<>();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final LinkedHashMap<String, DocReplicator> waitingDocReplicatorMap = new LinkedHashMap<>();

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final PendingDocReplicators pendingDocReplicators = new PendingDocReplicators();

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final LinkedHashSet<String> finishDocIdMap = new LinkedHashSet<>();

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final LinkedHashSet<String> closingDocIdMap = new LinkedHashSet<>();

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final RxScheduler rxScheduler = RxScheduler.INSTANCE.newSingleThreadManager();

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public StartReplicatorBean startReplicatorBean;

    /* renamed from: com.onyx.android.sdk.replicator.replicator.ReplicatorManager$a */
    /* loaded from: classes8.dex */
    public static final class C7823a<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ String f46178f;

        public C7823a(String str) {
            this.f46178f = str;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DocReplicator apply(@NotNull ReplicatorManager it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ReplicatorManager.this.ensureDocReplicator(this.f46178f);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.ReplicatorManager$b */
    /* loaded from: classes8.dex */
    public static final class C7824b<T, R> implements Function {

        /* renamed from: e */
        public static final C7824b<T, R> f46179e = new C7824b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends DocReplicator> apply(@NotNull DocReplicator obj) {
            Intrinsics.checkNotNullParameter(obj, "obj");
            return obj.createObservable();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.ReplicatorManager$c */
    /* loaded from: classes8.dex */
    public static final class C7825c<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ String f46181f;

        public C7825c(String str) {
            this.f46181f = str;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DocReplicator apply(@NotNull ReplicatorManager it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ReplicatorManager.this.ensureDocReplicator(this.f46181f);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.ReplicatorManager$d */
    /* loaded from: classes8.dex */
    public static final class C7826d<T, R> implements Function {

        /* renamed from: e */
        public static final C7826d<T, R> f46182e = new C7826d<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends DocReplicator> apply(@NotNull DocReplicator obj) {
            Intrinsics.checkNotNullParameter(obj, "obj");
            return obj.createObservableWithoutPost();
        }
    }

    /* renamed from: a */
    public final void m35659a() throws Exception {
    }

    public final void addClosingDocId(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        this.closingDocIdMap.add(documentId);
    }

    @NotNull
    public Observable<ReplicatorInfo> addCommitPoint(@NotNull ReplicatorInfo replicatorInfo) throws Exception {
        Intrinsics.checkNotNullParameter(replicatorInfo, "replicatorInfo");
        Observable<ReplicatorInfo> just = Observable.just(replicatorInfo);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    @NotNull
    public final ReplicatorManager addPendingDoc(@NotNull StartReplicatorBean startReplicatorBean) {
        Intrinsics.checkNotNullParameter(startReplicatorBean, "startReplicatorBean");
        if (CollectionKt.isNullOrEmpty(startReplicatorBean.getSyncDocIdList())) {
            return this;
        }
        checkClearFinishMapDocId();
        for (String str : startReplicatorBean.getSyncDocIdList()) {
            this.pendingDocReplicators.addReplicator(str, startReplicatorBean.getTriggerSource(), !startReplicatorBean.getLibraryDocIdList().contains(str) ? 1 : 0).setUserId(getTreeReplicator().getCbUserId());
        }
        return this;
    }

    @NotNull
    public final ReplicatorManager addWaitingDocReplicator(@NotNull ReplicatorInfo replicatorInfo) {
        Intrinsics.checkNotNullParameter(replicatorInfo, "replicatorInfo");
        m35660b(this.runningDocReplicatorMap, this.waitingDocReplicatorMap, replicatorInfo);
        return this;
    }

    /* renamed from: b */
    public final void m35660b(Map<String, DocReplicator> srcMap, Map<String, DocReplicator> dstMap, ReplicatorInfo replicatorInfo) {
        DocReplicator remove;
        String documentId = replicatorInfo.getDocumentId();
        if (dstMap.containsKey(documentId) || (remove = srcMap.remove(documentId)) == null) {
            return;
        }
        dstMap.put(replicatorInfo.getDocumentId(), remove);
    }

    /* renamed from: c */
    public final int m35661c() {
        return getPendingDocReplicators().getSize() + getRunningDocReplicatorMap().size() + getWaitingDocReplicatorMap().size();
    }

    public final void checkClearFinishMapDocId() {
        if (m35661c() == 0) {
            this.finishDocIdMap.clear();
        }
    }

    @NotNull
    public final ReplicatorManager clearDocReplicator() throws Exception {
        m35659a();
        this.runningDocReplicatorMap.clear();
        return this;
    }

    @NotNull
    public final ReplicatorManager clearQueue() throws Exception {
        m35659a();
        this.waitingDocReplicatorMap.clear();
        this.pendingDocReplicators.clear();
        this.runningDocReplicatorMap.clear();
        return this;
    }

    @NotNull
    public final ReplicatorManager clearSyncReplicators() {
        this.pendingDocReplicators.clear();
        this.runningDocReplicatorMap.clear();
        return this;
    }

    public final void close() {
        getTreeReplicator().getEventBusHolder().unRegister(this);
    }

    @NotNull
    public abstract DocReplicator createDocReplicator(@NotNull ReplicatorInfo replicatorInfo);

    @NotNull
    public final Observable<ReplicatorManager> createObservable() {
        Observable<ReplicatorManager> observeOn = Observable.just(this).observeOn(getObserveOn());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @Nullable
    public final StartReplicatorBean detachStartReplicatorBean() {
        StartReplicatorBean startReplicatorBean = this.startReplicatorBean;
        this.startReplicatorBean = null;
        return startReplicatorBean;
    }

    @NotNull
    public final DocReplicator ensureDocReplicator(@NotNull String documentId) throws Exception {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        return ensureDocReplicator(ReplicatorInfo.INSTANCE.create(documentId).setUserId(getTreeReplicator().getCbUserId()));
    }

    @NotNull
    public final Observable<DocReplicator> ensureReplicatorObservable(@NotNull String docId) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        Observable<DocReplicator> flatMap = Observable.just(this).observeOn(getObserveOn()).map(new C7823a(docId)).flatMap(C7824b.f46179e);
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @NotNull
    public final Observable<DocReplicator> ensureReplicatorObservableWithoutPost(@NotNull String docId) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        Observable<DocReplicator> flatMap = Observable.just(this).observeOn(getObserveOn()).map(new C7825c(docId)).flatMap(C7826d.f46182e);
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    public final void finishReplicator(@NotNull ReplicatorInfo replicatorInfo) throws Exception {
        Intrinsics.checkNotNullParameter(replicatorInfo, "replicatorInfo");
        m35659a();
        String documentId = replicatorInfo.getDocumentId();
        this.runningDocReplicatorMap.remove(documentId);
        CollectionKt.safeAdd(this.finishDocIdMap, documentId);
    }

    @NotNull
    public final Scheduler getObserveOn() {
        return this.rxScheduler.getObserveOn();
    }

    @NotNull
    public final Collection<DocReplicator> getOpenDocReplicatorList() throws Exception {
        m35659a();
        ArrayList arrayList = new ArrayList();
        Collection<DocReplicator> values = this.runningDocReplicatorMap.values();
        Intrinsics.checkNotNullExpressionValue(values, "<get-values>(...)");
        arrayList.addAll(values);
        Collection<DocReplicator> values2 = this.waitingDocReplicatorMap.values();
        Intrinsics.checkNotNullExpressionValue(values2, "<get-values>(...)");
        arrayList.addAll(values2);
        return arrayList;
    }

    @NotNull
    public final PendingDocReplicators getPendingDocReplicators() {
        return this.pendingDocReplicators;
    }

    public final int getProgress() {
        if (m35661c() == 0) {
            return -1;
        }
        int size = this.finishDocIdMap.size();
        return (int) Math.floor((size / (r0 + size)) * 100);
    }

    @NotNull
    public final String getRunningDocInfo() {
        if (CollectionKt.isNullOrEmpty(this.runningDocReplicatorMap)) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, DocReplicator> entry : this.runningDocReplicatorMap.entrySet()) {
            sb.append(entry.getKey());
            sb.append(":(");
            sb.append(entry.getValue().getReplicatorInfo().getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_SYNC_STATUS java.lang.String().toString());
            sb.append(MotionUtils.f31762d);
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    @Nullable
    public final DocReplicator getRunningDocReplicator(@NotNull String documentId) throws Exception {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        m35659a();
        return this.runningDocReplicatorMap.get(documentId);
    }

    @NotNull
    public final Collection<DocReplicator> getRunningDocReplicatorList() throws Exception {
        m35659a();
        Collection<DocReplicator> values = this.runningDocReplicatorMap.values();
        Intrinsics.checkNotNullExpressionValue(values, "<get-values>(...)");
        return values;
    }

    @NotNull
    public final Map<String, DocReplicator> getRunningDocReplicatorMap() {
        return this.runningDocReplicatorMap;
    }

    @NotNull
    public abstract BaseReplicator getTreeReplicator();

    @NotNull
    public final Map<String, DocReplicator> getWaitingDocReplicatorMap() {
        return this.waitingDocReplicatorMap;
    }

    public final boolean isClosingDocId(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        return this.closingDocIdMap.contains(documentId);
    }

    public final boolean isRunningDocReplicator(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        return this.runningDocReplicatorMap.containsKey(documentId);
    }

    public final boolean isRunningOrWaitingDocReplicator(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        return this.runningDocReplicatorMap.containsKey(documentId) || this.waitingDocReplicatorMap.containsKey(documentId);
    }

    public final boolean isSyncEnabled() {
        return true;
    }

    public final void mergeStartReplicatorBean(@NotNull StartReplicatorBean replicatorBean) {
        Intrinsics.checkNotNullParameter(replicatorBean, "replicatorBean");
        if (this.startReplicatorBean == null) {
            this.startReplicatorBean = new StartReplicatorBean(0, false, false, false, null, null, false, 127, null);
        }
        StartReplicatorBean startReplicatorBean = this.startReplicatorBean;
        if (startReplicatorBean != null) {
            StartReplicatorBeanKt.merge(startReplicatorBean, replicatorBean);
        }
    }

    public void onAllDocsSyncFinished() {
    }

    public final void onReplicateFail(@NotNull ReplicatorInfo replicatorInfo) throws Exception {
        Intrinsics.checkNotNullParameter(replicatorInfo, "replicatorInfo");
        m35659a();
        this.pendingDocReplicators.onReplicateFail(replicatorInfo.getDocumentId(), replicatorInfo);
    }

    @NotNull
    public ReplicatorManager postProgress() {
        return this;
    }

    public final void removeClosingDocId(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        this.closingDocIdMap.remove(documentId);
    }

    public final void scheduleNextReplicator() {
        RxBaseAction.execute$default(new ScheduleNextDocReplicatorAction(this), null, null, null, 7, null);
    }

    public final void start() {
        getTreeReplicator().getEventBusHolder().register(this);
    }

    public final void timerScheduleWaitingReplicator() {
        RxTimerUtil.INSTANCE.timer(1000L, new RxTimerUtil.TimerObserver() { // from class: com.onyx.android.sdk.replicator.replicator.ReplicatorManager$timerScheduleWaitingReplicator$1
            @Override // io.reactivex.rxjava3.core.Observer
            public /* bridge */ /* synthetic */ void onNext(Long l) {
                onNext(l.longValue());
            }

            public void onNext(long aLong) {
                ReplicatorManager.this.scheduleNextReplicator();
            }
        });
    }

    @NotNull
    public final DocReplicator ensureDocReplicator(@NotNull ReplicatorInfo replicatorInfo) {
        Intrinsics.checkNotNullParameter(replicatorInfo, "replicatorInfo");
        String documentId = replicatorInfo.getDocumentId();
        DocReplicator docReplicator = this.runningDocReplicatorMap.get(documentId);
        if (docReplicator != null) {
            return docReplicator;
        }
        DocReplicator remove = this.waitingDocReplicatorMap.remove(documentId);
        if (remove == null) {
            remove = createDocReplicator(replicatorInfo);
        }
        this.runningDocReplicatorMap.put(documentId, remove);
        remove.reset();
        return remove;
    }
}
