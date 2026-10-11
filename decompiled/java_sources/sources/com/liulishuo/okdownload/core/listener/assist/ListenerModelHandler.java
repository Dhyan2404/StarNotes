package com.liulishuo.okdownload.core.listener.assist;

import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.liulishuo.okdownload.DownloadTask;
import com.liulishuo.okdownload.core.breakpoint.BreakpointInfo;
import com.liulishuo.okdownload.core.listener.assist.ListenerModelHandler.InterfaceC6979a;

/* loaded from: classes4.dex */
public class ListenerModelHandler<T extends InterfaceC6979a> implements ListenerAssist {

    /* renamed from: e */
    public volatile T f39534e;

    /* renamed from: f */
    public final SparseArray<T> f39535f = new SparseArray<>();

    /* renamed from: g */
    public Boolean f39536g;

    /* renamed from: h */
    public final ModelCreator<T> f39537h;

    /* loaded from: classes4.dex */
    public interface ModelCreator<T extends InterfaceC6979a> {
        T create(int i);
    }

    /* renamed from: com.liulishuo.okdownload.core.listener.assist.ListenerModelHandler$a */
    /* loaded from: classes4.dex */
    public interface InterfaceC6979a {
        int getId();

        void onInfoValid(@NonNull BreakpointInfo breakpointInfo);
    }

    public ListenerModelHandler(ModelCreator<T> modelCreator) {
        this.f39537h = modelCreator;
    }

    @NonNull
    /* renamed from: a */
    public T m31096a(@NonNull DownloadTask downloadTask, @Nullable BreakpointInfo breakpointInfo) {
        T create = this.f39537h.create(downloadTask.getId());
        synchronized (this) {
            if (this.f39534e == null) {
                this.f39534e = create;
            } else {
                this.f39535f.put(downloadTask.getId(), create);
            }
            if (breakpointInfo != null) {
                create.onInfoValid(breakpointInfo);
            }
        }
        return create;
    }

    @Nullable
    /* renamed from: b */
    public T m31097b(@NonNull DownloadTask downloadTask, @Nullable BreakpointInfo breakpointInfo) {
        T t;
        int id = downloadTask.getId();
        synchronized (this) {
            t = (this.f39534e == null || this.f39534e.getId() != id) ? null : this.f39534e;
        }
        if (t == null) {
            t = this.f39535f.get(id);
        }
        return (t == null && isAlwaysRecoverAssistModel()) ? m31096a(downloadTask, breakpointInfo) : t;
    }

    @NonNull
    /* renamed from: c */
    public T m31098c(@NonNull DownloadTask downloadTask, @Nullable BreakpointInfo breakpointInfo) {
        T t;
        int id = downloadTask.getId();
        synchronized (this) {
            if (this.f39534e == null || this.f39534e.getId() != id) {
                t = this.f39535f.get(id);
                this.f39535f.remove(id);
            } else {
                t = this.f39534e;
                this.f39534e = null;
            }
        }
        if (t == null) {
            t = this.f39537h.create(id);
            if (breakpointInfo != null) {
                t.onInfoValid(breakpointInfo);
            }
        }
        return t;
    }

    @Override // com.liulishuo.okdownload.core.listener.assist.ListenerAssist
    public boolean isAlwaysRecoverAssistModel() {
        Boolean bool = this.f39536g;
        return bool != null && bool.booleanValue();
    }

    @Override // com.liulishuo.okdownload.core.listener.assist.ListenerAssist
    public void setAlwaysRecoverAssistModel(boolean z) {
        this.f39536g = Boolean.valueOf(z);
    }

    @Override // com.liulishuo.okdownload.core.listener.assist.ListenerAssist
    public void setAlwaysRecoverAssistModelIfNotSet(boolean z) {
        if (this.f39536g == null) {
            this.f39536g = Boolean.valueOf(z);
        }
    }
}
