package com.liulishuo.okdownload.core.listener.assist;

import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.liulishuo.okdownload.DownloadTask;
import com.liulishuo.okdownload.SpeedCalculator;
import com.liulishuo.okdownload.core.breakpoint.BlockInfo;
import com.liulishuo.okdownload.core.breakpoint.BreakpointInfo;
import com.liulishuo.okdownload.core.cause.EndCause;
import com.liulishuo.okdownload.core.listener.assist.Listener4Assist;
import com.liulishuo.okdownload.core.listener.assist.ListenerModelHandler;
import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;

@SuppressFBWarnings({"BC"})
/* loaded from: classes4.dex */
public class Listener4SpeedAssistExtend implements Listener4Assist.AssistExtend, ListenerModelHandler.ModelCreator<Listener4SpeedModel> {

    /* renamed from: e */
    public Listener4SpeedCallback f39531e;

    /* loaded from: classes4.dex */
    public interface Listener4SpeedCallback {
        void blockEnd(@NonNull DownloadTask downloadTask, int i, BlockInfo blockInfo, @NonNull SpeedCalculator speedCalculator);

        void infoReady(@NonNull DownloadTask downloadTask, @NonNull BreakpointInfo breakpointInfo, boolean z, @NonNull Listener4SpeedModel listener4SpeedModel);

        void progress(@NonNull DownloadTask downloadTask, long j, @NonNull SpeedCalculator speedCalculator);

        void progressBlock(@NonNull DownloadTask downloadTask, int i, long j, @NonNull SpeedCalculator speedCalculator);

        void taskEnd(@NonNull DownloadTask downloadTask, @NonNull EndCause endCause, @Nullable Exception exc, @NonNull SpeedCalculator speedCalculator);
    }

    /* loaded from: classes4.dex */
    public static class Listener4SpeedModel extends Listener4Assist.Listener4Model {

        /* renamed from: e */
        public SpeedCalculator f39532e;

        /* renamed from: f */
        public SparseArray<SpeedCalculator> f39533f;

        public Listener4SpeedModel(int i) {
            super(i);
        }

        public SpeedCalculator getBlockSpeed(int i) {
            return this.f39533f.get(i);
        }

        public SpeedCalculator getTaskSpeed() {
            return this.f39532e;
        }

        @Override // com.liulishuo.okdownload.core.listener.assist.Listener4Assist.Listener4Model, com.liulishuo.okdownload.core.listener.assist.ListenerModelHandler.InterfaceC6979a
        public void onInfoValid(@NonNull BreakpointInfo breakpointInfo) {
            super.onInfoValid(breakpointInfo);
            this.f39532e = new SpeedCalculator();
            this.f39533f = new SparseArray<>();
            int blockCount = breakpointInfo.getBlockCount();
            for (int i = 0; i < blockCount; i++) {
                this.f39533f.put(i, new SpeedCalculator());
            }
        }
    }

    @Override // com.liulishuo.okdownload.core.listener.assist.Listener4Assist.AssistExtend
    public boolean dispatchBlockEnd(DownloadTask downloadTask, int i, Listener4Assist.Listener4Model listener4Model) {
        Listener4SpeedModel listener4SpeedModel = (Listener4SpeedModel) listener4Model;
        listener4SpeedModel.f39533f.get(i).endTask();
        Listener4SpeedCallback listener4SpeedCallback = this.f39531e;
        if (listener4SpeedCallback == null) {
            return true;
        }
        listener4SpeedCallback.blockEnd(downloadTask, i, listener4Model.f39528b.getBlock(i), listener4SpeedModel.getBlockSpeed(i));
        return true;
    }

    @Override // com.liulishuo.okdownload.core.listener.assist.Listener4Assist.AssistExtend
    public boolean dispatchFetchProgress(@NonNull DownloadTask downloadTask, int i, long j, @NonNull Listener4Assist.Listener4Model listener4Model) {
        Listener4SpeedModel listener4SpeedModel = (Listener4SpeedModel) listener4Model;
        listener4SpeedModel.f39533f.get(i).downloading(j);
        listener4SpeedModel.f39532e.downloading(j);
        Listener4SpeedCallback listener4SpeedCallback = this.f39531e;
        if (listener4SpeedCallback == null) {
            return true;
        }
        listener4SpeedCallback.progressBlock(downloadTask, i, listener4Model.f39530d.get(i).longValue(), listener4SpeedModel.getBlockSpeed(i));
        this.f39531e.progress(downloadTask, listener4Model.f39529c, listener4SpeedModel.f39532e);
        return true;
    }

    @Override // com.liulishuo.okdownload.core.listener.assist.Listener4Assist.AssistExtend
    public boolean dispatchInfoReady(DownloadTask downloadTask, @NonNull BreakpointInfo breakpointInfo, boolean z, @NonNull Listener4Assist.Listener4Model listener4Model) {
        Listener4SpeedCallback listener4SpeedCallback = this.f39531e;
        if (listener4SpeedCallback == null) {
            return true;
        }
        listener4SpeedCallback.infoReady(downloadTask, breakpointInfo, z, (Listener4SpeedModel) listener4Model);
        return true;
    }

    @Override // com.liulishuo.okdownload.core.listener.assist.Listener4Assist.AssistExtend
    public boolean dispatchTaskEnd(DownloadTask downloadTask, EndCause endCause, @Nullable Exception exc, @NonNull Listener4Assist.Listener4Model listener4Model) {
        SpeedCalculator speedCalculator = ((Listener4SpeedModel) listener4Model).f39532e;
        if (speedCalculator != null) {
            speedCalculator.endTask();
        } else {
            speedCalculator = new SpeedCalculator();
        }
        Listener4SpeedCallback listener4SpeedCallback = this.f39531e;
        if (listener4SpeedCallback == null) {
            return true;
        }
        listener4SpeedCallback.taskEnd(downloadTask, endCause, exc, speedCalculator);
        return true;
    }

    public void setCallback(Listener4SpeedCallback listener4SpeedCallback) {
        this.f39531e = listener4SpeedCallback;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.liulishuo.okdownload.core.listener.assist.ListenerModelHandler.ModelCreator
    public Listener4SpeedModel create(int i) {
        return new Listener4SpeedModel(i);
    }
}
