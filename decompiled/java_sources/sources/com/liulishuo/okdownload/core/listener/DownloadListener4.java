package com.liulishuo.okdownload.core.listener;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.liulishuo.okdownload.DownloadListener;
import com.liulishuo.okdownload.DownloadTask;
import com.liulishuo.okdownload.core.breakpoint.BreakpointInfo;
import com.liulishuo.okdownload.core.cause.EndCause;
import com.liulishuo.okdownload.core.cause.ResumeFailedCause;
import com.liulishuo.okdownload.core.listener.assist.Listener4Assist;
import com.liulishuo.okdownload.core.listener.assist.ListenerAssist;
import com.liulishuo.okdownload.core.listener.assist.ListenerModelHandler;
import java.util.List;
import java.util.Map;

/* loaded from: classes4.dex */
public abstract class DownloadListener4 implements DownloadListener, Listener4Assist.Listener4Callback, ListenerAssist {

    /* renamed from: e */
    public final Listener4Assist f39512e;

    /* renamed from: com.liulishuo.okdownload.core.listener.DownloadListener4$a */
    /* loaded from: classes4.dex */
    public static class C6976a implements ListenerModelHandler.ModelCreator<Listener4Assist.Listener4Model> {
        @Override // com.liulishuo.okdownload.core.listener.assist.ListenerModelHandler.ModelCreator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Listener4Assist.Listener4Model create(int i) {
            return new Listener4Assist.Listener4Model(i);
        }
    }

    public DownloadListener4(Listener4Assist listener4Assist) {
        this.f39512e = listener4Assist;
        listener4Assist.setCallback(this);
    }

    @Override // com.liulishuo.okdownload.DownloadListener
    public void connectTrialEnd(@NonNull DownloadTask downloadTask, int i, @NonNull Map<String, List<String>> map) {
    }

    @Override // com.liulishuo.okdownload.DownloadListener
    public void connectTrialStart(@NonNull DownloadTask downloadTask, @NonNull Map<String, List<String>> map) {
    }

    @Override // com.liulishuo.okdownload.DownloadListener
    public final void downloadFromBeginning(@NonNull DownloadTask downloadTask, @NonNull BreakpointInfo breakpointInfo, @NonNull ResumeFailedCause resumeFailedCause) {
        this.f39512e.infoReady(downloadTask, breakpointInfo, false);
    }

    @Override // com.liulishuo.okdownload.DownloadListener
    public final void downloadFromBreakpoint(@NonNull DownloadTask downloadTask, @NonNull BreakpointInfo breakpointInfo) {
        this.f39512e.infoReady(downloadTask, breakpointInfo, true);
    }

    @Override // com.liulishuo.okdownload.DownloadListener
    public void fetchEnd(@NonNull DownloadTask downloadTask, int i, long j) {
        this.f39512e.fetchEnd(downloadTask, i);
    }

    @Override // com.liulishuo.okdownload.DownloadListener
    public final void fetchProgress(@NonNull DownloadTask downloadTask, int i, long j) {
        this.f39512e.fetchProgress(downloadTask, i, j);
    }

    @Override // com.liulishuo.okdownload.DownloadListener
    public void fetchStart(@NonNull DownloadTask downloadTask, int i, long j) {
    }

    @Override // com.liulishuo.okdownload.core.listener.assist.ListenerAssist
    public boolean isAlwaysRecoverAssistModel() {
        return this.f39512e.isAlwaysRecoverAssistModel();
    }

    @Override // com.liulishuo.okdownload.core.listener.assist.ListenerAssist
    public void setAlwaysRecoverAssistModel(boolean z) {
        this.f39512e.setAlwaysRecoverAssistModel(z);
    }

    @Override // com.liulishuo.okdownload.core.listener.assist.ListenerAssist
    public void setAlwaysRecoverAssistModelIfNotSet(boolean z) {
        this.f39512e.setAlwaysRecoverAssistModelIfNotSet(z);
    }

    public void setAssistExtend(@NonNull Listener4Assist.AssistExtend assistExtend) {
        this.f39512e.setAssistExtend(assistExtend);
    }

    @Override // com.liulishuo.okdownload.DownloadListener
    public final void taskEnd(@NonNull DownloadTask downloadTask, @NonNull EndCause endCause, @Nullable Exception exc) {
        this.f39512e.taskEnd(downloadTask, endCause, exc);
    }

    public DownloadListener4() {
        this(new Listener4Assist(new C6976a()));
    }
}
