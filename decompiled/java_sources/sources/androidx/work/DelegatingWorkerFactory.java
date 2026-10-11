package androidx.work;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.material.motion.MotionUtils;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes3.dex */
public class DelegatingWorkerFactory extends WorkerFactory {

    /* renamed from: c */
    public static final String f11386c = Logger.tagWithPrefix("DelegatingWkrFctry");

    /* renamed from: b */
    public final List<WorkerFactory> f11387b = new CopyOnWriteArrayList();

    @NonNull
    @VisibleForTesting
    /* renamed from: a */
    public List<WorkerFactory> m6956a() {
        return this.f11387b;
    }

    public final void addFactory(@NonNull WorkerFactory workerFactory) {
        this.f11387b.add(workerFactory);
    }

    @Override // androidx.work.WorkerFactory
    @Nullable
    public final ListenableWorker createWorker(@NonNull Context appContext, @NonNull String workerClassName, @NonNull WorkerParameters workerParameters) {
        Iterator<WorkerFactory> it2 = this.f11387b.iterator();
        while (it2.hasNext()) {
            try {
                ListenableWorker createWorker = it2.next().createWorker(appContext, workerClassName, workerParameters);
                if (createWorker != null) {
                    return createWorker;
                }
            } catch (Throwable th) {
                Logger.get().error(f11386c, "Unable to instantiate a ListenableWorker (" + workerClassName + MotionUtils.f31762d, th);
                throw th;
            }
        }
        return null;
    }
}
