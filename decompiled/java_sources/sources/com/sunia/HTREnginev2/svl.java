package com.sunia.HTREnginev2;

import android.widget.AutoCompleteTextView;
import androidx.annotation.CheckResult;
import com.jakewharton.rxbinding4.widget.AdapterViewItemClickEvent;
import io.reactivex.rxjava3.core.Observable;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class svl {
    @CheckResult
    @NotNull
    /* renamed from: a */
    public static final Observable<AdapterViewItemClickEvent> m57268a(@NotNull AutoCompleteTextView itemClickEvents) {
        Intrinsics.checkParameterIsNotNull(itemClickEvents, "$this$itemClickEvents");
        return new C13927jj(itemClickEvents);
    }
}
