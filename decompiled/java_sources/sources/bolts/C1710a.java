package bolts;

import bolts.Task;

/* renamed from: bolts.a */
/* loaded from: classes3.dex */
public class C1710a {

    /* renamed from: a */
    public Task<?> f12144a;

    public C1710a(Task<?> task) {
        this.f12144a = task;
    }

    /* renamed from: a */
    public void m7232a() {
        this.f12144a = null;
    }

    public void finalize() throws Throwable {
        Task.UnobservedExceptionHandler unobservedExceptionHandler;
        try {
            Task<?> task = this.f12144a;
            if (task != null && (unobservedExceptionHandler = Task.getUnobservedExceptionHandler()) != null) {
                unobservedExceptionHandler.unobservedException(task, new UnobservedTaskException(task.getError()));
            }
        } finally {
            super.finalize();
        }
    }
}
