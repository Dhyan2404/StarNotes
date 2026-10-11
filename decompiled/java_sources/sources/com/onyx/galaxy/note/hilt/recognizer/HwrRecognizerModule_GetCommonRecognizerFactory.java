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
public final class HwrRecognizerModule_GetCommonRecognizerFactory implements Factory<IHWRRecognizer> {

    /* renamed from: a */
    public final HwrRecognizerModule f61235a;

    public HwrRecognizerModule_GetCommonRecognizerFactory(HwrRecognizerModule hwrRecognizerModule) {
        this.f61235a = hwrRecognizerModule;
    }

    public static HwrRecognizerModule_GetCommonRecognizerFactory create(HwrRecognizerModule hwrRecognizerModule) {
        return new HwrRecognizerModule_GetCommonRecognizerFactory(hwrRecognizerModule);
    }

    public static IHWRRecognizer getCommonRecognizer(HwrRecognizerModule hwrRecognizerModule) {
        return (IHWRRecognizer) Preconditions.checkNotNullFromProvides(hwrRecognizerModule.getCommonRecognizer());
    }

    @Override // javax.inject.Provider
    public IHWRRecognizer get() {
        return getCommonRecognizer(this.f61235a);
    }
}
