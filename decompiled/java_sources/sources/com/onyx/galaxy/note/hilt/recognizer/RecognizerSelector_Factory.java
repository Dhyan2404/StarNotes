package com.onyx.galaxy.note.hilt.recognizer;

import com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer;
import dagger.internal.DaggerGenerated;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;
import java.util.Map;
import javax.inject.Provider;

@ScopeMetadata
@DaggerGenerated
@QualifierMetadata
/* loaded from: classes9.dex */
public final class RecognizerSelector_Factory {

    /* renamed from: a */
    public final Provider<Map<String, IHWRRecognizer>> f61242a;

    public RecognizerSelector_Factory(Provider<Map<String, IHWRRecognizer>> provider) {
        this.f61242a = provider;
    }

    public static RecognizerSelector_Factory create(Provider<Map<String, IHWRRecognizer>> provider) {
        return new RecognizerSelector_Factory(provider);
    }

    public static RecognizerSelector newInstance(Map<String, IHWRRecognizer> map, String str) {
        return new RecognizerSelector(map, str);
    }

    public RecognizerSelector get(String str) {
        return newInstance(this.f61242a.get(), str);
    }
}
