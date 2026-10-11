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
public final class HwrRecognizerModule_GetSuNiaNaiNbiRecognizerFactory implements Factory<IHWRRecognizer> {

    /* renamed from: a */
    public final HwrRecognizerModule f61237a;

    public HwrRecognizerModule_GetSuNiaNaiNbiRecognizerFactory(HwrRecognizerModule hwrRecognizerModule) {
        this.f61237a = hwrRecognizerModule;
    }

    public static HwrRecognizerModule_GetSuNiaNaiNbiRecognizerFactory create(HwrRecognizerModule hwrRecognizerModule) {
        return new HwrRecognizerModule_GetSuNiaNaiNbiRecognizerFactory(hwrRecognizerModule);
    }

    public static IHWRRecognizer getSuNiaNaiNbiRecognizer(HwrRecognizerModule hwrRecognizerModule) {
        return (IHWRRecognizer) Preconditions.checkNotNullFromProvides(hwrRecognizerModule.getSuNiaNaiNbiRecognizer());
    }

    @Override // javax.inject.Provider
    public IHWRRecognizer get() {
        return getSuNiaNaiNbiRecognizer(this.f61237a);
    }
}
