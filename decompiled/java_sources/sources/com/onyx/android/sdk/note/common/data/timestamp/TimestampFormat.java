package com.onyx.android.sdk.note.common.data.timestamp;

import com.couchbase.lite.internal.BaseTLSIdentity;
import com.onyx.android.sdk.base.utils.LocaleUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.note.C7485R;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.text.FieldPosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\fJ \u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R\u0014\u0010\u0005\u001a\u00020\u0003X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u0003X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0007¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/timestamp/TimestampFormat;", "Ljava/text/SimpleDateFormat;", "pattern", "", "(Ljava/lang/String;)V", "CHINESE_NUM_END_SYMBOL", "getCHINESE_NUM_END_SYMBOL", "()Ljava/lang/String;", "CHINESE_NUM_START_SYMBOL", "getCHINESE_NUM_START_SYMBOL", "dateValueToChineseStr", "value", "", Constants.ATTRNAME_FORMAT, com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_BUFFER_SIG, "date", "Ljava/util/Date;", "toAppendTo", "pos", "Ljava/text/FieldPosition;", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class TimestampFormat extends SimpleDateFormat {

    @NotNull
    private final String CHINESE_NUM_END_SYMBOL;

    @NotNull
    private final String CHINESE_NUM_START_SYMBOL;

    public TimestampFormat(@Nullable String str) {
        super(str, Locale.getDefault());
        this.CHINESE_NUM_START_SYMBOL = BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY;
        this.CHINESE_NUM_END_SYMBOL = "N";
    }

    @NotNull
    public final String dateValueToChineseStr(int value) {
        boolean z = value <= 31;
        StringBuilder sb = new StringBuilder();
        String[] stringArray = ResManager.INSTANCE.getStringArray(C7485R.array.chinese_number_array);
        int i = 0;
        for (int i2 = value; i2 != 0; i2 /= 10) {
            i++;
            if (z && i == 2) {
                sb.insert(0, stringArray[10]);
            }
            int i3 = i2 % 10;
            if (value < 10 || value >= 20 || i != 2) {
                sb.insert(0, stringArray[i3]);
            }
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    @Override // java.text.SimpleDateFormat, java.text.DateFormat
    @NotNull
    public StringBuffer format(@NotNull Date date, @NotNull StringBuffer toAppendTo, @NotNull FieldPosition pos) {
        boolean contains$default;
        boolean contains$default2;
        int indexOf$default;
        int indexOf$default2;
        Intrinsics.checkNotNullParameter(date, "date");
        Intrinsics.checkNotNullParameter(toAppendTo, "toAppendTo");
        Intrinsics.checkNotNullParameter(pos, "pos");
        String stringBuffer = super.format(date, toAppendTo, pos).toString();
        Intrinsics.checkNotNullExpressionValue(stringBuffer, "toString(...)");
        if (LocaleUtils.INSTANCE.isChinese()) {
            while (true) {
                boolean z = false;
                contains$default = StringsKt__StringsKt.contains$default((CharSequence) stringBuffer, (CharSequence) this.CHINESE_NUM_START_SYMBOL, false, 2, (Object) null);
                if (!contains$default) {
                    break;
                }
                contains$default2 = StringsKt__StringsKt.contains$default((CharSequence) stringBuffer, (CharSequence) this.CHINESE_NUM_END_SYMBOL, false, 2, (Object) null);
                if (!contains$default2) {
                    break;
                }
                String str = stringBuffer;
                indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) str, this.CHINESE_NUM_START_SYMBOL, 0, false, 6, (Object) null);
                indexOf$default2 = StringsKt__StringsKt.indexOf$default((CharSequence) str, this.CHINESE_NUM_END_SYMBOL, 0, false, 6, (Object) null);
                if (indexOf$default >= 0 && indexOf$default < indexOf$default2) {
                    z = true;
                }
                if (z) {
                    String substring = stringBuffer.substring(indexOf$default, indexOf$default2 + 1);
                    Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                    Regex regex = new Regex(substring);
                    String substring2 = stringBuffer.substring(indexOf$default + 1, indexOf$default2);
                    Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String…ing(startIndex, endIndex)");
                    stringBuffer = regex.replaceFirst(stringBuffer, dateValueToChineseStr(Integer.parseInt(substring2)));
                }
            }
        }
        return new StringBuffer(stringBuffer);
    }

    @NotNull
    public final String getCHINESE_NUM_END_SYMBOL() {
        return this.CHINESE_NUM_END_SYMBOL;
    }

    @NotNull
    public final String getCHINESE_NUM_START_SYMBOL() {
        return this.CHINESE_NUM_START_SYMBOL;
    }
}
