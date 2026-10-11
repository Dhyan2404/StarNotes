package com.google.android.exoplayer2.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.HandlerWrapper;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.google.android.exoplayer2.util.a */
/* loaded from: classes5.dex */
public final class C5023a implements HandlerWrapper {

    /* renamed from: b */
    public static final int f28484b = 50;

    /* renamed from: c */
    @GuardedBy("messagePool")
    public static final List<b> f28485c = new ArrayList(50);

    /* renamed from: a */
    public final Handler f28486a;

    /* renamed from: com.google.android.exoplayer2.util.a$b */
    /* loaded from: classes5.dex */
    public static final class b implements HandlerWrapper.Message {

        /* renamed from: a */
        @Nullable
        public Message f28487a;

        /* renamed from: b */
        @Nullable
        public C5023a f28488b;

        public b() {
        }

        /* renamed from: a */
        public final void m21561a() {
            this.f28487a = null;
            this.f28488b = null;
            C5023a.m21560c(this);
        }

        /* renamed from: b */
        public boolean m21562b(Handler handler) {
            boolean sendMessageAtFrontOfQueue = handler.sendMessageAtFrontOfQueue((Message) Assertions.checkNotNull(this.f28487a));
            m21561a();
            return sendMessageAtFrontOfQueue;
        }

        /* renamed from: c */
        public b m21563c(Message message, C5023a c5023a) {
            this.f28487a = message;
            this.f28488b = c5023a;
            return this;
        }

        @Override // com.google.android.exoplayer2.util.HandlerWrapper.Message
        public HandlerWrapper getTarget() {
            return (HandlerWrapper) Assertions.checkNotNull(this.f28488b);
        }

        @Override // com.google.android.exoplayer2.util.HandlerWrapper.Message
        public void sendToTarget() {
            ((Message) Assertions.checkNotNull(this.f28487a)).sendToTarget();
            m21561a();
        }
    }

    public C5023a(Handler handler) {
        this.f28486a = handler;
    }

    /* renamed from: b */
    public static b m21559b() {
        b bVar;
        List<b> list = f28485c;
        synchronized (list) {
            bVar = list.isEmpty() ? new b() : list.remove(list.size() - 1);
        }
        return bVar;
    }

    /* renamed from: c */
    public static void m21560c(b bVar) {
        List<b> list = f28485c;
        synchronized (list) {
            if (list.size() < 50) {
                list.add(bVar);
            }
        }
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public Looper getLooper() {
        return this.f28486a.getLooper();
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public boolean hasMessages(int i) {
        return this.f28486a.hasMessages(i);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public HandlerWrapper.Message obtainMessage(int i) {
        return m21559b().m21563c(this.f28486a.obtainMessage(i), this);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public boolean post(Runnable runnable) {
        return this.f28486a.post(runnable);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public boolean postAtFrontOfQueue(Runnable runnable) {
        return this.f28486a.postAtFrontOfQueue(runnable);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public boolean postDelayed(Runnable runnable, long j) {
        return this.f28486a.postDelayed(runnable, j);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public void removeCallbacksAndMessages(@Nullable Object obj) {
        this.f28486a.removeCallbacksAndMessages(obj);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public void removeMessages(int i) {
        this.f28486a.removeMessages(i);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public boolean sendEmptyMessage(int i) {
        return this.f28486a.sendEmptyMessage(i);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public boolean sendEmptyMessageAtTime(int i, long j) {
        return this.f28486a.sendEmptyMessageAtTime(i, j);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public boolean sendEmptyMessageDelayed(int i, int i2) {
        return this.f28486a.sendEmptyMessageDelayed(i, i2);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public boolean sendMessageAtFrontOfQueue(HandlerWrapper.Message message) {
        return ((b) message).m21562b(this.f28486a);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public HandlerWrapper.Message obtainMessage(int i, @Nullable Object obj) {
        return m21559b().m21563c(this.f28486a.obtainMessage(i, obj), this);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public HandlerWrapper.Message obtainMessage(int i, int i2, int i3) {
        return m21559b().m21563c(this.f28486a.obtainMessage(i, i2, i3), this);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public HandlerWrapper.Message obtainMessage(int i, int i2, int i3, @Nullable Object obj) {
        return m21559b().m21563c(this.f28486a.obtainMessage(i, i2, i3, obj), this);
    }
}
