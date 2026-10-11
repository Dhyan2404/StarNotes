package com.onyx.galaxy.note.hilt.recognizer;

import com.onyx.android.sdk.hwr.data.constant.HwrRecognizerConstant;
import com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer;
import com.onyx.android.sdk.hwr.service.recognizer.MLCommonRecognizer;
import com.onyx.android.sdk.hwr.service.recognizer.MLMixedRecognizer;
import com.onyx.android.sdk.hwr.sunia.recognizer.SuNiaNAINBIRecognizer;
import com.onyx.android.sdk.hwr.sunia.recognizer.SuNiaRecognizer;
import dagger.Module;
import dagger.Provides;
import dagger.hilt.InstallIn;
import dagger.hilt.components.SingletonComponent;
import dagger.multibindings.IntoMap;
import dagger.multibindings.StringKey;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007J\b\u0010\u0005\u001a\u00020\u0004H\u0007J\b\u0010\u0006\u001a\u00020\u0004H\u0007J\b\u0010\u0007\u001a\u00020\u0004H\u0007¨\u0006\b"}, m61528d2 = {"Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule;", "", "()V", "getCommonRecognizer", "Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;", "getMixedRecognizer", "getSuNiaNaiNbiRecognizer", "getSuNiaRecognizer", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@Module
@InstallIn({SingletonComponent.class})
/* loaded from: classes9.dex */
public final class HwrRecognizerModule {
    @Provides
    @StringKey(HwrRecognizerConstant.RECOGNIZER_ML)
    @NotNull
    @IntoMap
    public final IHWRRecognizer getCommonRecognizer() {
        return new MLCommonRecognizer();
    }

    @Provides
    @StringKey(HwrRecognizerConstant.RECOGNIZER_ML_MIXED)
    @NotNull
    @IntoMap
    public final IHWRRecognizer getMixedRecognizer() {
        return new MLMixedRecognizer();
    }

    @Provides
    @StringKey(HwrRecognizerConstant.RECOGNIZER_SUNIA_NAI_NBI)
    @NotNull
    @IntoMap
    public final IHWRRecognizer getSuNiaNaiNbiRecognizer() {
        return new SuNiaNAINBIRecognizer();
    }

    @Provides
    @StringKey(HwrRecognizerConstant.RECOGNIZER_SUNIA)
    @NotNull
    @IntoMap
    public final IHWRRecognizer getSuNiaRecognizer() {
        return new SuNiaRecognizer();
    }
}
