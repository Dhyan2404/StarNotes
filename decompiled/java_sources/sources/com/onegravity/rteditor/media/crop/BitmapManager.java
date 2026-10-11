package com.onegravity.rteditor.media.crop;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.FileDescriptor;
import java.util.Iterator;
import java.util.WeakHashMap;

/* loaded from: classes7.dex */
public class BitmapManager {

    /* renamed from: b */
    public static BitmapManager f40415b;

    /* renamed from: a */
    public final WeakHashMap<Thread, C7066b> f40416a = new WeakHashMap<>();

    /* loaded from: classes7.dex */
    public enum State {
        CANCEL,
        ALLOW
    }

    /* loaded from: classes7.dex */
    public static class ThreadSet implements Iterable<Thread> {

        /* renamed from: e */
        public final WeakHashMap<Thread, Object> f40417e = new WeakHashMap<>();

        public void add(Thread thread) {
            this.f40417e.put(thread, null);
        }

        @Override // java.lang.Iterable
        public Iterator<Thread> iterator() {
            return this.f40417e.keySet().iterator();
        }

        public void remove(Thread thread) {
            this.f40417e.remove(thread);
        }
    }

    /* renamed from: com.onegravity.rteditor.media.crop.BitmapManager$b */
    /* loaded from: classes7.dex */
    public static class C7066b {

        /* renamed from: a */
        public State f40418a;

        /* renamed from: b */
        public BitmapFactory.Options f40419b;

        public C7066b() {
            this.f40418a = State.ALLOW;
        }

        public String toString() {
            State state = this.f40418a;
            return "thread state = " + (state == State.CANCEL ? "Cancel" : state == State.ALLOW ? "Allow" : "?") + ", options = " + this.f40419b;
        }
    }

    public static synchronized BitmapManager instance() {
        BitmapManager bitmapManager;
        synchronized (BitmapManager.class) {
            if (f40415b == null) {
                f40415b = new BitmapManager();
            }
            bitmapManager = f40415b;
        }
        return bitmapManager;
    }

    /* renamed from: a */
    public synchronized BitmapFactory.Options m31700a(Thread thread) {
        C7066b c7066b;
        c7066b = this.f40416a.get(thread);
        return c7066b != null ? c7066b.f40419b : null;
    }

    public synchronized void allowThreadDecoding(ThreadSet threadSet) {
        Iterator<Thread> it2 = threadSet.iterator();
        while (it2.hasNext()) {
            allowThreadDecoding(it2.next());
        }
    }

    /* renamed from: b */
    public final synchronized C7066b m31701b(Thread thread) {
        C7066b c7066b;
        c7066b = this.f40416a.get(thread);
        if (c7066b == null) {
            c7066b = new C7066b();
            this.f40416a.put(thread, c7066b);
        }
        return c7066b;
    }

    /* renamed from: c */
    public synchronized void m31702c(Thread thread) {
        this.f40416a.get(thread).f40419b = null;
    }

    public synchronized boolean canThreadDecoding(Thread thread) {
        C7066b c7066b = this.f40416a.get(thread);
        if (c7066b == null) {
            return true;
        }
        return c7066b.f40418a != State.CANCEL;
    }

    public synchronized void cancelThreadDecoding(ThreadSet threadSet) {
        Iterator<Thread> it2 = threadSet.iterator();
        while (it2.hasNext()) {
            cancelThreadDecoding(it2.next());
        }
    }

    /* renamed from: d */
    public final synchronized void m31703d(Thread thread, BitmapFactory.Options options) {
        m31701b(thread).f40419b = options;
    }

    public Bitmap decodeFileDescriptor(FileDescriptor fileDescriptor, BitmapFactory.Options options) {
        if (options.mCancel) {
            return null;
        }
        Thread currentThread = Thread.currentThread();
        if (!canThreadDecoding(currentThread)) {
            return null;
        }
        m31703d(currentThread, options);
        Bitmap decodeFileDescriptor = BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
        m31702c(currentThread);
        return decodeFileDescriptor;
    }

    public synchronized void allowThreadDecoding(Thread thread) {
        m31701b(thread).f40418a = State.ALLOW;
    }

    public synchronized void cancelThreadDecoding(Thread thread) {
        C7066b m31701b = m31701b(thread);
        m31701b.f40418a = State.CANCEL;
        BitmapFactory.Options options = m31701b.f40419b;
        if (options != null) {
            options.requestCancelDecode();
        }
        notifyAll();
    }
}
