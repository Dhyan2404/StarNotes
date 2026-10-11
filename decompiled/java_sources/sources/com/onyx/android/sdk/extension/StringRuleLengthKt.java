package com.onyx.android.sdk.extension;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0010\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\r\n\u0002\u0010\f\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\t\u001a\f\u0010\u0002\u001a\u00020\u0001*\u0004\u0018\u00010\u0000\u001a\f\u0010\u0002\u001a\u00020\u0001*\u0004\u0018\u00010\u0003\u001a\n\u0010\u0005\u001a\u00020\u0001*\u00020\u0004\u001a\u0012\u0010\u0007\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0001\u001a\u000e\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0004\u001a\f\u0010\u000b\u001a\u00020\u0001*\u0004\u0018\u00010\u0000\u001a\f\u0010\u000b\u001a\u00020\u0001*\u0004\u0018\u00010\u0003\"\u0014\u0010\f\u001a\u00020\u00008\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\r\"\u0014\u0010\u000e\u001a\u00020\u00008\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000e\u0010\r\"\u0014\u0010\u000f\u001a\u00020\u00018\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010\"\u0014\u0010\u0011\u001a\u00020\u00018\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0011\u0010\u0010\"\u0017\u0010\u0017\u001a\u00020\u00128\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0017\u0010\u001a\u001a\u00020\u00128\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0014\u001a\u0004\b\u0019\u0010\u0016¨\u0006\u001b"}, m61528d2 = {"", "", "toRuleLength", "", "", "getRuleLength", "maxLength", "subMaxLengthContent", "c", "", "isSmallTypeChar", "getShowLength", "CHINESE_REGEX", Constants.STRING_SIG, "CHINESE_PUNCTUATION_REGEX", "SMALL_TYPE_CHAR_LENGTH", "I", "BIG_TYPE_CHAR_LENGTH", "Lkotlin/text/Regex;", "a", "Lkotlin/text/Regex;", "getChineseRegex", "()Lkotlin/text/Regex;", "chineseRegex", "b", "getChinesePunctuationRegex", "chinesePunctuationRegex", "sdk-uicommon_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class StringRuleLengthKt {
    public static final int BIG_TYPE_CHAR_LENGTH = 2;
    public static final int SMALL_TYPE_CHAR_LENGTH = 1;

    @NotNull
    public static final String CHINESE_REGEX = "[\\u4e00-\\u9fa5]";

    /* renamed from: a */
    @NotNull
    public static final Regex f42095a = new Regex(CHINESE_REGEX);

    @NotNull
    public static final String CHINESE_PUNCTUATION_REGEX = "[\\u3000-\\u303F\\uFF00-\\uFFEF]";

    /* renamed from: b */
    @NotNull
    public static final Regex f42096b = new Regex(CHINESE_PUNCTUATION_REGEX);

    @NotNull
    public static final Regex getChinesePunctuationRegex() {
        return f42096b;
    }

    @NotNull
    public static final Regex getChineseRegex() {
        return f42095a;
    }

    public static final int getRuleLength(char c) {
        return isSmallTypeChar(c) ? 1 : 2;
    }

    public static final int getShowLength(@Nullable String str) {
        return (int) Math.ceil(toRuleLength(str) / 2.0f);
    }

    public static final boolean isSmallTypeChar(char c) {
        Integer intOrNull;
        boolean isBlank;
        String valueOf = String.valueOf(c);
        if (f42095a.matches(valueOf) || f42096b.matches(valueOf)) {
            return false;
        }
        intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(valueOf);
        if (intOrNull != null) {
            return false;
        }
        isBlank = StringsKt__StringsJVMKt.isBlank(valueOf);
        if (isBlank) {
            return true;
        }
        byte type = (byte) Character.getType(c);
        if (type == 1) {
            return false;
        }
        if (type != 2) {
        }
        return true;
    }

    @NotNull
    public static final String subMaxLengthContent(@NotNull String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        StringBuffer stringBuffer = new StringBuffer();
        int length = str.length();
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            char charAt = str.charAt(i3);
            i2 += getRuleLength(charAt);
            if (i2 > i) {
                String stringBuffer2 = stringBuffer.toString();
                Intrinsics.checkNotNullExpressionValue(stringBuffer2, "toString(...)");
                return stringBuffer2;
            }
            stringBuffer.append(charAt);
        }
        return str;
    }

    public static final int toRuleLength(@Nullable String str) {
        if (str == null) {
            return 0;
        }
        if (str.length() == 1 && isSmallTypeChar(str.charAt(0))) {
            return 2;
        }
        int i = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            i += getRuleLength(str.charAt(i2));
        }
        return i;
    }

    public static final int getShowLength(@Nullable CharSequence charSequence) {
        return (int) Math.ceil(toRuleLength(charSequence) / 2.0f);
    }

    public static final int toRuleLength(@Nullable CharSequence charSequence) {
        if (charSequence == null) {
            return 0;
        }
        if (charSequence.length() == 1 && isSmallTypeChar(charSequence.charAt(0))) {
            return 2;
        }
        int i = 0;
        for (int i2 = 0; i2 < charSequence.length(); i2++) {
            i += getRuleLength(charSequence.charAt(i2));
        }
        return i;
    }
}
