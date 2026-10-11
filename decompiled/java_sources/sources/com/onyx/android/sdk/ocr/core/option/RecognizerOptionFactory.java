package com.onyx.android.sdk.ocr.core.option;

import com.google.mlkit.vision.text.TextRecognizerOptionsInterface;
import com.google.mlkit.vision.text.chinese.ChineseTextRecognizerOptions;
import com.google.mlkit.vision.text.devanagari.DevanagariTextRecognizerOptions;
import com.google.mlkit.vision.text.japanese.JapaneseTextRecognizerOptions;
import com.google.mlkit.vision.text.korean.KoreanTextRecognizerOptions;
import com.google.mlkit.vision.text.latin.TextRecognizerOptions;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.ocr.data.bean.OcrInput;
import com.onyx.android.sdk.ocr.data.constant.OcrException;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/ocr/core/option/RecognizerOptionFactory;", "", "()V", BaiduYunConstant.CREATE, "Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;", "input", "Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;", "sdk-ocr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class RecognizerOptionFactory {

    @NotNull
    public static final RecognizerOptionFactory INSTANCE = new RecognizerOptionFactory();

    @NotNull
    public final TextRecognizerOptionsInterface create(@NotNull OcrInput input) {
        List listOf;
        List listOf2;
        Intrinsics.checkNotNullParameter(input, "input");
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"en", OcrValues.LANG_FRENCH, OcrValues.LANG_GERMAN, OcrValues.LANG_ITALIAN, OcrValues.LANG_LATIN});
        listOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{OcrValues.LANG_INDIAN, OcrValues.LANG_DEVANAGARI});
        String lang = input.getLang();
        if (listOf.contains(lang)) {
            TextRecognizerOptions DEFAULT_OPTIONS = TextRecognizerOptions.DEFAULT_OPTIONS;
            Intrinsics.checkNotNullExpressionValue(DEFAULT_OPTIONS, "DEFAULT_OPTIONS");
            return DEFAULT_OPTIONS;
        }
        if (listOf2.contains(lang)) {
            DevanagariTextRecognizerOptions build = new DevanagariTextRecognizerOptions.Builder().build();
            Intrinsics.checkNotNullExpressionValue(build, "build(...)");
            return build;
        }
        if (Intrinsics.areEqual(lang, "zh")) {
            ChineseTextRecognizerOptions build2 = new ChineseTextRecognizerOptions.Builder().build();
            Intrinsics.checkNotNullExpressionValue(build2, "build(...)");
            return build2;
        }
        if (Intrinsics.areEqual(lang, OcrValues.LANG_JAPANESE)) {
            JapaneseTextRecognizerOptions build3 = new JapaneseTextRecognizerOptions.Builder().build();
            Intrinsics.checkNotNullExpressionValue(build3, "build(...)");
            return build3;
        }
        if (!Intrinsics.areEqual(lang, OcrValues.LANG_KOREAN)) {
            throw OcrException.INSTANCE.m34228of(OcrValues.ERROR_UNSUPPORTED_LANG);
        }
        KoreanTextRecognizerOptions build4 = new KoreanTextRecognizerOptions.Builder().build();
        Intrinsics.checkNotNullExpressionValue(build4, "build(...)");
        return build4;
    }
}
