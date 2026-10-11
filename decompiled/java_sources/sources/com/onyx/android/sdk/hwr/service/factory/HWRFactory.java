package com.onyx.android.sdk.hwr.service.factory;

import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.hwr.data.bean.HWRInput;
import com.onyx.android.sdk.hwr.data.constant.HWRRecognizerType;
import com.onyx.android.sdk.hwr.data.constant.HWRValues;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bJ\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\bJ\u000e\u0010\f\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\bJ\u000e\u0010\r\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\bJ\u000e\u0010\u000e\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\b¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/factory/HWRFactory;", "", "()V", "buildBasicInput", "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "recognizerType", "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;", "formatType", "", CouchFieldKey.KEY_CONTENT_TYPE, "lang", "buildContextLessGestureRecognizeInput", "buildContextLessTextRecognizeInput", "buildOffscreenTextRecognizeInput", "buildOnscreenTextRecognizeInput", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class HWRFactory {

    @NotNull
    public static final HWRFactory INSTANCE = new HWRFactory();

    @NotNull
    public final HWRInput buildBasicInput(@NotNull HWRRecognizerType recognizerType, @NotNull String formatType, @NotNull String contentType, @NotNull String lang) {
        Intrinsics.checkNotNullParameter(recognizerType, "recognizerType");
        Intrinsics.checkNotNullParameter(formatType, "formatType");
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        Intrinsics.checkNotNullParameter(lang, "lang");
        HWRInput hWRInput = new HWRInput();
        hWRInput.setRecognizerType(recognizerType);
        hWRInput.setContentType(contentType);
        hWRInput.setLang(lang);
        return hWRInput;
    }

    @NotNull
    public final HWRInput buildContextLessGestureRecognizeInput(@NotNull String lang) {
        Intrinsics.checkNotNullParameter(lang, "lang");
        HWRInput hWRInput = new HWRInput();
        hWRInput.setRecognizerType(HWRRecognizerType.MS_CONTEXT_LESS);
        hWRInput.setContentType(HWRValues.PART_TYPE_GESTURE);
        hWRInput.setLang(lang);
        return hWRInput;
    }

    @NotNull
    public final HWRInput buildContextLessTextRecognizeInput(@NotNull String lang) {
        Intrinsics.checkNotNullParameter(lang, "lang");
        HWRInput hWRInput = new HWRInput();
        hWRInput.setRecognizerType(HWRRecognizerType.MS_CONTEXT_LESS);
        hWRInput.setContentType("Text");
        hWRInput.setLang(lang);
        return hWRInput;
    }

    @NotNull
    public final HWRInput buildOffscreenTextRecognizeInput(@NotNull String lang) {
        Intrinsics.checkNotNullParameter(lang, "lang");
        HWRInput hWRInput = new HWRInput();
        hWRInput.setRecognizerType(HWRRecognizerType.MS_OFF_SCREEN);
        hWRInput.setContentType(HWRValues.PART_TYPE_RAW);
        hWRInput.setLang(lang);
        hWRInput.setGestureEnable(true);
        hWRInput.setTextEnable(true);
        hWRInput.setShapeEnable(false);
        hWRInput.setIncremental(true);
        return hWRInput;
    }

    @NotNull
    public final HWRInput buildOnscreenTextRecognizeInput(@NotNull String lang) {
        Intrinsics.checkNotNullParameter(lang, "lang");
        HWRInput hWRInput = new HWRInput();
        hWRInput.setRecognizerType(HWRRecognizerType.MS_ON_SCREEN);
        hWRInput.setContentType("Text");
        hWRInput.setLang(lang);
        hWRInput.setOffsetX(0.0f);
        hWRInput.setOffsetY(0.0f);
        ResManager resManager = ResManager.INSTANCE;
        hWRInput.setViewWidth(resManager.getScreenWidth());
        hWRInput.setViewHeight(resManager.getScreenHeight());
        return hWRInput;
    }
}
