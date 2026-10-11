package com.sunia.HTREnginev2;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import kotlinx.coroutines.internal.SystemPropsKt;
import org.apache.logging.log4j.util.Chars;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes11.dex */
public final /* synthetic */ class u6n {
    /* renamed from: a */
    public static final int m57539a(@NotNull String str, int i, int i2, int i3) {
        return (int) SystemPropsKt.systemProp(str, i, i2, i3);
    }

    /* renamed from: b */
    public static final long m57540b(@NotNull String str, long j, long j2, long j3) {
        Long longOrNull;
        String systemProp = SystemPropsKt.systemProp(str);
        if (systemProp == null) {
            return j;
        }
        longOrNull = StringsKt__StringNumberConversionsKt.toLongOrNull(systemProp);
        if (longOrNull == null) {
            throw new IllegalStateException(("System property '" + str + "' has unrecognized value '" + systemProp + Chars.QUOTE).toString());
        }
        long longValue = longOrNull.longValue();
        boolean z = false;
        if (j2 <= longValue && longValue <= j3) {
            z = true;
        }
        if (z) {
            return longValue;
        }
        throw new IllegalStateException(("System property '" + str + "' should be in range " + j2 + Constants.ATTRVAL_PARENT + j3 + ", but is '" + longValue + Chars.QUOTE).toString());
    }

    @NotNull
    /* renamed from: c */
    public static final String m57541c(@NotNull String str, @NotNull String str2) {
        String systemProp = SystemPropsKt.systemProp(str);
        return systemProp == null ? str2 : systemProp;
    }

    /* renamed from: d */
    public static final boolean m57542d(@NotNull String str, boolean z) {
        String systemProp = SystemPropsKt.systemProp(str);
        return systemProp != null ? Boolean.parseBoolean(systemProp) : z;
    }

    /* renamed from: e */
    public static /* synthetic */ int m57543e(String str, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            i2 = 1;
        }
        if ((i4 & 8) != 0) {
            i3 = Integer.MAX_VALUE;
        }
        return SystemPropsKt.systemProp(str, i, i2, i3);
    }

    /* renamed from: f */
    public static /* synthetic */ long m57544f(String str, long j, long j2, long j3, int i, Object obj) {
        if ((i & 4) != 0) {
            j2 = 1;
        }
        long j4 = j2;
        if ((i & 8) != 0) {
            j3 = Long.MAX_VALUE;
        }
        return SystemPropsKt.systemProp(str, j, j4, j3);
    }
}
