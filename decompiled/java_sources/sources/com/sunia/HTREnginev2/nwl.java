package com.sunia.HTREnginev2;

import android.view.MenuItem;
import android.widget.PopupMenu;
import androidx.annotation.CheckResult;
import io.reactivex.rxjava3.core.Observable;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class nwl {
    @CheckResult
    @NotNull
    /* renamed from: a */
    public static final Observable<MenuItem> m55807a(@NotNull PopupMenu itemClicks) {
        Intrinsics.checkParameterIsNotNull(itemClicks, "$this$itemClicks");
        return new i5l(itemClicks);
    }
}
