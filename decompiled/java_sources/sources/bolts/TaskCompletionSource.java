package bolts;

/* loaded from: classes3.dex */
public class TaskCompletionSource<TResult> {

    /* renamed from: a */
    public final Task<TResult> f12143a = new Task<>();

    public Task<TResult> getTask() {
        return this.f12143a;
    }

    public void setCancelled() {
        if (!trySetCancelled()) {
            throw new IllegalStateException("Cannot cancel a completed task.");
        }
    }

    public void setError(Exception exc) {
        if (!trySetError(exc)) {
            throw new IllegalStateException("Cannot set the error on a completed task.");
        }
    }

    public void setResult(TResult tresult) {
        if (!trySetResult(tresult)) {
            throw new IllegalStateException("Cannot set the result of a completed task.");
        }
    }

    public boolean trySetCancelled() {
        return this.f12143a.m7218g();
    }

    public boolean trySetError(Exception exc) {
        return this.f12143a.m7219h(exc);
    }

    public boolean trySetResult(TResult tresult) {
        return this.f12143a.m7220i(tresult);
    }
}
