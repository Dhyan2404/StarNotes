package com.oplus.ocs.base.task;

import com.oplus.ocs.base.utils.C13074d;
import java.util.ArrayDeque;
import java.util.Queue;

/* renamed from: com.oplus.ocs.base.task.q */
/* loaded from: classes9.dex */
public final class C13069q<TResult> {

    /* renamed from: a */
    private Object f63141a = new Object();

    /* renamed from: b */
    private Queue<InterfaceC13054b<TResult>> f63142b;

    /* renamed from: c */
    private boolean f63143c;

    /* renamed from: a */
    public final void m52220a(InterfaceC13054b<TResult> interfaceC13054b) {
        C13074d.m52235a(interfaceC13054b, "Cancellable is not be null");
        synchronized (this.f63141a) {
            if (this.f63142b == null) {
                this.f63142b = new ArrayDeque();
            }
            this.f63142b.add(interfaceC13054b);
        }
    }

    /* renamed from: a */
    public final void m52219a(Task<TResult> task) {
        InterfaceC13054b<TResult> poll;
        C13074d.m52235a(task, "Task is not be null");
        synchronized (this.f63141a) {
            if (this.f63142b != null && !this.f63143c) {
                this.f63143c = true;
                while (true) {
                    synchronized (this.f63141a) {
                        poll = this.f63142b.poll();
                        if (poll == null) {
                            this.f63143c = false;
                            return;
                        }
                    }
                    poll.mo52214a(task);
                }
            }
        }
    }
}
