package com.onyx.galaxy.note.hilt.convert;

import com.onyx.android.sdk.hwr.service.convert.HWRResultConvertProvider;
import dagger.internal.DaggerGenerated;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;
import java.util.Map;
import javax.inject.Provider;

@ScopeMetadata
@DaggerGenerated
@QualifierMetadata
/* loaded from: classes9.dex */
public final class HWRResultConvertSelector_Factory {

    /* renamed from: a */
    public final Provider<Map<String, HWRResultConvertProvider>> f61234a;

    public HWRResultConvertSelector_Factory(Provider<Map<String, HWRResultConvertProvider>> provider) {
        this.f61234a = provider;
    }

    public static HWRResultConvertSelector_Factory create(Provider<Map<String, HWRResultConvertProvider>> provider) {
        return new HWRResultConvertSelector_Factory(provider);
    }

    public static HWRResultConvertSelector newInstance(Map<String, HWRResultConvertProvider> map, String str) {
        return new HWRResultConvertSelector(map, str);
    }

    public HWRResultConvertSelector get(String str) {
        return newInstance(this.f61234a.get(), str);
    }
}
