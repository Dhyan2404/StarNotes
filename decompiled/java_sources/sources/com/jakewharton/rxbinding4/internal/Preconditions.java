package com.jakewharton.rxbinding4.internal;

import android.os.Looper;
import androidx.annotation.RestrictTo;
import com.onyx.android.sdk.universal.editor.eventhandler.EventHandlerManager;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61526bv = {1, 0, 3}, m61527d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u00012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003H\u0007¨\u0006\u0004"}, m61528d2 = {"checkMainThread", "", EventHandlerManager.OBSERVER, "Lio/reactivex/rxjava3/core/Observer;", "rxbinding_release"}, m61529k = 2, m61530mv = {1, 1, 16})
@JvmName(name = "Preconditions")
/* loaded from: classes4.dex */
public final class Preconditions {
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final boolean checkMainThread(@NotNull Observer<?> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (!(!Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper()))) {
            return true;
        }
        observer.onSubscribe(Disposable.empty());
        StringBuilder sb = new StringBuilder();
        sb.append("Expected to be called on the main thread but was ");
        Thread currentThread = Thread.currentThread();
        Intrinsics.checkExpressionValueIsNotNull(currentThread, "Thread.currentThread()");
        sb.append(currentThread.getName());
        observer.onError(new IllegalStateException(sb.toString()));
        return false;
    }
}
