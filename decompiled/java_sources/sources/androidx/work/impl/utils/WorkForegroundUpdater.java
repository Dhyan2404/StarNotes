package androidx.work.impl.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.work.ForegroundInfo;
import androidx.work.ForegroundUpdater;
import androidx.work.Logger;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.foreground.ForegroundProcessor;
import androidx.work.impl.foreground.SystemForegroundDispatcher;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkSpecKt;
import androidx.work.impl.utils.futures.SettableFuture;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.UUID;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public class WorkForegroundUpdater implements ForegroundUpdater {

    /* renamed from: d */
    public static final String f11980d = Logger.tagWithPrefix("WMFgUpdater");

    /* renamed from: a */
    public final TaskExecutor f11981a;

    /* renamed from: b */
    public final ForegroundProcessor f11982b;

    /* renamed from: c */
    public final WorkSpecDao f11983c;

    /* renamed from: androidx.work.impl.utils.WorkForegroundUpdater$a */
    /* loaded from: classes3.dex */
    public class RunnableC1675a implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ SettableFuture f11984e;

        /* renamed from: f */
        public final /* synthetic */ UUID f11985f;

        /* renamed from: g */
        public final /* synthetic */ ForegroundInfo f11986g;

        /* renamed from: h */
        public final /* synthetic */ Context f11987h;

        public RunnableC1675a(final SettableFuture val$future, final UUID val$id, final ForegroundInfo val$foregroundInfo, final Context val$context) {
            this.f11984e = val$future;
            this.f11985f = val$id;
            this.f11986g = val$foregroundInfo;
            this.f11987h = val$context;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (!this.f11984e.isCancelled()) {
                    String uuid = this.f11985f.toString();
                    WorkSpec workSpec = WorkForegroundUpdater.this.f11983c.getWorkSpec(uuid);
                    if (workSpec == null || workSpec.state.isFinished()) {
                        throw new IllegalStateException("Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
                    }
                    WorkForegroundUpdater.this.f11982b.startForeground(uuid, this.f11986g);
                    this.f11987h.startService(SystemForegroundDispatcher.createNotifyIntent(this.f11987h, WorkSpecKt.generationalId(workSpec), this.f11986g));
                }
                this.f11984e.set(null);
            } catch (Throwable th) {
                this.f11984e.setException(th);
            }
        }
    }

    @SuppressLint({"LambdaLast"})
    public WorkForegroundUpdater(@NonNull WorkDatabase workDatabase, @NonNull ForegroundProcessor foregroundProcessor, @NonNull TaskExecutor taskExecutor) {
        this.f11982b = foregroundProcessor;
        this.f11981a = taskExecutor;
        this.f11983c = workDatabase.workSpecDao();
    }

    @Override // androidx.work.ForegroundUpdater
    @NonNull
    public ListenableFuture<Void> setForegroundAsync(@NonNull final Context context, @NonNull final UUID id, @NonNull final ForegroundInfo foregroundInfo) {
        SettableFuture create = SettableFuture.create();
        this.f11981a.executeOnTaskThread(new RunnableC1675a(create, id, foregroundInfo, context));
        return create;
    }
}
