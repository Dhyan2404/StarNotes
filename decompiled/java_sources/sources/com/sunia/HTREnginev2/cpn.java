package com.sunia.HTREnginev2;

import android.content.res.TypedArray;
import android.graphics.Typeface;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.annotation.StyleableRes;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@RequiresApi(26)
/* loaded from: classes3.dex */
public final class cpn {

    /* renamed from: a */
    @NotNull
    public static final cpn f67062a = new cpn();

    @JvmStatic
    @DoNotInline
    @NotNull
    /* renamed from: a */
    public static final Typeface m53496a(@NotNull TypedArray typedArray, @StyleableRes int i) {
        Typeface font = typedArray.getFont(i);
        Intrinsics.checkNotNull(font);
        return font;
    }
}
