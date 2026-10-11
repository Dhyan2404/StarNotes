package com.onyx.galaxy.note.hilt.convert;

import com.onyx.galaxy.note.hilt.convert.HWRResultConvertSelector;
import dagger.internal.DaggerGenerated;
import dagger.internal.InstanceFactory;
import dagger.internal.Provider;

@DaggerGenerated
/* loaded from: classes9.dex */
public final class HWRResultConvertSelector_Creator_Impl implements HWRResultConvertSelector.Creator {

    /* renamed from: a */
    public final HWRResultConvertSelector_Factory f61233a;

    public HWRResultConvertSelector_Creator_Impl(HWRResultConvertSelector_Factory hWRResultConvertSelector_Factory) {
        this.f61233a = hWRResultConvertSelector_Factory;
    }

    public static Provider<HWRResultConvertSelector.Creator> createFactoryProvider(HWRResultConvertSelector_Factory hWRResultConvertSelector_Factory) {
        return InstanceFactory.create(new HWRResultConvertSelector_Creator_Impl(hWRResultConvertSelector_Factory));
    }

    @Override // com.onyx.galaxy.note.hilt.convert.HWRResultConvertSelector.Creator
    public HWRResultConvertSelector create(String str) {
        return this.f61233a.get(str);
    }

    public static javax.inject.Provider<HWRResultConvertSelector.Creator> create(HWRResultConvertSelector_Factory hWRResultConvertSelector_Factory) {
        return InstanceFactory.create(new HWRResultConvertSelector_Creator_Impl(hWRResultConvertSelector_Factory));
    }
}
