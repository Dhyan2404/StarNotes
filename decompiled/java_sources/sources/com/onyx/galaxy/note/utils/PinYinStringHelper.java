package com.onyx.galaxy.note.utils;

import com.github.promeg.pinyinhelper.Pinyin;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.sun.org.apache.bcel.internal.Constants;
import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import java.util.Comparator;
import java.util.Locale;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0006B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/galaxy/note/utils/PinYinStringHelper;", "", "()V", "getPinYin", "", Constant.SRC_TAG, "PinYinSortComparator", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class PinYinStringHelper {

    @NotNull
    public static final PinYinStringHelper INSTANCE = new PinYinStringHelper();

    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\b\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\u0012\u0012\u0004\u0012\u00028\u00000\u0002j\b\u0012\u0004\u0012\u00028\u0000`\u0003B\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u0018\u0010\b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0004J\u0010\u0010\n\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0004H\u0002J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0004H\u0002J\u0010\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\u0004H\u0002J\u0010\u0010\u000e\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\u0004H\u0002J\u0010\u0010\u000f\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\u0004H\u0002R\u0016\u0010\u0011\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u0010¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/galaxy/note/utils/PinYinStringHelper$PinYinSortComparator;", "T", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "", "o1", "o2", "", "compareString", ExtensionNamespaceContext.EXSLT_STRING_PREFIX, "b", "a", "", "d", "e", "c", "I", "compareCallNum", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static abstract class PinYinSortComparator<T> implements Comparator<T> {

        /* renamed from: e, reason: from kotlin metadata */
        public int compareCallNum;

        /* renamed from: a */
        public final int m51998a(String str) {
            if (m52000c(str) || m52001d(str)) {
                return 10;
            }
            return m52002e(str) ? 8 : 0;
        }

        /* renamed from: b */
        public final int m51999b(String str) {
            if (m52000c(str)) {
                return 10;
            }
            if (m52001d(str)) {
                return 9;
            }
            return m52002e(str) ? 8 : 0;
        }

        /* renamed from: c */
        public final boolean m52000c(String str) {
            char charAt = str.charAt(0);
            return Pattern.compile("[\\u4E00-\\u9FA5]+").matcher(charAt + "").matches();
        }

        public final int compareString(@NotNull String o1, @NotNull String o2) {
            int compareTo;
            int compareTo2;
            int compareTo3;
            Intrinsics.checkNotNullParameter(o1, "o1");
            Intrinsics.checkNotNullParameter(o2, "o2");
            this.compareCallNum++;
            if (o1.length() == 0 && o2.length() == 0) {
                return 0;
            }
            if (o1.length() == 0) {
                return -1;
            }
            if (o2.length() == 0) {
                return 1;
            }
            String substring = o1.substring(0, 1);
            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
            String substring2 = o2.substring(0, 1);
            Intrinsics.checkNotNullExpressionValue(substring2, "substring(...)");
            int m51998a = m51998a(o1);
            int m51998a2 = m51998a(o2);
            if (m51998a > m51998a2) {
                return -1;
            }
            if (m51998a < m51998a2) {
                return 1;
            }
            if (m51998a < 9 && m51998a2 < 9) {
                int compareTo4 = substring.compareTo(substring2);
                if (compareTo4 != 0) {
                    return compareTo4;
                }
                String substring3 = o1.substring(1);
                Intrinsics.checkNotNullExpressionValue(substring3, "substring(...)");
                String substring4 = o2.substring(1);
                Intrinsics.checkNotNullExpressionValue(substring4, "substring(...)");
                return compareString(substring3, substring4);
            }
            PinYinStringHelper pinYinStringHelper = PinYinStringHelper.INSTANCE;
            String substring5 = pinYinStringHelper.getPinYin(o1).substring(0, 1);
            Intrinsics.checkNotNullExpressionValue(substring5, "substring(...)");
            String substring6 = pinYinStringHelper.getPinYin(o2).substring(0, 1);
            Intrinsics.checkNotNullExpressionValue(substring6, "substring(...)");
            if (this.compareCallNum == 1 && (compareTo3 = substring5.compareTo(substring6)) != 0) {
                return compareTo3;
            }
            int m51999b = m51999b(o1);
            int m51999b2 = m51999b(o2);
            if (m51999b > m51999b2) {
                return -1;
            }
            if (m51999b < m51999b2) {
                return 1;
            }
            if (this.compareCallNum != 1 && (compareTo2 = substring5.compareTo(substring6)) != 0) {
                return compareTo2;
            }
            if (m52001d(o1) && m52001d(o2) && (compareTo = substring.compareTo(substring2)) != 0) {
                return compareTo;
            }
            if (m52000c(o1) && m52000c(o2)) {
                int compareTo5 = pinYinStringHelper.getPinYin(o1).compareTo(pinYinStringHelper.getPinYin(o2));
                if (compareTo5 != 0) {
                    return compareTo5;
                }
                int compareTo6 = substring.compareTo(substring2);
                if (compareTo6 != 0) {
                    return compareTo6;
                }
            }
            String substring7 = o1.substring(1);
            Intrinsics.checkNotNullExpressionValue(substring7, "substring(...)");
            String substring8 = o2.substring(1);
            Intrinsics.checkNotNullExpressionValue(substring8, "substring(...)");
            return compareString(substring7, substring8);
        }

        /* renamed from: d */
        public final boolean m52001d(String str) {
            char charAt = str.charAt(0);
            return Pattern.compile("^[A-Za-z]+$").matcher(charAt + "").matches();
        }

        /* renamed from: e */
        public final boolean m52002e(String str) {
            char charAt = str.charAt(0);
            return Pattern.compile("^[1-9]+$").matcher(charAt + "").matches();
        }
    }

    @NotNull
    public final String getPinYin(@Nullable String src) {
        if (!StringKt.isNotBlank(src)) {
            return "";
        }
        String pinyin = Pinyin.toPinyin(src, "");
        Intrinsics.checkNotNullExpressionValue(pinyin, "toPinyin(...)");
        Locale locale = Locale.getDefault();
        Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
        String upperCase = pinyin.toUpperCase(locale);
        Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
        return upperCase;
    }
}
