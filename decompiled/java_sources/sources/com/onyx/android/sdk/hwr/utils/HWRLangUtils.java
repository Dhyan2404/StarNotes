package com.onyx.android.sdk.hwr.utils;

import com.onyx.android.sdk.base.utils.LocaleUtils;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/utils/HWRLangUtils;", "", "()V", "getDefaultHWRLang", "", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class HWRLangUtils {

    @NotNull
    public static final HWRLangUtils INSTANCE = new HWRLangUtils();

    @NotNull
    public final String getDefaultHWRLang() {
        LocaleUtils localeUtils = LocaleUtils.INSTANCE;
        if (localeUtils.isChinese()) {
            Locale CHINA = Locale.CHINA;
            Intrinsics.checkNotNullExpressionValue(CHINA, "CHINA");
            return localeUtils.getLocaleStr(CHINA);
        }
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        return localeUtils.getLocaleStr(US);
    }
}
