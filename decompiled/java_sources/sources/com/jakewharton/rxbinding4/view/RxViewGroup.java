package com.jakewharton.rxbinding4.view;

import android.view.ViewGroup;
import androidx.annotation.CheckResult;
import com.sunia.HTREnginev2.kxl;
import io.reactivex.rxjava3.core.Observable;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"com/sunia/HTREnginev2/kxl"}, m61528d2 = {}, m61529k = 4, m61530mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class RxViewGroup {
    @CheckResult
    @NotNull
    public static final Observable<ViewGroupHierarchyChangeEvent> changeEvents(@NotNull ViewGroup viewGroup) {
        return kxl.m55352a(viewGroup);
    }
}
