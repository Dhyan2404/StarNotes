package com.sunia.HTREnginev2;

import java.util.concurrent.CompletionException;
import java.util.function.BiFunction;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.Nullable;

/* loaded from: classes11.dex */
public final class ybe<T> implements BiFunction<T, Throwable, Unit> {

    @JvmField
    @Nullable
    public volatile Continuation<? super T> cont;

    public ybe(@Nullable Continuation<? super T> continuation) {
        this.cont = continuation;
    }

    /* renamed from: a */
    public void m58401a(@Nullable T t, @Nullable Throwable th) {
        Throwable cause;
        Continuation<? super T> continuation = this.cont;
        if (continuation == null) {
            return;
        }
        if (th == null) {
            Result.Companion companion = Result.INSTANCE;
            continuation.resumeWith(Result.m72621constructorimpl(t));
            return;
        }
        CompletionException completionException = th instanceof CompletionException ? (CompletionException) th : null;
        if (completionException != null && (cause = completionException.getCause()) != null) {
            th = cause;
        }
        Result.Companion companion2 = Result.INSTANCE;
        continuation.resumeWith(Result.m72621constructorimpl(ResultKt.createFailure(th)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.function.BiFunction
    public /* bridge */ /* synthetic */ Unit apply(Object obj, Throwable th) {
        m58401a(obj, th);
        return Unit.INSTANCE;
    }
}
