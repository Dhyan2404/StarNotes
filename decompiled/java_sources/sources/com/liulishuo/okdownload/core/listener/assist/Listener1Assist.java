package com.liulishuo.okdownload.core.listener.assist;

import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.liulishuo.okdownload.DownloadTask;
import com.liulishuo.okdownload.core.breakpoint.BreakpointInfo;
import com.liulishuo.okdownload.core.cause.EndCause;
import com.liulishuo.okdownload.core.cause.ResumeFailedCause;
import com.liulishuo.okdownload.core.listener.assist.ListenerModelHandler;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes4.dex */
public class Listener1Assist implements ListenerAssist, ListenerModelHandler.ModelCreator<Listener1Model> {

    /* renamed from: e */
    public final ListenerModelHandler<Listener1Model> f39515e;

    /* renamed from: f */
    public Listener1Callback f39516f;

    /* loaded from: classes4.dex */
    public interface Listener1Callback {
        void connected(@NonNull DownloadTask downloadTask, @IntRange(from = 0) int i, @IntRange(from = 0) long j, @IntRange(from = 0) long j2);

        void progress(@NonNull DownloadTask downloadTask, @IntRange(from = 0) long j, @IntRange(from = 0) long j2);

        void retry(@NonNull DownloadTask downloadTask, @NonNull ResumeFailedCause resumeFailedCause);

        void taskEnd(@NonNull DownloadTask downloadTask, @NonNull EndCause endCause, @Nullable Exception exc, @NonNull Listener1Model listener1Model);

        void taskStart(@NonNull DownloadTask downloadTask, @NonNull Listener1Model listener1Model);
    }

    /* loaded from: classes4.dex */
    public static class Listener1Model implements ListenerModelHandler.InterfaceC6979a {

        /* renamed from: a */
        public final int f39517a;

        /* renamed from: b */
        public Boolean f39518b;

        /* renamed from: c */
        public Boolean f39519c;

        /* renamed from: d */
        public volatile Boolean f39520d;

        /* renamed from: e */
        public int f39521e;

        /* renamed from: f */
        public long f39522f;

        /* renamed from: g */
        public final AtomicLong f39523g = new AtomicLong();

        public Listener1Model(int i) {
            this.f39517a = i;
        }

        @Override // com.liulishuo.okdownload.core.listener.assist.ListenerModelHandler.InterfaceC6979a
        public int getId() {
            return this.f39517a;
        }

        public long getTotalLength() {
            return this.f39522f;
        }

        @Override // com.liulishuo.okdownload.core.listener.assist.ListenerModelHandler.InterfaceC6979a
        public void onInfoValid(@NonNull BreakpointInfo breakpointInfo) {
            this.f39521e = breakpointInfo.getBlockCount();
            this.f39522f = breakpointInfo.getTotalLength();
            this.f39523g.set(breakpointInfo.getTotalOffset());
            if (this.f39518b == null) {
                this.f39518b = Boolean.FALSE;
            }
            if (this.f39519c == null) {
                this.f39519c = Boolean.valueOf(this.f39523g.get() > 0);
            }
            if (this.f39520d == null) {
                this.f39520d = Boolean.TRUE;
            }
        }
    }

    public Listener1Assist() {
        this.f39515e = new ListenerModelHandler<>(this);
    }

    public void connectEnd(DownloadTask downloadTask) {
        Listener1Model m31097b = this.f39515e.m31097b(downloadTask, downloadTask.getInfo());
        if (m31097b == null) {
            return;
        }
        if (m31097b.f39519c.booleanValue() && m31097b.f39520d.booleanValue()) {
            m31097b.f39520d = Boolean.FALSE;
        }
        Listener1Callback listener1Callback = this.f39516f;
        if (listener1Callback != null) {
            listener1Callback.connected(downloadTask, m31097b.f39521e, m31097b.f39523g.get(), m31097b.f39522f);
        }
    }

    public void downloadFromBeginning(DownloadTask downloadTask, @NonNull BreakpointInfo breakpointInfo, ResumeFailedCause resumeFailedCause) {
        Listener1Callback listener1Callback;
        Listener1Model m31097b = this.f39515e.m31097b(downloadTask, breakpointInfo);
        if (m31097b == null) {
            return;
        }
        m31097b.onInfoValid(breakpointInfo);
        if (m31097b.f39518b.booleanValue() && (listener1Callback = this.f39516f) != null) {
            listener1Callback.retry(downloadTask, resumeFailedCause);
        }
        Boolean bool = Boolean.TRUE;
        m31097b.f39518b = bool;
        m31097b.f39519c = Boolean.FALSE;
        m31097b.f39520d = bool;
    }

    public void downloadFromBreakpoint(DownloadTask downloadTask, @NonNull BreakpointInfo breakpointInfo) {
        Listener1Model m31097b = this.f39515e.m31097b(downloadTask, breakpointInfo);
        if (m31097b == null) {
            return;
        }
        m31097b.onInfoValid(breakpointInfo);
        Boolean bool = Boolean.TRUE;
        m31097b.f39518b = bool;
        m31097b.f39519c = bool;
        m31097b.f39520d = bool;
    }

    public void fetchProgress(DownloadTask downloadTask, long j) {
        Listener1Model m31097b = this.f39515e.m31097b(downloadTask, downloadTask.getInfo());
        if (m31097b == null) {
            return;
        }
        m31097b.f39523g.addAndGet(j);
        Listener1Callback listener1Callback = this.f39516f;
        if (listener1Callback != null) {
            listener1Callback.progress(downloadTask, m31097b.f39523g.get(), m31097b.f39522f);
        }
    }

    @Override // com.liulishuo.okdownload.core.listener.assist.ListenerAssist
    public boolean isAlwaysRecoverAssistModel() {
        return this.f39515e.isAlwaysRecoverAssistModel();
    }

    @Override // com.liulishuo.okdownload.core.listener.assist.ListenerAssist
    public void setAlwaysRecoverAssistModel(boolean z) {
        this.f39515e.setAlwaysRecoverAssistModel(z);
    }

    @Override // com.liulishuo.okdownload.core.listener.assist.ListenerAssist
    public void setAlwaysRecoverAssistModelIfNotSet(boolean z) {
        this.f39515e.setAlwaysRecoverAssistModelIfNotSet(z);
    }

    public void setCallback(@NonNull Listener1Callback listener1Callback) {
        this.f39516f = listener1Callback;
    }

    public void taskEnd(DownloadTask downloadTask, EndCause endCause, @Nullable Exception exc) {
        Listener1Model m31098c = this.f39515e.m31098c(downloadTask, downloadTask.getInfo());
        Listener1Callback listener1Callback = this.f39516f;
        if (listener1Callback != null) {
            listener1Callback.taskEnd(downloadTask, endCause, exc, m31098c);
        }
    }

    public void taskStart(DownloadTask downloadTask) {
        Listener1Model m31096a = this.f39515e.m31096a(downloadTask, null);
        Listener1Callback listener1Callback = this.f39516f;
        if (listener1Callback != null) {
            listener1Callback.taskStart(downloadTask, m31096a);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.liulishuo.okdownload.core.listener.assist.ListenerModelHandler.ModelCreator
    public Listener1Model create(int i) {
        return new Listener1Model(i);
    }

    public Listener1Assist(ListenerModelHandler<Listener1Model> listenerModelHandler) {
        this.f39515e = listenerModelHandler;
    }
}
