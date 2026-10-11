package androidx.work.impl.utils;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.work.Logger;
import androidx.work.Operation;
import androidx.work.impl.OperationImpl;
import androidx.work.impl.Schedulers;
import androidx.work.impl.WorkContinuationImpl;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import com.google.android.material.motion.MotionUtils;
import java.util.List;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public class EnqueueRunnable implements Runnable {

    /* renamed from: g */
    public static final String f11918g = Logger.tagWithPrefix("EnqueueRunnable");

    /* renamed from: e */
    public final WorkContinuationImpl f11919e;

    /* renamed from: f */
    public final OperationImpl f11920f;

    public EnqueueRunnable(@NonNull WorkContinuationImpl workContinuation) {
        this(workContinuation, new OperationImpl());
    }

    /* renamed from: a */
    public static boolean m7135a(@NonNull WorkContinuationImpl workContinuation) {
        boolean m7136b = m7136b(workContinuation.getWorkManagerImpl(), workContinuation.getWork(), (String[]) WorkContinuationImpl.prerequisitesFor(workContinuation).toArray(new String[0]), workContinuation.getName(), workContinuation.getExistingWorkPolicy());
        workContinuation.markEnqueued();
        return m7136b;
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x0167  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m7136b(androidx.work.impl.WorkManagerImpl r18, @androidx.annotation.NonNull java.util.List<? extends androidx.work.WorkRequest> r19, java.lang.String[] r20, java.lang.String r21, androidx.work.ExistingWorkPolicy r22) {
        /*
            Method dump skipped, instructions count: 495
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.utils.EnqueueRunnable.m7136b(androidx.work.impl.WorkManagerImpl, java.util.List, java.lang.String[], java.lang.String, androidx.work.ExistingWorkPolicy):boolean");
    }

    /* renamed from: c */
    public static boolean m7137c(@NonNull WorkContinuationImpl workContinuation) {
        List<WorkContinuationImpl> parents = workContinuation.getParents();
        boolean z = false;
        if (parents != null) {
            for (WorkContinuationImpl workContinuationImpl : parents) {
                if (workContinuationImpl.isEnqueued()) {
                    Logger.get().warning(f11918g, "Already enqueued work ids (" + TextUtils.join(", ", workContinuationImpl.getIds()) + MotionUtils.f31762d);
                } else {
                    z |= m7137c(workContinuationImpl);
                }
            }
        }
        return m7135a(workContinuation) | z;
    }

    @VisibleForTesting
    public boolean addToDatabase() {
        WorkManagerImpl workManagerImpl = this.f11919e.getWorkManagerImpl();
        WorkDatabase workDatabase = workManagerImpl.getWorkDatabase();
        workDatabase.beginTransaction();
        try {
            EnqueueUtilsKt.checkContentUriTriggerWorkerLimits(workDatabase, workManagerImpl.getConfiguration(), this.f11919e);
            boolean m7137c = m7137c(this.f11919e);
            workDatabase.setTransactionSuccessful();
            return m7137c;
        } finally {
            workDatabase.endTransaction();
        }
    }

    @NonNull
    public Operation getOperation() {
        return this.f11920f;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (this.f11919e.hasCycles()) {
                throw new IllegalStateException("WorkContinuation has cycles (" + this.f11919e + MotionUtils.f31762d);
            }
            if (addToDatabase()) {
                PackageManagerHelper.setComponentEnabled(this.f11919e.getWorkManagerImpl().getApplicationContext(), RescheduleReceiver.class, true);
                scheduleWorkInBackground();
            }
            this.f11920f.markState(Operation.SUCCESS);
        } catch (Throwable th) {
            this.f11920f.markState(new Operation.State.FAILURE(th));
        }
    }

    @VisibleForTesting
    public void scheduleWorkInBackground() {
        WorkManagerImpl workManagerImpl = this.f11919e.getWorkManagerImpl();
        Schedulers.schedule(workManagerImpl.getConfiguration(), workManagerImpl.getWorkDatabase(), workManagerImpl.getSchedulers());
    }

    public EnqueueRunnable(@NonNull WorkContinuationImpl workContinuation, @NonNull OperationImpl result) {
        this.f11919e = workContinuation;
        this.f11920f = result;
    }
}
