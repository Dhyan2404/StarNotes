package com.onyx.galaxy.note.hilt.recognizer;

import com.onyx.galaxy.note.hilt.recognizer.RecognizerSelector;
import dagger.internal.DaggerGenerated;
import dagger.internal.InstanceFactory;
import dagger.internal.Provider;

@DaggerGenerated
/* loaded from: classes9.dex */
public final class RecognizerSelector_Creator_Impl implements RecognizerSelector.Creator {

    /* renamed from: a */
    public final RecognizerSelector_Factory f61241a;

    public RecognizerSelector_Creator_Impl(RecognizerSelector_Factory recognizerSelector_Factory) {
        this.f61241a = recognizerSelector_Factory;
    }

    public static Provider<RecognizerSelector.Creator> createFactoryProvider(RecognizerSelector_Factory recognizerSelector_Factory) {
        return InstanceFactory.create(new RecognizerSelector_Creator_Impl(recognizerSelector_Factory));
    }

    @Override // com.onyx.galaxy.note.hilt.recognizer.RecognizerSelector.Creator
    public RecognizerSelector create(String str) {
        return this.f61241a.get(str);
    }

    public static javax.inject.Provider<RecognizerSelector.Creator> create(RecognizerSelector_Factory recognizerSelector_Factory) {
        return InstanceFactory.create(new RecognizerSelector_Creator_Impl(recognizerSelector_Factory));
    }
}
