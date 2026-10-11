package com.onyx.android.sdk.p039ui;

import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextUtils;
import com.onyx.android.sdk.extension.StringRuleLengthKt;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0013\u001a\u00020\u0004¢\u0006\u0004\b\u0014\u0010\u0012J>\u0010\u000b\u001a\u0004\u0018\u00010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004H\u0016J\u001c\u0010\r\u001a\u0004\u0018\u00010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\f\u001a\u00020\u0004H\u0002R\"\u0010\u0013\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/ui/CustomLengthFilter;", "Landroid/text/InputFilter;", "", "source", "", gon.f71290o0, "end", "Landroid/text/Spanned;", "dest", "dstart", "dend", "filter", "keep", "a", "I", "getMax", "()I", "setMax", "(I)V", "max", Constants.CONSTRUCTOR_NAME, "sdk-uicommon_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCustomLengthFilter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomLengthFilter.kt\ncom/onyx/android/sdk/ui/CustomLengthFilter\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,50:1\n1183#2,3:51\n*S KotlinDebug\n*F\n+ 1 CustomLengthFilter.kt\ncom/onyx/android/sdk/ui/CustomLengthFilter\n*L\n38#1:51,3\n*E\n"})
/* loaded from: classes8.dex */
public final class CustomLengthFilter implements InputFilter {

    /* renamed from: a, reason: from kotlin metadata */
    public int max;

    public CustomLengthFilter(int i) {
        this.max = i;
    }

    /* renamed from: a */
    public final CharSequence m36383a(CharSequence source, int keep) {
        if (source == null || StringRuleLengthKt.toRuleLength(source) <= 0) {
            return null;
        }
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < source.length()) {
            int i4 = i2 + 1;
            i3 += StringRuleLengthKt.getRuleLength(source.charAt(i));
            if (i3 > keep) {
                return i2 == 0 ? "" : source.subSequence(0, i2);
            }
            i++;
            i2 = i4;
        }
        return source;
    }

    @Override // android.text.InputFilter
    @Nullable
    public CharSequence filter(@Nullable CharSequence source, int start, int end, @Nullable Spanned dest, int dstart, int dend) {
        if (TextUtils.isEmpty(source)) {
            return null;
        }
        int ruleLength = StringRuleLengthKt.toRuleLength(dest);
        int ruleLength2 = StringRuleLengthKt.toRuleLength(source);
        int i = this.max - ruleLength;
        if (i <= 0) {
            return "";
        }
        if (i >= ruleLength2) {
            return null;
        }
        return m36383a(source, i);
    }

    public final int getMax() {
        return this.max;
    }

    public final void setMax(int i) {
        this.max = i;
    }
}
