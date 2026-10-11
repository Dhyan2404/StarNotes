package com.liulishuo.okdownload.core.listener.assist;

import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.liulishuo.okdownload.DownloadTask;
import com.liulishuo.okdownload.core.breakpoint.BlockInfo;
import com.liulishuo.okdownload.core.breakpoint.BreakpointInfo;
import com.liulishuo.okdownload.core.cause.EndCause;
import com.liulishuo.okdownload.core.listener.assist.Listener4Assist.Listener4Model;
import com.liulishuo.okdownload.core.listener.assist.ListenerModelHandler;

/* loaded from: classes4.dex */
public class Listener4Assist<T extends Listener4Model> implements ListenerAssist {

    /* renamed from: e */
    public Listener4Callback f39524e;

    /* renamed from: f */
    public AssistExtend f39525f;

    /* renamed from: g */
    public final ListenerModelHandler<T> f39526g;

    /* loaded from: classes4.dex */
    public interface AssistExtend {
        boolean dispatchBlockEnd(DownloadTask downloadTask, int i, Listener4Model listener4Model);

        boolean dispatchFetchProgress(@NonNull DownloadTask downloadTask, int i, long j, @NonNull Listener4Model listener4Model);

        boolean dispatchInfoReady(DownloadTask downloadTask, @NonNull BreakpointInfo breakpointInfo, boolean z, @NonNull Listener4Model listener4Model);

        boolean dispatchTaskEnd(DownloadTask downloadTask, EndCause endCause, @Nullable Exception exc, @NonNull Listener4Model listener4Model);
    }

    /* loaded from: classes4.dex */
    public interface Listener4Callback {
        void blockEnd(DownloadTask downloadTask, int i, BlockInfo blockInfo);

        void infoReady(DownloadTask downloadTask, @NonNull BreakpointInfo breakpointInfo, boolean z, @NonNull Listener4Model listener4Model);

        void progress(DownloadTask downloadTask, long j);

        void progressBlock(DownloadTask downloadTask, int i, long j);

        void taskEnd(DownloadTask downloadTask, EndCause endCause, @Nullable Exception exc, @NonNull Listener4Model listener4Model);
    }

    /* loaded from: classes4.dex */
    public static class Listener4Model implements ListenerModelHandler.InterfaceC6979a {

        /* renamed from: a */
        public final int f39527a;

        /* renamed from: b */
        public BreakpointInfo f39528b;

        /* renamed from: c */
        public long f39529c;

        /* renamed from: d */
        public SparseArray<Long> f39530d;

        public Listener4Model(int i) {
            this.f39527a = i;
        }

        /* renamed from: a */
        public SparseArray<Long> m31095a() {
            return this.f39530d;
        }

        public SparseArray<Long> cloneBlockCurrentOffsetMap() {
            return this.f39530d.clone();
        }

        public long getBlockCurrentOffset(int i) {
            return this.f39530d.get(i).longValue();
        }

        public long getCurrentOffset() {
            return this.f39529c;
        }

        @Override // com.liulishuo.okdownload.core.listener.assist.ListenerModelHandler.InterfaceC6979a
        public int getId() {
            return this.f39527a;
        }

        public BreakpointInfo getInfo() {
            return this.f39528b;
        }

        @Override // com.liulishuo.okdownload.core.listener.assist.ListenerModelHandler.InterfaceC6979a
        public void onInfoValid(@NonNull BreakpointInfo breakpointInfo) {
            this.f39528b = breakpointInfo;
            this.f39529c = breakpointInfo.getTotalOffset();
            SparseArray<Long> sparseArray = new SparseArray<>();
            int blockCount = breakpointInfo.getBlockCount();
            for (int i = 0; i < blockCount; i++) {
                sparseArray.put(i, Long.valueOf(breakpointInfo.getBlock(i).getCurrentOffset()));
            }
            this.f39530d = sparseArray;
        }
    }

    public Listener4Assist(ListenerModelHandler<T> listenerModelHandler) {
        this.f39526g = listenerModelHandler;
    }

    public void fetchEnd(DownloadTask downloadTask, int i) {
        Listener4Callback listener4Callback;
        T m31097b = this.f39526g.m31097b(downloadTask, downloadTask.getInfo());
        if (m31097b == null) {
            return;
        }
        AssistExtend assistExtend = this.f39525f;
        if ((assistExtend == null || !assistExtend.dispatchBlockEnd(downloadTask, i, m31097b)) && (listener4Callback = this.f39524e) != null) {
            listener4Callback.blockEnd(downloadTask, i, m31097b.f39528b.getBlock(i));
        }
    }

    public void fetchProgress(DownloadTask downloadTask, int i, long j) {
        Listener4Callback listener4Callback;
        T m31097b = this.f39526g.m31097b(downloadTask, downloadTask.getInfo());
        if (m31097b == null) {
            return;
        }
        long longValue = m31097b.f39530d.get(i).longValue() + j;
        m31097b.f39530d.put(i, Long.valueOf(longValue));
        m31097b.f39529c += j;
        AssistExtend assistExtend = this.f39525f;
        if ((assistExtend == null || !assistExtend.dispatchFetchProgress(downloadTask, i, j, m31097b)) && (listener4Callback = this.f39524e) != null) {
            listener4Callback.progressBlock(downloadTask, i, longValue);
            this.f39524e.progress(downloadTask, m31097b.f39529c);
        }
    }

    public AssistExtend getAssistExtend() {
        return this.f39525f;
    }

    public void infoReady(DownloadTask downloadTask, BreakpointInfo breakpointInfo, boolean z) {
        Listener4Callback listener4Callback;
        T m31096a = this.f39526g.m31096a(downloadTask, breakpointInfo);
        AssistExtend assistExtend = this.f39525f;
        if ((assistExtend == null || !assistExtend.dispatchInfoReady(downloadTask, breakpointInfo, z, m31096a)) && (listener4Callback = this.f39524e) != null) {
            listener4Callback.infoReady(downloadTask, breakpointInfo, z, m31096a);
        }
    }

    @Override // com.liulishuo.okdownload.core.listener.assist.ListenerAssist
    public boolean isAlwaysRecoverAssistModel() {
        return this.f39526g.isAlwaysRecoverAssistModel();
    }

    @Override // com.liulishuo.okdownload.core.listener.assist.ListenerAssist
    public void setAlwaysRecoverAssistModel(boolean z) {
        this.f39526g.setAlwaysRecoverAssistModel(z);
    }

    @Override // com.liulishuo.okdownload.core.listener.assist.ListenerAssist
    public void setAlwaysRecoverAssistModelIfNotSet(boolean z) {
        this.f39526g.setAlwaysRecoverAssistModelIfNotSet(z);
    }

    public void setAssistExtend(@NonNull AssistExtend assistExtend) {
        this.f39525f = assistExtend;
    }

    public void setCallback(@NonNull Listener4Callback listener4Callback) {
        this.f39524e = listener4Callback;
    }

    public synchronized void taskEnd(DownloadTask downloadTask, EndCause endCause, @Nullable Exception exc) {
        T m31098c = this.f39526g.m31098c(downloadTask, downloadTask.getInfo());
        AssistExtend assistExtend = this.f39525f;
        if (assistExtend == null || !assistExtend.dispatchTaskEnd(downloadTask, endCause, exc, m31098c)) {
            Listener4Callback listener4Callback = this.f39524e;
            if (listener4Callback != null) {
                listener4Callback.taskEnd(downloadTask, endCause, exc, m31098c);
            }
        }
    }

    public Listener4Assist(ListenerModelHandler.ModelCreator<T> modelCreator) {
        this.f39526g = new ListenerModelHandler<>(modelCreator);
    }
}
