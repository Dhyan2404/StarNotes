package com.onyx.galaxy.note.hilt.convert;

import com.onyx.android.sdk.hwr.service.convert.HWRResultConvertProvider;
import dagger.internal.DaggerGenerated;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;

@ScopeMetadata
@DaggerGenerated
@QualifierMetadata
/* loaded from: classes9.dex */
public final class HWRResultConvertModule_GetMLResultConvertFactory implements Factory<HWRResultConvertProvider> {

    /* renamed from: com.onyx.galaxy.note.hilt.convert.HWRResultConvertModule_GetMLResultConvertFactory$a */
    /* loaded from: classes9.dex */
    public static final class C12591a {

        /* renamed from: a */
        public static final HWRResultConvertModule_GetMLResultConvertFactory f61230a = new HWRResultConvertModule_GetMLResultConvertFactory();
    }

    public static HWRResultConvertModule_GetMLResultConvertFactory create() {
        return C12591a.f61230a;
    }

    public static HWRResultConvertProvider getMLResultConvert() {
        return (HWRResultConvertProvider) Preconditions.checkNotNullFromProvides(HWRResultConvertModule.INSTANCE.getMLResultConvert());
    }

    @Override // javax.inject.Provider
    public HWRResultConvertProvider get() {
        return getMLResultConvert();
    }
}
