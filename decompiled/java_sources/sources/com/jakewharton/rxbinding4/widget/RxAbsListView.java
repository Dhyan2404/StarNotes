package com.jakewharton.rxbinding4.widget;

import android.widget.AbsListView;
import androidx.annotation.CheckResult;
import com.sunia.HTREnginev2.kvl;
import io.reactivex.rxjava3.core.Observable;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"com/sunia/HTREnginev2/kvl"}, m61528d2 = {}, m61529k = 4, m61530mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class RxAbsListView {
    @CheckResult
    @NotNull
    public static final Observable<AbsListViewScrollEvent> scrollEvents(@NotNull AbsListView absListView) {
        return kvl.m55350a(absListView);
    }
}
