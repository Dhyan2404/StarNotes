package com.jakewharton.rxbinding4.widget;

import android.widget.AutoCompleteTextView;
import androidx.annotation.CheckResult;
import com.sunia.HTREnginev2.svl;
import io.reactivex.rxjava3.core.Observable;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"com/sunia/HTREnginev2/svl"}, m61528d2 = {}, m61529k = 4, m61530mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class RxAutoCompleteTextView {
    @CheckResult
    @NotNull
    public static final Observable<AdapterViewItemClickEvent> itemClickEvents(@NotNull AutoCompleteTextView autoCompleteTextView) {
        return svl.m57268a(autoCompleteTextView);
    }
}
