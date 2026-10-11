package com.jakewharton.rxbinding4.widget;

import android.view.MenuItem;
import android.widget.PopupMenu;
import androidx.annotation.CheckResult;
import com.sunia.HTREnginev2.mwl;
import com.sunia.HTREnginev2.nwl;
import io.reactivex.rxjava3.core.Observable;
import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"com/sunia/HTREnginev2/mwl", "com/sunia/HTREnginev2/nwl"}, m61528d2 = {}, m61529k = 4, m61530mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class RxPopupMenu {
    @CheckResult
    @NotNull
    public static final Observable<Unit> dismisses(@NotNull PopupMenu popupMenu) {
        return mwl.m55691a(popupMenu);
    }

    @CheckResult
    @NotNull
    public static final Observable<MenuItem> itemClicks(@NotNull PopupMenu popupMenu) {
        return nwl.m55807a(popupMenu);
    }
}
