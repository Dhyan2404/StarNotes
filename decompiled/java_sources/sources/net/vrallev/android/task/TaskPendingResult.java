package net.vrallev.android.task;

/* loaded from: classes11.dex */
public class TaskPendingResult {

    /* renamed from: a */
    public final Class<?> f103107a;

    /* renamed from: b */
    public final Object f103108b;

    /* renamed from: c */
    public final Task<?> f103109c;

    /* renamed from: d */
    public final TaskExecutor f103110d;

    public TaskPendingResult(Class<?> cls, Object obj, Task<?> task, TaskExecutor taskExecutor) {
        this.f103107a = cls;
        this.f103108b = obj;
        this.f103109c = task;
        this.f103110d = taskExecutor;
    }

    public Object getResult() {
        return this.f103108b;
    }

    public Class<?> getResultType() {
        return this.f103107a;
    }

    public Task<?> getTask() {
        return this.f103109c;
    }

    public TaskExecutor getTaskExecutor() {
        return this.f103110d;
    }
}
