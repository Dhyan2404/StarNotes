package com.onyx.galaxy.note.utils;

import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.onyx.android.sdk.base.utils.LocaleUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.utils.AreaCodeUtil;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.data.AreaCodeConstant;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0006\u0010\u0007\u001a\u00020\u0006¨\u0006\b"}, m61528d2 = {"Lcom/onyx/galaxy/note/utils/AreaCodeUtils;", "", "()V", "getAreaPhoneMaxLength", "", "areaCode", "", "getDefaultAreaCode", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class AreaCodeUtils {

    @NotNull
    public static final AreaCodeUtils INSTANCE = new AreaCodeUtils();

    public final int getAreaPhoneMaxLength(@Nullable String areaCode) {
        Integer num = AreaCodeConstant.INSTANCE.getPhoneLengthByAreaCodeMap().get(AreaCodeUtil.INSTANCE.getTrimmedAreaCode(areaCode));
        return num != null ? num.intValue() : ResManager.INSTANCE.getInteger(C10651R.integer.phone_length_limit_default);
    }

    @NotNull
    public final String getDefaultAreaCode() {
        return String.valueOf(PhoneNumberUtil.getInstance().getCountryCodeForRegion(LocaleUtils.INSTANCE.getCurrentLocale(ResManager.INSTANCE.getAppContext()).getCountry()));
    }
}
