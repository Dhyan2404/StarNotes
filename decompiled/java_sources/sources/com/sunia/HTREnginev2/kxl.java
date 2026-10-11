package com.sunia.HTREnginev2;

import android.view.ViewGroup;
import androidx.annotation.CheckResult;
import com.jakewharton.rxbinding4.view.ViewGroupHierarchyChangeEvent;
import io.reactivex.rxjava3.core.Observable;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class kxl {
    @CheckResult
    @NotNull
    /* renamed from: a */
    public static final Observable<ViewGroupHierarchyChangeEvent> m55352a(@NotNull ViewGroup changeEvents) {
        Intrinsics.checkParameterIsNotNull(changeEvents, "$this$changeEvents");
        return new h3o(changeEvents);
    }
}
