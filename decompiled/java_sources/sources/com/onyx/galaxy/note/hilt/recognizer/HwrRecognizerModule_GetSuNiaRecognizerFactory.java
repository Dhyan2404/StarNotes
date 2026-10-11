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
public final class HwrRecognizerModule_GetSuNiaRecognizerFactory implements Factory<IHWRRecognizer> {

    /* renamed from: a */
    public final HwrRecognizerModule f61238a;

    public HwrRecognizerModule_GetSuNiaRecognizerFactory(HwrRecognizerModule hwrRecognizerModule) {
        this.f61238a = hwrRecognizerModule;
    }

    public static HwrRecognizerModule_GetSuNiaRecognizerFactory create(HwrRecognizerModule hwrRecognizerModule) {
        return new HwrRecognizerModule_GetSuNiaRecognizerFactory(hwrRecognizerModule);
    }

    public static IHWRRecognizer getSuNiaRecognizer(HwrRecognizerModule hwrRecognizerModule) {
        return (IHWRRecognizer) Preconditions.checkNotNullFromProvides(hwrRecognizerModule.getSuNiaRecognizer());
    }

    @Override // javax.inject.Provider
    public IHWRRecognizer get() {
        return getSuNiaRecognizer(this.f61238a);
    }
}
