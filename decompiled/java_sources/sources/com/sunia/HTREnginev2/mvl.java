package com.sunia.HTREnginev2;

import android.widget.Adapter;
import android.widget.AdapterView;
import androidx.annotation.CheckResult;
import io.reactivex.rxjava3.core.Observable;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class mvl {
    @CheckResult
    @NotNull
    /* renamed from: a */
    public static final <T extends Adapter> Observable<Integer> m55689a(@NotNull AdapterView<T> itemClicks) {
        Intrinsics.checkParameterIsNotNull(itemClicks, "$this$itemClicks");
        return new C13554c8(itemClicks);
    }
}
