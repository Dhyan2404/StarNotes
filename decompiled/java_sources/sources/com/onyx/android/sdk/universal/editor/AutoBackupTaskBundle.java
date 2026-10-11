package com.onyx.android.sdk.universal.editor;

import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.event.LoginAccountChanged;
import com.onyx.android.sdk.replicator.note.p035db.model.AutoBackupTask;
import com.onyx.android.sdk.universal.editor.AutoBackupTaskBundle;
import com.onyx.android.sdk.universal.editor.action.backup.ExecuteAutoBackupTaskAction;
import com.onyx.android.sdk.universal.editor.action.backup.InsertAutoBackupTaskAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\t\u001a\u00020\u0004R\u0017\u0010\u000f\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0013\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle;", "", "Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;", NotificationCompat.CATEGORY_EVENT, "", "stopTasks", "Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;", "task", "insertAutoBackupTask", "cleanAutoLocalBackTasks", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "a", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getAutoBackupTaskEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "autoBackupTaskEditorBundle", "Ljava/util/concurrent/atomic/AtomicBoolean;", "b", "Ljava/util/concurrent/atomic/AtomicBoolean;", "isAutoBackupRunning", "Lio/reactivex/rxjava3/disposables/Disposable;", "c", "Lio/reactivex/rxjava3/disposables/Disposable;", "autoBackupDisposable", Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class AutoBackupTaskBundle {

    @NotNull
    public static final AutoBackupTaskBundle INSTANCE;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final EditorBundle autoBackupTaskEditorBundle;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static AtomicBoolean isAutoBackupRunning;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public static Disposable autoBackupDisposable;

    /* renamed from: com.onyx.android.sdk.universal.editor.AutoBackupTaskBundle$a */
    /* loaded from: classes8.dex */
    public static final class C8139a<T, R> implements Function {

        /* renamed from: e */
        public static final C8139a<T, R> f47495e = new C8139a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull AutoBackupTaskBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new ExecuteAutoBackupTaskAction().build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.AutoBackupTaskBundle$b */
    /* loaded from: classes8.dex */
    public static final class C8140b<T> implements Consumer {

        /* renamed from: e */
        public static final C8140b<T> f47496e = new C8140b<>();

        /* renamed from: a */
        public final void m36672a(boolean z) {
            AutoBackupTaskBundle.INSTANCE.cleanAutoLocalBackTasks();
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m36672a(((Boolean) obj).booleanValue());
        }
    }

    static {
        AutoBackupTaskBundle autoBackupTaskBundle = new AutoBackupTaskBundle();
        INSTANCE = autoBackupTaskBundle;
        autoBackupTaskEditorBundle = EditorBundle.INSTANCE.createInstance();
        isAutoBackupRunning = new AtomicBoolean(false);
        AccountDataBundle.INSTANCE.getEventBusHolder().register(autoBackupTaskBundle);
    }

    /* renamed from: b */
    public static final void m36670b() {
        isAutoBackupRunning.set(false);
    }

    public final void cleanAutoLocalBackTasks() {
        if (isAutoBackupRunning.get()) {
            return;
        }
        isAutoBackupRunning.set(true);
        autoBackupDisposable = Observable.just(this).flatMap(C8139a.f47495e).doFinally(new Action() { // from class: com.sunia.HTREnginev2.gj
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                AutoBackupTaskBundle.m36670b();
            }
        }).subscribe();
    }

    @NotNull
    public final EditorBundle getAutoBackupTaskEditorBundle() {
        return autoBackupTaskEditorBundle;
    }

    public final void insertAutoBackupTask(@NotNull AutoBackupTask task) {
        Intrinsics.checkNotNullParameter(task, "task");
        new InsertAutoBackupTaskAction(task).build().doOnNext(C8140b.f47496e).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void stopTasks(@NotNull LoginAccountChanged event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Disposable disposable = autoBackupDisposable;
        if (disposable != null) {
            disposable.dispose();
        }
        isAutoBackupRunning.set(false);
    }
}
