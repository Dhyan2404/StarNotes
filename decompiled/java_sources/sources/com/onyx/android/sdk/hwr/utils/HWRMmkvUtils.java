package com.onyx.android.sdk.hwr.utils;

import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.tencent.mmkv.MMKV;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.apache.xmlbeans.impl.common.NameUtil;
import org.jetbrains.annotations.NotNull;

@Deprecated(message = "for old myscript module only")
@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0007\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002J\u0006\u0010\b\u001a\u00020\u0004J\u0006\u0010\n\u001a\u00020\tJ\u0006\u0010\u000b\u001a\u00020\tJ\u0006\u0010\f\u001a\u00020\u0004J\u0016\u0010\u000f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0002J\u0016\u0010\u0010\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0002J\b\u0010\u0011\u001a\u00020\u0002H\u0002R\u0014\u0010\u0012\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0013R\u0014\u0010\u0015\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0013R\u001b\u0010\u001a\u001a\u00020\u00168FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/utils/HWRMmkvUtils;", "", "", "lang", "", "setLang", "defaultLang", "getLang", "setMyscriptVerified", "", "isMyscriptVerified", "isResourceCleaned", "setResourceCleaned", "engine", "version", "isDefaultResourceInstalled", "setDefaultResourceInstalled", "a", "KEY_HWR_LANG", Constants.STRING_SIG, "KEY_HWR_MYSCRIPT_VERIFIED", "KEY_HWR_RESOURCE_CLEANED", "Lcom/tencent/mmkv/MMKV;", "Lkotlin/Lazy;", "getMmkv", "()Lcom/tencent/mmkv/MMKV;", "mmkv", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HWRMmkvUtils {

    @NotNull
    public static final String KEY_HWR_LANG = "key_hwr_lang";

    @NotNull
    public static final String KEY_HWR_MYSCRIPT_VERIFIED = "key_hwr_myscript_verified";

    @NotNull
    public static final String KEY_HWR_RESOURCE_CLEANED = "key_hwr_resource_cleaned";

    @NotNull
    public static final HWRMmkvUtils INSTANCE = new HWRMmkvUtils();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final Lazy mmkv = LazyKt.lazy(new Function0<MMKV>() { // from class: com.onyx.android.sdk.hwr.utils.HWRMmkvUtils$mmkv$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        public final MMKV invoke() {
            return MMKVUtils.INSTANCE.get();
        }
    });

    /* renamed from: a */
    public final String m33404a() {
        return "key_hwr_resource_cleaned_2.1";
    }

    @NotNull
    public final String getLang(@NotNull String defaultLang) {
        Intrinsics.checkNotNullParameter(defaultLang, "defaultLang");
        String string = getMmkv().getString(KEY_HWR_LANG, defaultLang);
        Intrinsics.checkNotNull(string);
        return string;
    }

    @NotNull
    public final MMKV getMmkv() {
        return (MMKV) mmkv.getValue();
    }

    public final boolean isDefaultResourceInstalled(@NotNull String engine, @NotNull String version) {
        Intrinsics.checkNotNullParameter(engine, "engine");
        Intrinsics.checkNotNullParameter(version, "version");
        return getMmkv().getBoolean(engine + NameUtil.USCORE + version + "_default_installed", false);
    }

    public final boolean isMyscriptVerified() {
        return getMmkv().getBoolean(KEY_HWR_MYSCRIPT_VERIFIED, false);
    }

    public final boolean isResourceCleaned() {
        return getMmkv().getBoolean(m33404a(), false);
    }

    public final void setDefaultResourceInstalled(@NotNull String engine, @NotNull String version) {
        Intrinsics.checkNotNullParameter(engine, "engine");
        Intrinsics.checkNotNullParameter(version, "version");
        getMmkv().putBoolean(engine + NameUtil.USCORE + version + "_default_installed", true);
    }

    public final void setLang(@NotNull String lang) {
        Intrinsics.checkNotNullParameter(lang, "lang");
        getMmkv().putString(KEY_HWR_LANG, lang);
    }

    public final void setMyscriptVerified() {
        getMmkv().putBoolean(KEY_HWR_MYSCRIPT_VERIFIED, true);
    }

    public final void setResourceCleaned() {
        getMmkv().putBoolean(m33404a(), true);
    }
}
