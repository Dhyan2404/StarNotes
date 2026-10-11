package com.onyx.android.sdk.base.extension;

import com.google.i18n.phonenumbers.PhoneNumberUtil;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000e\n\u0002\u0010\t\n\u0002\b\u0003\u001a\u0019\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, m61528d2 = {"formatReadableValue", "", "", "max", "(Ljava/lang/Long;J)Ljava/lang/String;", "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class LongKt {
    @NotNull
    public static final String formatReadableValue(@Nullable Long l, long j) {
        if (l == null || l.longValue() <= 0) {
            return "";
        }
        if (l.longValue() <= j) {
            return l.toString();
        }
        StringBuilder sb = new StringBuilder();
        sb.append(j);
        sb.append(PhoneNumberUtil.f36455s);
        return sb.toString();
    }
}
