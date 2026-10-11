package com.sunia.HTREnginev2;

import android.widget.Adapter;
import android.widget.AdapterView;
import androidx.annotation.CheckResult;
import com.jakewharton.rxbinding4.internal.AlwaysTrue;
import com.jakewharton.rxbinding4.widget.AdapterViewItemLongClickEvent;
import com.jakewharton.rxbinding4.widget.RxAdapterView;
import io.reactivex.rxjava3.core.Observable;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class nvl {
    @CheckResult
    @JvmOverloads
    @NotNull
    /* renamed from: a */
    public static final <T extends Adapter> Observable<AdapterViewItemLongClickEvent> m55803a(@NotNull AdapterView<T> adapterView) {
        return m55805c(adapterView, null, 1, null);
    }

    @CheckResult
    @JvmOverloads
    @NotNull
    /* renamed from: b */
    public static final <T extends Adapter> Observable<AdapterViewItemLongClickEvent> m55804b(@NotNull AdapterView<T> itemLongClickEvents, @NotNull Function1<? super AdapterViewItemLongClickEvent, Boolean> handled) {
        Intrinsics.checkParameterIsNotNull(itemLongClickEvents, "$this$itemLongClickEvents");
        Intrinsics.checkParameterIsNotNull(handled, "handled");
        return new C13606d8(itemLongClickEvents, handled);
    }

    /* renamed from: c */
    public static /* synthetic */ Observable m55805c(AdapterView adapterView, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = AlwaysTrue.INSTANCE;
        }
        return RxAdapterView.itemLongClickEvents(adapterView, function1);
    }
}
