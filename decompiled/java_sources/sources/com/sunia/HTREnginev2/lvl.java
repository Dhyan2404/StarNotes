package com.sunia.HTREnginev2;

import android.widget.Adapter;
import android.widget.AdapterView;
import androidx.annotation.CheckResult;
import com.jakewharton.rxbinding4.widget.AdapterViewItemClickEvent;
import io.reactivex.rxjava3.core.Observable;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class lvl {
    @CheckResult
    @NotNull
    /* renamed from: a */
    public static final <T extends Adapter> Observable<AdapterViewItemClickEvent> m55524a(@NotNull AdapterView<T> itemClickEvents) {
        Intrinsics.checkParameterIsNotNull(itemClickEvents, "$this$itemClickEvents");
        return new C13516b8(itemClickEvents);
    }
}
