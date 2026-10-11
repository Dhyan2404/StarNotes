package net.vrallev.android.task;

/* loaded from: classes11.dex */
public abstract class TaskNoCallback extends Task<Void> {
    public abstract void executeTask();

    @Override // net.vrallev.android.task.Task
    public final Void execute() {
        executeTask();
        return null;
    }
}
