package com.evernote.client.android.asyncclient;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.evernote.client.android.helper.EvernotePreconditions;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

/* loaded from: classes4.dex */
public abstract class EvernoteAsyncClient {

    /* renamed from: b */
    public static final Handler f20833b = new Handler(Looper.getMainLooper());

    /* renamed from: c */
    public static final Thread f20834c = Looper.getMainLooper().getThread();

    /* renamed from: a */
    public final ExecutorService f20835a;

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.evernote.client.android.asyncclient.EvernoteAsyncClient$a */
    /* loaded from: classes4.dex */
    public class CallableC4462a<T> implements Callable<T> {

        /* renamed from: e */
        public final /* synthetic */ Callable f20836e;

        /* renamed from: f */
        public final /* synthetic */ EvernoteCallback f20837f;

        public CallableC4462a(Callable callable, EvernoteCallback evernoteCallback) {
            this.f20836e = callable;
            this.f20837f = evernoteCallback;
        }

        @Override // java.util.concurrent.Callable
        public T call() throws Exception {
            try {
                T t = (T) this.f20836e.call();
                EvernoteAsyncClient.this.m16943d(t, this.f20837f);
                return t;
            } catch (Exception e) {
                EvernoteAsyncClient.this.m16942c(e, this.f20837f);
                return null;
            }
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteAsyncClient$b */
    /* loaded from: classes4.dex */
    public class RunnableC4463b implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ EvernoteCallback f20839e;

        /* renamed from: f */
        public final /* synthetic */ Object f20840f;

        public RunnableC4463b(EvernoteCallback evernoteCallback, Object obj) {
            this.f20839e = evernoteCallback;
            this.f20840f = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f20839e.onSuccess(this.f20840f);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteAsyncClient$c */
    /* loaded from: classes4.dex */
    public class RunnableC4464c implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ EvernoteCallback f20842e;

        /* renamed from: f */
        public final /* synthetic */ Exception f20843f;

        public RunnableC4464c(EvernoteCallback evernoteCallback, Exception exc) {
            this.f20842e = evernoteCallback;
            this.f20843f = exc;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f20842e.onException(this.f20843f);
        }
    }

    public EvernoteAsyncClient(@NonNull ExecutorService executorService) {
        this.f20835a = (ExecutorService) EvernotePreconditions.checkNotNull(executorService);
    }

    /* renamed from: c */
    public final <T> void m16942c(Exception exc, EvernoteCallback<T> evernoteCallback) {
        if (evernoteCallback != null) {
            runOnUiThread(new RunnableC4464c(evernoteCallback, exc));
        }
    }

    /* renamed from: d */
    public final <T> void m16943d(T t, EvernoteCallback<T> evernoteCallback) {
        if (evernoteCallback != null) {
            runOnUiThread(new RunnableC4463b(evernoteCallback, t));
        }
    }

    public final void runOnUiThread(@NonNull Runnable runnable) {
        if (Thread.currentThread() != f20834c) {
            f20833b.post(runnable);
        } else {
            runnable.run();
        }
    }

    public <T> Future<T> submitTask(@NonNull Callable<T> callable, @Nullable EvernoteCallback<T> evernoteCallback) {
        return this.f20835a.submit(new CallableC4462a(callable, evernoteCallback));
    }
}
