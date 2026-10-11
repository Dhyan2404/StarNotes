package com.jakewharton.rxbinding4.widget;

import android.widget.Adapter;
import android.widget.AdapterView;
import androidx.annotation.CheckResult;
import com.jakewharton.rxbinding4.InitialValueObservable;
import com.sunia.HTREnginev2.lvl;
import com.sunia.HTREnginev2.mvl;
import com.sunia.HTREnginev2.nvl;
import com.sunia.HTREnginev2.ovl;
import com.sunia.HTREnginev2.pvl;
import com.sunia.HTREnginev2.qvl;
import io.reactivex.rxjava3.core.Observable;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"com/sunia/HTREnginev2/lvl", "com/sunia/HTREnginev2/mvl", "com/sunia/HTREnginev2/nvl", "com/sunia/HTREnginev2/ovl", "com/sunia/HTREnginev2/pvl", "com/sunia/HTREnginev2/qvl"}, m61528d2 = {}, m61529k = 4, m61530mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class RxAdapterView {
    @CheckResult
    @NotNull
    public static final <T extends Adapter> Observable<AdapterViewItemClickEvent> itemClickEvents(@NotNull AdapterView<T> adapterView) {
        return lvl.m55524a(adapterView);
    }

    @CheckResult
    @NotNull
    public static final <T extends Adapter> Observable<Integer> itemClicks(@NotNull AdapterView<T> adapterView) {
        return mvl.m55689a(adapterView);
    }

    @CheckResult
    @JvmOverloads
    @NotNull
    public static final <T extends Adapter> Observable<AdapterViewItemLongClickEvent> itemLongClickEvents(@NotNull AdapterView<T> adapterView) {
        return nvl.m55805c(adapterView, null, 1, null);
    }

    @CheckResult
    @JvmOverloads
    @NotNull
    public static final <T extends Adapter> Observable<Integer> itemLongClicks(@NotNull AdapterView<T> adapterView) {
        return ovl.m56171c(adapterView, null, 1, null);
    }

    @CheckResult
    @NotNull
    public static final <T extends Adapter> InitialValueObservable<Integer> itemSelections(@NotNull AdapterView<T> adapterView) {
        return pvl.m56426a(adapterView);
    }

    @CheckResult
    @NotNull
    public static final <T extends Adapter> InitialValueObservable<AdapterViewSelectionEvent> selectionEvents(@NotNull AdapterView<T> adapterView) {
        return qvl.m56788a(adapterView);
    }

    @CheckResult
    @JvmOverloads
    @NotNull
    public static final <T extends Adapter> Observable<AdapterViewItemLongClickEvent> itemLongClickEvents(@NotNull AdapterView<T> adapterView, @NotNull Function1<? super AdapterViewItemLongClickEvent, Boolean> function1) {
        return nvl.m55804b(adapterView, function1);
    }

    @CheckResult
    @JvmOverloads
    @NotNull
    public static final <T extends Adapter> Observable<Integer> itemLongClicks(@NotNull AdapterView<T> adapterView, @NotNull Function0<Boolean> function0) {
        return ovl.m56170b(adapterView, function0);
    }
}
