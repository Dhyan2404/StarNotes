package com.sunia.HTREnginev2;

import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Locale;

/* loaded from: classes3.dex */
public interface l1j {
    /* renamed from: a */
    Object mo55106a();

    @Nullable
    /* renamed from: b */
    Locale mo55107b(@NonNull String[] strArr);

    @IntRange(from = -1)
    /* renamed from: c */
    int mo55108c(Locale locale);

    /* renamed from: d */
    String mo55109d();

    Locale get(int i);

    boolean isEmpty();

    @IntRange(from = 0)
    int size();
}
