package com.sunia.HTREnginev2;

import android.widget.AbsListView;
import androidx.annotation.CheckResult;
import com.jakewharton.rxbinding4.widget.AbsListViewScrollEvent;
import io.reactivex.rxjava3.core.Observable;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class kvl {
    @CheckResult
    @NotNull
    /* renamed from: a */
    public static final Observable<AbsListViewScrollEvent> m55350a(@NotNull AbsListView scrollEvents) {
        Intrinsics.checkParameterIsNotNull(scrollEvents, "$this$scrollEvents");
        return new C13804h2(scrollEvents);
    }
}
