package com.onyx.android.sdk.data.utils;

import com.google.i18n.phonenumbers.PhoneNumberUtil;
import kotlin.Metadata;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0007\u001a\u00020\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/utils/AreaCodeUtil;", "", "()V", "AREA_CODE_PREFIX", "", "getPrefixedAreaCode", "areaCode", "getTrimmedAreaCode", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class AreaCodeUtil {

    @NotNull
    public static final String AREA_CODE_PREFIX = "+";

    @NotNull
    public static final AreaCodeUtil INSTANCE = new AreaCodeUtil();

    private AreaCodeUtil() {
    }

    @NotNull
    public final String getPrefixedAreaCode(@Nullable String areaCode) {
        return PhoneNumberUtil.f36455s + getTrimmedAreaCode(areaCode);
    }

    @NotNull
    public final String getTrimmedAreaCode(@Nullable String areaCode) {
        String replace$default = areaCode != null ? StringsKt__StringsJVMKt.replace$default(areaCode, "+", "", false, 4, (Object) null) : null;
        return replace$default == null ? "" : replace$default;
    }
}
