package com.onyx.android.sdk.p039ui;

import android.text.InputFilter;
import android.text.Spanned;
import com.onyx.android.sdk.p039ui.CharFilter;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\f\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u001e\u0010\b\u001a\u00020\u00072\u0016\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002j\u0002`\u0005R'\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002j\u0002`\u00058\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0012\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/ui/CharFilter;", "", "Lkotlin/Function1;", "", "", "Lcom/onyx/android/sdk/ui/Filter;", "filter", "Landroid/text/InputFilter;", "toInputFilter", "a", "Lkotlin/jvm/functions/Function1;", "getBLANK_SPACE_FILTER", "()Lkotlin/jvm/functions/Function1;", "BLANK_SPACE_FILTER", "b", "Landroid/text/InputFilter;", "getBLANK_SPACE_INPUT_FILTER", "()Landroid/text/InputFilter;", "BLANK_SPACE_INPUT_FILTER", Constants.CONSTRUCTOR_NAME, "()V", "sdk-uicommon_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCharFilter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CharFilter.kt\ncom/onyx/android/sdk/ui/CharFilter\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,21:1\n1174#2,2:22\n*S KotlinDebug\n*F\n+ 1 CharFilter.kt\ncom/onyx/android/sdk/ui/CharFilter\n*L\n15#1:22,2\n*E\n"})
/* loaded from: classes8.dex */
public final class CharFilter {

    @NotNull
    public static final CharFilter INSTANCE;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final Function1<Character, Boolean> BLANK_SPACE_FILTER;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final InputFilter BLANK_SPACE_INPUT_FILTER;

    static {
        CharFilter charFilter = new CharFilter();
        INSTANCE = charFilter;
        CharFilter$BLANK_SPACE_FILTER$1 charFilter$BLANK_SPACE_FILTER$1 = new Function1<Character, Boolean>() { // from class: com.onyx.android.sdk.ui.CharFilter$BLANK_SPACE_FILTER$1
            @NotNull
            public final Boolean invoke(char c) {
                return Boolean.valueOf(c != ' ');
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Character ch) {
                return invoke(ch.charValue());
            }
        };
        BLANK_SPACE_FILTER = charFilter$BLANK_SPACE_FILTER$1;
        BLANK_SPACE_INPUT_FILTER = charFilter.toInputFilter(charFilter$BLANK_SPACE_FILTER$1);
    }

    /* renamed from: b */
    public static final CharSequence m36361b(Function1 filter, CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        Intrinsics.checkNotNullParameter(filter, "$filter");
        Intrinsics.checkNotNull(charSequence);
        for (int i5 = 0; i5 < charSequence.length(); i5++) {
            if (!((Boolean) filter.invoke(Character.valueOf(charSequence.charAt(i5)))).booleanValue()) {
                return "";
            }
        }
        return charSequence;
    }

    @NotNull
    public final Function1<Character, Boolean> getBLANK_SPACE_FILTER() {
        return BLANK_SPACE_FILTER;
    }

    @NotNull
    public final InputFilter getBLANK_SPACE_INPUT_FILTER() {
        return BLANK_SPACE_INPUT_FILTER;
    }

    @NotNull
    public final InputFilter toInputFilter(@NotNull final Function1<? super Character, Boolean> filter) {
        Intrinsics.checkNotNullParameter(filter, "filter");
        return new InputFilter() { // from class: com.sunia.HTREnginev2.vqd
            @Override // android.text.InputFilter
            public final CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
                CharSequence m36361b;
                m36361b = CharFilter.m36361b(Function1.this, charSequence, i, i2, spanned, i3, i4);
                return m36361b;
            }
        };
    }
}
