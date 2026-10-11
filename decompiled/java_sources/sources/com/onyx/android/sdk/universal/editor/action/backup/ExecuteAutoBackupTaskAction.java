package com.onyx.android.sdk.universal.editor.action.backup;

import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.LogUtils;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.sync.MMKVBackup;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.replicator.note.p035db.AutoBackupTaskProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.AutoBackupTask;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.AutoBackupTaskBundle;
import com.onyx.android.sdk.universal.editor.action.backup.ExecuteAutoBackupTaskAction;
import com.onyx.android.sdk.universal.editor.action.common.EnsureAutoBackupTaskProviderAction;
import com.onyx.android.sdk.universal.editor.action.common.EnsureNoteProviderAction;
import com.onyx.android.sdk.universal.p042ui.data.AutoBackupContext;
import com.onyx.android.sdk.universal.p042ui.data.AutoBackupResult;
import com.sun.org.apache.xalan.internal.templates.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.BooleanSupplier;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.Date;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 /2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001/B\u0007¢\u0006\u0004\b-\u0010.J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0003H\u0002J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00000\u00032\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\u0010\u001a\u00020\u0006H\u0002J\n\u0010\u0011\u001a\u0004\u0018\u00010\u0006H\u0002J\b\u0010\u0013\u001a\u00020\u0012H\u0002J\b\u0010\u0014\u001a\u00020\u0012H\u0002J\b\u0010\u0015\u001a\u00020\u0002H\u0002J\u0010\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0012\u0010\u0019\u001a\u00020\u000b2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0002R \u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u001b0\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR \u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u001f0\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010\u001dR\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b#\u0010$R\u0016\u0010)\u001a\u00020&8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b'\u0010(R\u0014\u0010,\u001a\u00020\u00028\u0002X\u0082D¢\u0006\u0006\n\u0004\b*\u0010+¨\u00060"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;", "Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "t", "Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;", "task", C4921e.f26528e, "Lcom/onyx/android/sdk/universal/ui/data/AutoBackupResult;", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "", "A", "r", "s", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "z", "y", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "x", "w", "p", "B", "", NotificationCompat.CATEGORY_MESSAGE, "q", "Ljava/util/concurrent/ConcurrentHashMap;", "", C6997f.f39671c, "Ljava/util/concurrent/ConcurrentHashMap;", "retryTaskDelayMap", "", C6998g.f39679a, "retryTaskTimesMap", "Lcom/onyx/android/sdk/replicator/note/db/AutoBackupTaskProvider;", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/db/AutoBackupTaskProvider;", "autoBackupTaskProvider", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "i", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "noteProvider", "j", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "debugExecuteAutoBackup", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nExecuteAutoBackupTaskAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExecuteAutoBackupTaskAction.kt\ncom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction\n+ 2 MapsJVM.kt\nkotlin/collections/MapsKt__MapsJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,216:1\n72#2,2:217\n1#3:219\n*S KotlinDebug\n*F\n+ 1 ExecuteAutoBackupTaskAction.kt\ncom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction\n*L\n121#1:217,2\n121#1:219\n*E\n"})
/* loaded from: classes8.dex */
public final class ExecuteAutoBackupTaskAction extends RxBaseBackupAction<Boolean> {

    /* renamed from: k */
    @NotNull
    public static final String f48007k = "ExecuteAutoBackupTaskAction";

    /* renamed from: l */
    public static final long f48008l = 120000;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final ConcurrentHashMap<String, Long> retryTaskDelayMap;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final ConcurrentHashMap<String, Integer> retryTaskTimesMap;

    /* renamed from: h, reason: from kotlin metadata */
    public AutoBackupTaskProvider autoBackupTaskProvider;

    /* renamed from: i, reason: from kotlin metadata */
    public NoteProvider noteProvider;

    /* renamed from: j, reason: from kotlin metadata */
    public final boolean debugExecuteAutoBackup;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.ExecuteAutoBackupTaskAction$a */
    /* loaded from: classes8.dex */
    public static final class C8482a<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ AutoBackupTask f48015f;

        public C8482a(AutoBackupTask autoBackupTask) {
            this.f48015f = autoBackupTask;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull AutoBackupResult it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ExecuteAutoBackupTaskAction.this.m37278A(this.f48015f, it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.ExecuteAutoBackupTaskAction$b */
    /* loaded from: classes8.dex */
    public static final class C8483b<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ AutoBackupTask f48017f;

        public C8483b(AutoBackupTask autoBackupTask) {
            this.f48017f = autoBackupTask;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AutoBackupResult apply(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ExecuteAutoBackupTaskAction.this.m37284r(this.f48017f);
            return new AutoBackupResult(false, false, 3, null);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.ExecuteAutoBackupTaskAction$c */
    /* loaded from: classes8.dex */
    public static final class C8484c<T, R> implements Function {
        public C8484c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ExecuteAutoBackupTaskAction apply(@NotNull AutoBackupResult it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ExecuteAutoBackupTaskAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.ExecuteAutoBackupTaskAction$d */
    /* loaded from: classes8.dex */
    public static final class C8485d<T, R> implements Function {

        /* renamed from: e */
        public static final C8485d<T, R> f48019e = new C8485d<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends AutoBackupTaskProvider> apply(@NotNull ExecuteAutoBackupTaskAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new EnsureAutoBackupTaskProviderAction().build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.ExecuteAutoBackupTaskAction$e */
    /* loaded from: classes8.dex */
    public static final class C8486e<T> implements Consumer {
        public C8486e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull AutoBackupTaskProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ExecuteAutoBackupTaskAction.this.autoBackupTaskProvider = it2;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.ExecuteAutoBackupTaskAction$f */
    /* loaded from: classes8.dex */
    public static final class C8487f<T, R> implements Function {

        /* renamed from: e */
        public static final C8487f<T, R> f48021e = new C8487f<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NoteProvider> apply(@NotNull AutoBackupTaskProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new EnsureNoteProviderAction().build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.ExecuteAutoBackupTaskAction$g */
    /* loaded from: classes8.dex */
    public static final class C8488g<T> implements Consumer {
        public C8488g() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ExecuteAutoBackupTaskAction.this.noteProvider = it2;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.ExecuteAutoBackupTaskAction$h */
    /* loaded from: classes8.dex */
    public static final class C8489h<T, R> implements Function {
        public C8489h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ExecuteAutoBackupTaskAction> apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ExecuteAutoBackupTaskAction.this.m37286t();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.ExecuteAutoBackupTaskAction$i */
    /* loaded from: classes8.dex */
    public static final class C8490i<T, R> implements Function {

        /* renamed from: e */
        public static final C8490i<T, R> f48024e = new C8490i<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull ExecuteAutoBackupTaskAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.ExecuteAutoBackupTaskAction$j */
    /* loaded from: classes8.dex */
    public static final class C8491j<T, R> implements Function {
        public C8491j() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ExecuteAutoBackupTaskAction> apply(@NotNull ExecuteAutoBackupTaskAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ExecuteAutoBackupTaskAction executeAutoBackupTaskAction = ExecuteAutoBackupTaskAction.this;
            return executeAutoBackupTaskAction.m37281o(executeAutoBackupTaskAction.m37290z());
        }
    }

    public ExecuteAutoBackupTaskAction() {
        super(AutoBackupTaskBundle.INSTANCE.getAutoBackupTaskEditorBundle());
        this.retryTaskDelayMap = new ConcurrentHashMap<>();
        this.retryTaskTimesMap = new ConcurrentHashMap<>();
    }

    /* renamed from: u */
    public static final boolean m37276u(ExecuteAutoBackupTaskAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        return !this$0.m37290z().backupEnabled();
    }

    /* renamed from: v */
    public static final void m37277v(ExecuteAutoBackupTaskAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m37283q("executeTasks() done");
    }

    /* renamed from: A */
    public final void m37278A(AutoBackupTask task, AutoBackupResult result) {
        if (task.getLocalBackup() && result.getLocalBackupResult()) {
            task.setLocalBackup(false);
        }
        if (task.getCloudBackup() && result.getCloudBackupResult()) {
            task.setCloudBackup(false);
        }
        if (!task.backupEnabled()) {
            m37285s(task);
            m37283q("backup succeed delete validTask:" + JSONUtils.INSTANCE.toJson(task));
            return;
        }
        AutoBackupTaskProvider autoBackupTaskProvider = this.autoBackupTaskProvider;
        if (autoBackupTaskProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("autoBackupTaskProvider");
            autoBackupTaskProvider = null;
        }
        autoBackupTaskProvider.saveAutoBackupTask(task);
        m37284r(task);
    }

    /* renamed from: B */
    public final boolean m37279B(AutoBackupTask task) {
        Long l = this.retryTaskDelayMap.get(task.getDocumentId());
        if (l == null) {
            m37283q("isTaskTimeout() do not contain task:" + JSONUtils.INSTANCE.toJson(task));
            return true;
        }
        long currentTimeMillis = System.currentTimeMillis();
        boolean z = currentTimeMillis - l.longValue() > 0;
        DateTimeUtil dateTimeUtil = DateTimeUtil.INSTANCE;
        m37283q("isTaskTimeout timeout:" + z + ";cur:" + dateTimeUtil.getDATE_FORMAT_YYYYMMDD_HH_MM_SS().format(new Date(currentTimeMillis)) + ";delay:" + dateTimeUtil.getDATE_FORMAT_YYYYMMDD_HH_MM_SS().format(new Date(l.longValue())) + ";task:" + JSONUtils.INSTANCE.toJson(task));
        return z;
    }

    /* renamed from: C */
    public final boolean m37280C(AutoBackupTask task) {
        if (!task.backupEnabled()) {
            return false;
        }
        NoteProvider noteProvider = this.noteProvider;
        if (noteProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteProvider");
            noteProvider = null;
        }
        SyncNoteModel loadNote = NoteModelProviderKt.loadNote(noteProvider, task.getDocumentId());
        return loadNote != null && loadNote.isEnabled();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> just = Observable.just(Boolean.FALSE);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        if (!m37282p()) {
            m37283q("do not enable backup");
            return just;
        }
        if (!ContextKt.hasStoragePermissionByConfig(ResManager.INSTANCE.getAppContext())) {
            m37283q("do not own permission about back up");
            return just;
        }
        Observable<Boolean> map = Observable.just(this).flatMap(C8485d.f48019e).doOnNext(new C8486e()).flatMap(C8487f.f48021e).doOnNext(new C8488g()).observeOn(getBackupProviderObserveOn()).flatMap(new C8489h()).map(C8490i.f48024e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: o */
    public final Observable<ExecuteAutoBackupTaskAction> m37281o(AutoBackupTask task) {
        if (m37280C(task)) {
            Observable map = new AutoBackupAction(AutoBackupTaskBundle.INSTANCE.getAutoBackupTaskEditorBundle(), new AutoBackupContext(task.getDocumentId(), task.getLocalBackup(), task.getCloudBackup())).build().observeOn(getBackupProviderObserveOn()).doOnNext(new C8482a(task)).onErrorReturn(new C8483b(task)).map(new C8484c());
            Intrinsics.checkNotNullExpressionValue(map, "map(...)");
            return map;
        }
        m37283q("delete invalid Task:" + JSONUtils.INSTANCE.toJson(task));
        m37285s(task);
        Observable<ExecuteAutoBackupTaskAction> just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: p */
    public final boolean m37282p() {
        MMKVBackup mMKVBackup = MMKVBackup.INSTANCE;
        return mMKVBackup.getLocalBackupAutoOption().get() || mMKVBackup.getCloudBackupAutoOption().get();
    }

    /* renamed from: q */
    public final void m37283q(String msg) {
        if (this.debugExecuteAutoBackup) {
            LogUtils.dTag(f48007k, msg);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:3:0x0016, code lost:
    
        r5 = 0;
     */
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m37284r(com.onyx.android.sdk.replicator.note.p035db.model.AutoBackupTask r9) {
        /*
            r8 = this;
            r0 = 1
            r9.setError(r0)
            java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.Integer> r1 = r8.retryTaskTimesMap
            java.lang.String r2 = r9.getDocumentId()
            java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.Integer> r3 = r8.retryTaskTimesMap
            java.lang.String r4 = r9.getDocumentId()
            java.lang.Object r5 = r3.get(r4)
            if (r5 != 0) goto L23
            r5 = 0
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
            java.lang.Object r3 = r3.putIfAbsent(r4, r5)
            if (r3 != 0) goto L22
            goto L23
        L22:
            r5 = r3
        L23:
            java.lang.Number r5 = (java.lang.Number) r5
            int r3 = r5.intValue()
            int r3 = r3 + r0
            java.lang.Integer r0 = java.lang.Integer.valueOf(r3)
            r1.put(r2, r0)
            java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.Long> r0 = r8.retryTaskDelayMap
            java.lang.String r1 = r9.getDocumentId()
            long r2 = java.lang.System.currentTimeMillis()
            java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.Integer> r4 = r8.retryTaskTimesMap
            java.lang.String r5 = r9.getDocumentId()
            java.lang.Object r4 = r4.get(r5)
            kotlin.jvm.internal.Intrinsics.checkNotNull(r4)
            java.lang.Number r4 = (java.lang.Number) r4
            long r4 = r4.longValue()
            r6 = 120000(0x1d4c0, double:5.9288E-319)
            long r4 = r4 * r6
            long r2 = r2 + r4
            java.lang.Long r2 = java.lang.Long.valueOf(r2)
            r0.put(r1, r2)
            com.onyx.android.sdk.base.utils.DateTimeUtil r0 = com.onyx.android.sdk.base.utils.DateTimeUtil.INSTANCE
            java.text.SimpleDateFormat r1 = r0.getDATE_FORMAT_YYYYMMDD_HH_MM_SS()
            java.util.Date r2 = new java.util.Date
            java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.Long> r3 = r8.retryTaskDelayMap
            java.lang.String r4 = r9.getDocumentId()
            java.lang.Object r3 = r3.get(r4)
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3)
            java.lang.Number r3 = (java.lang.Number) r3
            long r3 = r3.longValue()
            r2.<init>(r3)
            java.lang.String r1 = r1.format(r2)
            java.text.SimpleDateFormat r0 = r0.getDATE_FORMAT_YYYYMMDD_HH_MM_SS()
            java.util.Date r2 = new java.util.Date
            long r3 = java.lang.System.currentTimeMillis()
            r2.<init>(r3)
            java.lang.String r0 = r0.format(r2)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "delayTask documentId:"
            r2.append(r3)
            java.lang.String r3 = r9.getDocumentId()
            r2.append(r3)
            java.lang.String r3 = ";current:"
            r2.append(r3)
            r2.append(r0)
            java.lang.String r0 = ";delayDate:"
            r2.append(r0)
            r2.append(r1)
            java.lang.String r0 = ";delayTimes:"
            r2.append(r0)
            java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.Integer> r0 = r8.retryTaskTimesMap
            java.lang.String r1 = r9.getDocumentId()
            java.lang.Object r0 = r0.get(r1)
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            r8.m37283q(r0)
            com.onyx.android.sdk.replicator.note.db.AutoBackupTaskProvider r8 = r8.autoBackupTaskProvider
            if (r8 != 0) goto Ld1
            java.lang.String r8 = "autoBackupTaskProvider"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r8)
            r8 = 0
        Ld1:
            r8.saveAutoBackupTask(r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.universal.editor.action.backup.ExecuteAutoBackupTaskAction.m37284r(com.onyx.android.sdk.replicator.note.db.model.AutoBackupTask):void");
    }

    /* renamed from: s */
    public final void m37285s(AutoBackupTask task) {
        Long l = this.retryTaskDelayMap.get(task.getDocumentId());
        if (l != null) {
            m37283q("deleteTask documentId:" + task.getDocumentId() + ";current:" + System.currentTimeMillis() + ";delayDate:" + DateTimeUtil.INSTANCE.getDATE_FORMAT_YYYYMMDD_HH_MM_SS().format(new Date(l.longValue())) + ";delayTimes:" + this.retryTaskTimesMap.get(task.getDocumentId()));
        }
        this.retryTaskDelayMap.remove(task.getDocumentId());
        this.retryTaskTimesMap.remove(task.getDocumentId());
        AutoBackupTaskProvider autoBackupTaskProvider = this.autoBackupTaskProvider;
        if (autoBackupTaskProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("autoBackupTaskProvider");
            autoBackupTaskProvider = null;
        }
        autoBackupTaskProvider.deleteAutoBackupTask(task);
    }

    /* renamed from: t */
    public final Observable<ExecuteAutoBackupTaskAction> m37286t() {
        Observable<ExecuteAutoBackupTaskAction> doFinally = Observable.just(this).concatMap(new C8491j()).observeOn(getBackupProviderObserveOn()).repeatUntil(new BooleanSupplier() { // from class: com.sunia.HTREnginev2.nyf
            @Override // io.reactivex.rxjava3.functions.BooleanSupplier
            public final boolean getAsBoolean() {
                boolean m37276u;
                m37276u = ExecuteAutoBackupTaskAction.m37276u(ExecuteAutoBackupTaskAction.this);
                return m37276u;
            }
        }).doFinally(new Action() { // from class: com.sunia.HTREnginev2.oyf
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ExecuteAutoBackupTaskAction.m37277v(ExecuteAutoBackupTaskAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    /* renamed from: w */
    public final CBQueryArgs m37287w() {
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        cBQueryArgs.m72251setLimit(1);
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        cBQueryArgs.andWith(couchUtils.equalExpression("error", Boolean.TRUE));
        cBQueryArgs.setVarargOrdering(couchUtils.getOrdering("updatedAt", true));
        return cBQueryArgs;
    }

    /* renamed from: x */
    public final CBQueryArgs m37288x() {
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        cBQueryArgs.m72251setLimit(1);
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        cBQueryArgs.andWith(couchUtils.notEqualExpression("error", Boolean.TRUE));
        cBQueryArgs.setVarargOrdering(couchUtils.getOrdering(CouchFieldKey.KEY_CREATE_AT, true));
        return cBQueryArgs;
    }

    /* renamed from: y */
    public final AutoBackupTask m37289y() {
        Object firstOrNull;
        AutoBackupTaskProvider autoBackupTaskProvider = this.autoBackupTaskProvider;
        if (autoBackupTaskProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("autoBackupTaskProvider");
            autoBackupTaskProvider = null;
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) autoBackupTaskProvider.loadAutoBackupTaskList(m37287w()));
        AutoBackupTask autoBackupTask = (AutoBackupTask) firstOrNull;
        if (autoBackupTask == null) {
            return null;
        }
        if (m37279B(autoBackupTask)) {
            return autoBackupTask;
        }
        AutoBackupTaskProvider autoBackupTaskProvider2 = this.autoBackupTaskProvider;
        if (autoBackupTaskProvider2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("autoBackupTaskProvider");
            autoBackupTaskProvider2 = null;
        }
        autoBackupTaskProvider2.saveAutoBackupTask(autoBackupTask);
        return null;
    }

    /* renamed from: z */
    public final AutoBackupTask m37290z() {
        Object firstOrNull;
        AutoBackupTaskProvider autoBackupTaskProvider = this.autoBackupTaskProvider;
        if (autoBackupTaskProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("autoBackupTaskProvider");
            autoBackupTaskProvider = null;
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) autoBackupTaskProvider.loadAutoBackupTaskList(m37288x()));
        AutoBackupTask autoBackupTask = (AutoBackupTask) firstOrNull;
        if (autoBackupTask == null && (autoBackupTask = m37289y()) == null) {
            autoBackupTask = new AutoBackupTask(null, false, false, 7, null);
        }
        m37283q("getTask():" + JSONUtils.INSTANCE.toJson(autoBackupTask));
        return autoBackupTask;
    }
}
