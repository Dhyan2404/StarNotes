package com.onyx.galaxy.note.hilt.recognizer;

import com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer;
import dagger.internal.DaggerGenerated;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;

@ScopeMetadata
@DaggerGenerated
@QualifierMetadata
/* loaded from: classes9.dex */
public final class HwrRecognizerModule_GetMixedRecognizerFactory implements Factory<IHWRRecognizer> {

    /* renamed from: a */
    public final HwrRecognizerModule f61236a;

    public HwrRecognizerModule_GetMixedRecognizerFactory(HwrRecognizerModule hwrRecognizerModule) {
        this.f61236a = hwrRecognizerModule;
    }

    public static HwrRecognizerModule_GetMixedRecognizerFactory create(HwrRecognizerModule hwrRecognizerModule) {
        return new HwrRecognizerModule_GetMixedRecognizerFactory(hwrRecognizerModule);
    }

    public static IHWRRecognizer getMixedRecognizer(HwrRecognizerModule hwrRecognizerModule) {
        return (IHWRRecognizer) Preconditions.checkNotNullFromProvides(hwrRecognizerModule.getMixedRecognizer());
    }

    @Override // javax.inject.Provider
    public IHWRRecognizer get() {
        return getMixedRecognizer(this.f61236a);
    }
}
