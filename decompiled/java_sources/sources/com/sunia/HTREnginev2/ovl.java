package com.sunia.HTREnginev2;

import android.widget.Adapter;
import android.widget.AdapterView;
import androidx.annotation.CheckResult;
import com.jakewharton.rxbinding4.internal.AlwaysTrue;
import com.jakewharton.rxbinding4.widget.RxAdapterView;
import io.reactivex.rxjava3.core.Observable;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class ovl {
    @CheckResult
    @JvmOverloads
    @NotNull
    /* renamed from: a */
    public static final <T extends Adapter> Observable<Integer> m56169a(@NotNull AdapterView<T> adapterView) {
        return RxAdapterView.itemLongClicks$default(adapterView, null, 1, null);
    }

    @CheckResult
    @JvmOverloads
    @NotNull
    /* renamed from: b */
    public static final <T extends Adapter> Observable<Integer> m56170b(@NotNull AdapterView<T> itemLongClicks, @NotNull Function0<Boolean> handled) {
        Intrinsics.checkParameterIsNotNull(itemLongClicks, "$this$itemLongClicks");
        Intrinsics.checkParameterIsNotNull(handled, "handled");
        return new C13660e8(itemLongClicks, handled);
    }

    /* renamed from: c */
    public static /* synthetic */ Observable m56171c(AdapterView adapterView, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            function0 = AlwaysTrue.INSTANCE;
        }
        return RxAdapterView.itemLongClicks(adapterView, function0);
    }
}
