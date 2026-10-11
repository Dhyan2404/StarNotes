package com.onyx.android.sdk.universal.editor.action.backup;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.sync.MMKVBackup;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.utils.StringOption;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.backup.LocalBackupAction;
import com.onyx.android.sdk.universal.editor.action.common.EnsureNoteProviderAction;
import com.onyx.android.sdk.universal.editor.action.export.ExportNoteToNoteFileAction;
import com.onyx.android.sdk.universal.editor.data.NoteExportArgs;
import com.onyx.android.sdk.universal.editor.events.note.LocalBackupCompleteEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.p042ui.data.BackupContext;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.Date;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0015\u001a\u00020\u0012¢\u0006\u0004\b\u0016\u0010\u0017J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u001a\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\b\u0010\t\u001a\u00020\bH\u0002J\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0002R\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;", "Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;", "list", "s", "", "u", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "noteProvider", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "t", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", C6997f.f39671c, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/universal/ui/data/BackupContext;", C6998g.f39679a, "Lcom/onyx/android/sdk/universal/ui/data/BackupContext;", "backupContext", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/ui/data/BackupContext;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LocalBackupAction extends RxBaseBackupAction<LocalBackupAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final BackupContext backupContext;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.LocalBackupAction$a */
    /* loaded from: classes8.dex */
    public static final class C8498a<T, R> implements Function {
        public C8498a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LocalBackupAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LocalBackupAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.LocalBackupAction$b */
    /* loaded from: classes8.dex */
    public static final class C8499b<T> implements Consumer {
        public C8499b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull LocalBackupAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LocalBackupAction.this.checkBackupDirFreeSpace();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.LocalBackupAction$c */
    /* loaded from: classes8.dex */
    public static final class C8500c<T, R> implements Function {

        /* renamed from: e */
        public static final C8500c<T, R> f48041e = new C8500c<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NoteProvider> apply(@NotNull LocalBackupAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new EnsureNoteProviderAction().build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.LocalBackupAction$d */
    /* loaded from: classes8.dex */
    public static final class C8501d<T, R> implements Function {
        public C8501d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<SyncNoteModel> apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LocalBackupAction.this.m37318t(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.LocalBackupAction$e */
    /* loaded from: classes8.dex */
    public static final class C8502e<T, R> implements Function {
        public C8502e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<NoteExportArgs> apply(@NotNull List<? extends SyncNoteModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LocalBackupAction.this.backupContext.setNoteExportList(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.LocalBackupAction$f */
    /* loaded from: classes8.dex */
    public static final class C8503f<T, R> implements Function {
        public C8503f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull List<NoteExportArgs> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LocalBackupAction.this.m37317s(it2);
        }
    }

    @SourceDebugExtension({"SMAP\nLocalBackupAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalBackupAction.kt\ncom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction$create$9\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,74:1\n1#2:75\n*E\n"})
    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.LocalBackupAction$g */
    /* loaded from: classes8.dex */
    public static final class C8504g<T> implements Consumer {
        public C8504g() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundle editorBundle = LocalBackupAction.this.editorBundle;
            BackupContext backupContext = LocalBackupAction.this.backupContext;
            backupContext.setThrowable(it2);
            EditorBundleKt.postEvent(editorBundle, new LocalBackupCompleteEvent(backupContext));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LocalBackupAction(@NotNull EditorBundle editorBundle, @NotNull BackupContext backupContext) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(backupContext, "backupContext");
        this.editorBundle = editorBundle;
        this.backupContext = backupContext;
    }

    /* renamed from: p */
    public static final void m37314p(LocalBackupAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m37319u();
    }

    /* renamed from: q */
    public static final void m37315q(LocalBackupAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FileUtils.INSTANCE.deleteFile(this$0.backupContext.getBackupFilePath());
    }

    /* renamed from: r */
    public static final void m37316r(LocalBackupAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditorBundleKt.postEvent(this$0.editorBundle, new LocalBackupCompleteEvent(this$0.backupContext));
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<LocalBackupAction> create() {
        Observable<LocalBackupAction> map = Observable.just(this).observeOn(getBackupIoObserveOn()).doOnNext(new C8499b()).observeOn(getNoteObserveOn()).flatMap(C8500c.f48041e).observeOn(getNoteObserveOn()).map(new C8501d()).map(new C8502e()).flatMap(new C8503f()).observeOn(getNoteObserveOn()).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.f0j
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                LocalBackupAction.m37314p(LocalBackupAction.this);
            }
        }).doOnDispose(new Action() { // from class: com.sunia.HTREnginev2.g0j
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                LocalBackupAction.m37315q(LocalBackupAction.this);
            }
        }).observeOn(getMainUIScheduler()).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.h0j
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                LocalBackupAction.m37316r(LocalBackupAction.this);
            }
        }).doOnError(new C8504g()).map(new C8498a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: s */
    public final Observable<?> m37317s(List<NoteExportArgs> list) {
        ExportNoteToNoteFileAction exportNoteToNoteFileAction = new ExportNoteToNoteFileAction(this.editorBundle, list, this.backupContext.getBackupFilePath());
        exportNoteToNoteFileAction.setExportAllFolder(this.backupContext.getExportAllFolder());
        exportNoteToNoteFileAction.setExportAllTag(this.backupContext.getExportAllTag());
        exportNoteToNoteFileAction.setExportFont(this.backupContext.getExportFont());
        return exportNoteToNoteFileAction.build();
    }

    /* renamed from: t */
    public final List<SyncNoteModel> m37318t(NoteProvider noteProvider) {
        CBQueryArgs m72249clone = this.backupContext.getNoteQueryArgs().m72249clone();
        m72249clone.m72251setLimit(200);
        return NoteModelProviderKt.loadNoteListInBatch(noteProvider, m72249clone);
    }

    /* renamed from: u */
    public final void m37319u() {
        if (this.backupContext.getUpdateLastTime()) {
            String format = DateTimeUtil.INSTANCE.getDATE_FORMAT_YYYYMMDD_HHMMSS().format(new Date());
            StringOption localBackupLastTime = MMKVBackup.INSTANCE.getLocalBackupLastTime();
            Intrinsics.checkNotNull(format);
            localBackupLastTime.put(format);
        }
    }
}
