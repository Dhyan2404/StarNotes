package com.onyx.android.sdk.universal.editor.action.backup;

import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.LogUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.ContextKt;
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
import com.onyx.android.sdk.universal.editor.action.common.EnsureAutoBackupTaskProviderAction;
import com.onyx.android.sdk.universal.editor.action.common.EnsureNoteProviderAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 \u001c2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001cB\u000f\u0012\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u001a\u0010\u001bJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\u0012\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0002R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0016\u0010\u0012\u001a\u00020\u000f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0016\u001a\u00020\u00138\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0019\u001a\u00020\u00028\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;", "Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, C4921e.f26528e, "m", "", NotificationCompat.CATEGORY_MESSAGE, "", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;", C6997f.f39671c, "Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;", "task", "Lcom/onyx/android/sdk/replicator/note/db/AutoBackupTaskProvider;", C6998g.f39679a, "Lcom/onyx/android/sdk/replicator/note/db/AutoBackupTaskProvider;", "autoBackupTaskProvider", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "noteProvider", "i", Constants.HASIDCALL_INDEX_SIG, "debugInsertAutoBackup", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class InsertAutoBackupTaskAction extends RxBaseBackupAction<Boolean> {

    /* renamed from: j */
    @NotNull
    public static final String f48026j = "InsertAutoBackupTaskAct";

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final AutoBackupTask task;

    /* renamed from: g, reason: from kotlin metadata */
    public AutoBackupTaskProvider autoBackupTaskProvider;

    /* renamed from: h, reason: from kotlin metadata */
    public NoteProvider noteProvider;

    /* renamed from: i, reason: from kotlin metadata */
    public final boolean debugInsertAutoBackup;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.InsertAutoBackupTaskAction$a */
    /* loaded from: classes8.dex */
    public static final class C8492a<T, R> implements Function {

        /* renamed from: e */
        public static final C8492a<T, R> f48031e = new C8492a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NoteProvider> apply(@NotNull InsertAutoBackupTaskAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new EnsureNoteProviderAction().build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.InsertAutoBackupTaskAction$b */
    /* loaded from: classes8.dex */
    public static final class C8493b<T> implements Consumer {
        public C8493b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            InsertAutoBackupTaskAction.this.noteProvider = it2;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.InsertAutoBackupTaskAction$c */
    /* loaded from: classes8.dex */
    public static final class C8494c<T, R> implements Function {

        /* renamed from: e */
        public static final C8494c<T, R> f48033e = new C8494c<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends AutoBackupTaskProvider> apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new EnsureAutoBackupTaskProviderAction().build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.InsertAutoBackupTaskAction$d */
    /* loaded from: classes8.dex */
    public static final class C8495d<T> implements Consumer {
        public C8495d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull AutoBackupTaskProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            InsertAutoBackupTaskAction.this.autoBackupTaskProvider = it2;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.InsertAutoBackupTaskAction$e */
    /* loaded from: classes8.dex */
    public static final class C8496e<T, R> implements Function {
        public C8496e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull AutoBackupTaskProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(InsertAutoBackupTaskAction.this.m37303o());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InsertAutoBackupTaskAction(@NotNull AutoBackupTask task) {
        super(AutoBackupTaskBundle.INSTANCE.getAutoBackupTaskEditorBundle());
        Intrinsics.checkNotNullParameter(task, "task");
        this.task = task;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> just = Observable.just(Boolean.FALSE);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        if (!m37301m()) {
            m37302n("do not enable backup");
            return just;
        }
        if (!ContextKt.hasStoragePermissionByConfig(ResManager.INSTANCE.getAppContext())) {
            m37302n("do not own permission about back up");
            return just;
        }
        Observable<Boolean> map = Observable.just(this).flatMap(C8492a.f48031e).doOnNext(new C8493b()).flatMap(C8494c.f48033e).doOnNext(new C8495d()).observeOn(getBackupProviderObserveOn()).map(new C8496e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final boolean m37301m() {
        MMKVBackup mMKVBackup = MMKVBackup.INSTANCE;
        boolean z = mMKVBackup.getLocalBackupAutoOption().get();
        boolean z2 = mMKVBackup.getCloudBackupAutoOption().get();
        boolean localBackup = this.task.getLocalBackup();
        boolean cloudBackup = this.task.getCloudBackup();
        if (localBackup && cloudBackup) {
            return z && z2;
        }
        if (localBackup) {
            return z;
        }
        if (cloudBackup) {
            return z2;
        }
        return false;
    }

    /* renamed from: n */
    public final void m37302n(String msg) {
        if (this.debugInsertAutoBackup) {
            LogUtils.dTag(f48026j, msg);
        }
    }

    /* renamed from: o */
    public final boolean m37303o() {
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.equalExpression("documentId", this.task.getDocumentId())).andWith(couchUtils.equalExpression(CouchFieldKey.KEY_LOCAL_BACKUP, Boolean.valueOf(this.task.getLocalBackup()))).andWith(couchUtils.equalExpression(CouchFieldKey.KEY_CLOUD_BACKUP, Boolean.valueOf(this.task.getCloudBackup())));
        AutoBackupTaskProvider autoBackupTaskProvider = this.autoBackupTaskProvider;
        AutoBackupTaskProvider autoBackupTaskProvider2 = null;
        if (autoBackupTaskProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("autoBackupTaskProvider");
            autoBackupTaskProvider = null;
        }
        List<AutoBackupTask> loadAutoBackupTaskList = autoBackupTaskProvider.loadAutoBackupTaskList(andWith);
        NoteProvider noteProvider = this.noteProvider;
        if (noteProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteProvider");
            noteProvider = null;
        }
        SyncNoteModel loadNote = NoteModelProviderKt.loadNote(noteProvider, this.task.getDocumentId());
        if (!loadAutoBackupTaskList.isEmpty() || !this.task.backupEnabled() || loadNote == null || !loadNote.isEnabled()) {
            m37302n("task is existed or invalided:" + JSONUtils.INSTANCE.toJson(this.task));
            return false;
        }
        m37302n("insert backup task:" + JSONUtils.INSTANCE.toJson(this.task));
        AutoBackupTaskProvider autoBackupTaskProvider3 = this.autoBackupTaskProvider;
        if (autoBackupTaskProvider3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("autoBackupTaskProvider");
        } else {
            autoBackupTaskProvider2 = autoBackupTaskProvider3;
        }
        autoBackupTaskProvider2.saveAutoBackupTask(this.task);
        return true;
    }
}
