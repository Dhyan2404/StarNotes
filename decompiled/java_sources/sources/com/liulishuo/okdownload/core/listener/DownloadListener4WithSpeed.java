package com.liulishuo.okdownload.core.listener;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.liulishuo.okdownload.DownloadTask;
import com.liulishuo.okdownload.core.breakpoint.BlockInfo;
import com.liulishuo.okdownload.core.breakpoint.BreakpointInfo;
import com.liulishuo.okdownload.core.cause.EndCause;
import com.liulishuo.okdownload.core.listener.assist.Listener4Assist;
import com.liulishuo.okdownload.core.listener.assist.Listener4SpeedAssistExtend;
import com.liulishuo.okdownload.core.listener.assist.ListenerModelHandler;

/* loaded from: classes4.dex */
public abstract class DownloadListener4WithSpeed extends DownloadListener4 implements Listener4SpeedAssistExtend.Listener4SpeedCallback {

    /* renamed from: com.liulishuo.okdownload.core.listener.DownloadListener4WithSpeed$b */
    /* loaded from: classes4.dex */
    public static class C6978b implements ListenerModelHandler.ModelCreator<Listener4SpeedAssistExtend.Listener4SpeedModel> {
        public C6978b() {
        }

        @Override // com.liulishuo.okdownload.core.listener.assist.ListenerModelHandler.ModelCreator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Listener4SpeedAssistExtend.Listener4SpeedModel create(int i) {
            return new Listener4SpeedAssistExtend.Listener4SpeedModel(i);
        }
    }

    public DownloadListener4WithSpeed(Listener4SpeedAssistExtend listener4SpeedAssistExtend) {
        super(new Listener4Assist(new C6978b()));
        listener4SpeedAssistExtend.setCallback(this);
        setAssistExtend(listener4SpeedAssistExtend);
    }

    @Override // com.liulishuo.okdownload.core.listener.assist.Listener4Assist.Listener4Callback
    public final void blockEnd(DownloadTask downloadTask, int i, BlockInfo blockInfo) {
    }

    @Override // com.liulishuo.okdownload.core.listener.assist.Listener4Assist.Listener4Callback
    public final void infoReady(DownloadTask downloadTask, @NonNull BreakpointInfo breakpointInfo, boolean z, @NonNull Listener4Assist.Listener4Model listener4Model) {
    }

    @Override // com.liulishuo.okdownload.core.listener.assist.Listener4Assist.Listener4Callback
    public final void progress(DownloadTask downloadTask, long j) {
    }

    @Override // com.liulishuo.okdownload.core.listener.assist.Listener4Assist.Listener4Callback
    public final void progressBlock(DownloadTask downloadTask, int i, long j) {
    }

    @Override // com.liulishuo.okdownload.core.listener.assist.Listener4Assist.Listener4Callback
    public final void taskEnd(DownloadTask downloadTask, EndCause endCause, @Nullable Exception exc, @NonNull Listener4Assist.Listener4Model listener4Model) {
    }

    public DownloadListener4WithSpeed() {
        this(new Listener4SpeedAssistExtend());
    }
}
