package androidx.work.impl.utils;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.work.Data;
import androidx.work.Logger;
import androidx.work.ProgressUpdater;
import androidx.work.WorkInfo;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.WorkProgress;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.futures.SettableFuture;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.android.material.motion.MotionUtils;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.UUID;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public class WorkProgressUpdater implements ProgressUpdater {

    /* renamed from: c */
    public static final String f11989c = Logger.tagWithPrefix("WorkProgressUpdater");

    /* renamed from: a */
    public final WorkDatabase f11990a;

    /* renamed from: b */
    public final TaskExecutor f11991b;

    /* renamed from: androidx.work.impl.utils.WorkProgressUpdater$a */
    /* loaded from: classes3.dex */
    public class RunnableC1676a implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ UUID f11992e;

        /* renamed from: f */
        public final /* synthetic */ Data f11993f;

        /* renamed from: g */
        public final /* synthetic */ SettableFuture f11994g;

        public RunnableC1676a(final UUID val$id, final Data val$data, final SettableFuture val$future) {
            this.f11992e = val$id;
            this.f11993f = val$data;
            this.f11994g = val$future;
        }

        @Override // java.lang.Runnable
        public void run() {
            WorkSpec workSpec;
            String uuid = this.f11992e.toString();
            Logger logger = Logger.get();
            String str = WorkProgressUpdater.f11989c;
            logger.debug(str, "Updating progress for " + this.f11992e + " (" + this.f11993f + MotionUtils.f31762d);
            WorkProgressUpdater.this.f11990a.beginTransaction();
            try {
                workSpec = WorkProgressUpdater.this.f11990a.workSpecDao().getWorkSpec(uuid);
            } finally {
                try {
                } finally {
                }
            }
            if (workSpec == null) {
                throw new IllegalStateException("Calls to setProgressAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
            }
            if (workSpec.state == WorkInfo.State.RUNNING) {
                WorkProgressUpdater.this.f11990a.workProgressDao().insert(new WorkProgress(uuid, this.f11993f));
            } else {
                Logger.get().warning(str, "Ignoring setProgressAsync(...). WorkSpec (" + uuid + ") is not in a RUNNING state.");
            }
            this.f11994g.set(null);
            WorkProgressUpdater.this.f11990a.setTransactionSuccessful();
        }
    }

    public WorkProgressUpdater(@NonNull WorkDatabase workDatabase, @NonNull TaskExecutor taskExecutor) {
        this.f11990a = workDatabase;
        this.f11991b = taskExecutor;
    }

    @Override // androidx.work.ProgressUpdater
    @NonNull
    public ListenableFuture<Void> updateProgress(@NonNull final Context context, @NonNull final UUID id, @NonNull final Data data) {
        SettableFuture create = SettableFuture.create();
        this.f11991b.executeOnTaskThread(new RunnableC1676a(id, data, create));
        return create;
    }
}
