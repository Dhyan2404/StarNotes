package com.oplus.ocs.base.common.api;

import android.os.Looper;
import android.os.Message;
import com.oplus.ocs.base.common.HandlerC13030a;
import com.oplus.ocs.base.common.constant.CommonStatusCodes;
import com.oplus.ocs.base.task.TaskImpl;

/* loaded from: classes9.dex */
public class TaskListenerHolder<T> {

    /* renamed from: a */
    private final String f63015a = TaskListenerHolder.class.getSimpleName();

    /* renamed from: b */
    private Looper f63016b;

    /* renamed from: c */
    private TaskImpl<T> f63017c;

    /* renamed from: d */
    private int f63018d;

    /* renamed from: e */
    private SuccessNotifier<T> f63019e;

    /* renamed from: f */
    private FailureNotifier<T> f63020f;

    /* renamed from: g */
    private TaskListenerHolder<T>.TaskListenerHandler f63021g;

    /* loaded from: classes9.dex */
    public interface FailureNotifier<T> {
        void onNotifyListenerFailed(TaskImpl<T> taskImpl, int i, String str);
    }

    /* loaded from: classes9.dex */
    public interface SuccessNotifier<T> {
        void notifyListener(TaskImpl<T> taskImpl);
    }

    /* loaded from: classes9.dex */
    public class TaskListenerHandler extends HandlerC13030a {
        public TaskListenerHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (!(message.what == 1)) {
                throw new IllegalArgumentException();
            }
            TaskListenerHolder.m52158a(TaskListenerHolder.this, message.arg1);
        }
    }

    public TaskListenerHolder(Looper looper, TaskImpl<T> taskImpl, SuccessNotifier<T> successNotifier, FailureNotifier<T> failureNotifier) {
        this.f63016b = looper;
        this.f63017c = taskImpl;
        this.f63019e = successNotifier;
        this.f63020f = failureNotifier;
        this.f63021g = new TaskListenerHandler(this.f63016b);
    }

    /* renamed from: a */
    public static /* synthetic */ void m52158a(TaskListenerHolder taskListenerHolder, int i) {
        if (i == 0) {
            SuccessNotifier<T> successNotifier = taskListenerHolder.f63019e;
            if (successNotifier != null) {
                successNotifier.notifyListener(taskListenerHolder.f63017c);
                return;
            }
            return;
        }
        FailureNotifier<T> failureNotifier = taskListenerHolder.f63020f;
        if (failureNotifier != null) {
            failureNotifier.onNotifyListenerFailed(taskListenerHolder.f63017c, i, CommonStatusCodes.getStatusCodeString(i));
        }
    }

    public FailureNotifier<T> getFailureNotifier() {
        return this.f63020f;
    }

    public Looper getLooper() {
        return this.f63016b;
    }

    public SuccessNotifier getOnTaskSuccessListener() {
        return this.f63019e;
    }

    public TaskImpl<T> getTask() {
        return this.f63017c;
    }

    public void setErrorCode(int i) {
        this.f63018d = i;
        Message obtain = Message.obtain();
        obtain.what = 1;
        obtain.arg1 = this.f63018d;
        this.f63021g.sendMessage(obtain);
    }
}
