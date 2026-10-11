package com.onyx.android.sdk.hwr.service.manager;

import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.mlkit.common.model.DownloadConditions;
import com.google.mlkit.common.model.RemoteModelManager;
import com.google.mlkit.vision.digitalink.DigitalInkRecognitionModel;
import com.google.mlkit.vision.digitalink.DigitalInkRecognitionModelIdentifier;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.data.common.error.ErrorType;
import com.onyx.android.sdk.hwr.data.bean.HWRException;
import com.onyx.android.sdk.hwr.data.bean.HWRResource;
import com.onyx.android.sdk.hwr.data.constant.HWRValues;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.apache.poi.util.ExtUnits;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010%\n\u0002\b\u000e\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b*\u0010+J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u001d\u0010\b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0006*\b\u0012\u0004\u0012\u00028\u00000\u0007¢\u0006\u0004\b\b\u0010\tJ\u000e\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0004J\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00040\rJ\u000e\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u0004J\u000e\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u0004R\u001a\u0010\u0017\u001a\u00020\u00128\u0006X\u0086D¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u001a\u0010\u001a\u001a\u00020\u00128\u0006X\u0086D¢\u0006\f\n\u0004\b\u0018\u0010\u0014\u001a\u0004\b\u0019\u0010\u0016R\u001a\u0010\u001d\u001a\u00020\u00128\u0006X\u0086D¢\u0006\f\n\u0004\b\u001b\u0010\u0014\u001a\u0004\b\u001c\u0010\u0016R#\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120\u001e8\u0006¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R#\u0010&\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120\u001e8\u0006¢\u0006\f\n\u0004\b$\u0010 \u001a\u0004\b%\u0010\"R#\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120\u001e8\u0006¢\u0006\f\n\u0004\b'\u0010 \u001a\u0004\b(\u0010\"¨\u0006,"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;", "", "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;", "resource", "Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;", "selectModel", "T", "Lcom/google/android/gms/tasks/Task;", "execute", "(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;", "model", "", "isModelDownloaded", "", "getDownloadedModels", "", "downloadModel", "deleteModel", "", "a", Constants.STRING_SIG, "getKEY_SHAPE", "()Ljava/lang/String;", "KEY_SHAPE", "b", "getKEY_DRAW", "KEY_DRAW", "c", "getKEY_EMOJI", "KEY_EMOJI", "", "d", "Ljava/util/Map;", "getLangUnrelatedModelMap", "()Ljava/util/Map;", "langUnrelatedModelMap", "e", "getTextModelMap", "textModelMap", C6997f.f39671c, "getGestureModelMap", "gestureModelMap", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class MLModelManager {

    @NotNull
    public static final MLModelManager INSTANCE = new MLModelManager();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final String KEY_SHAPE = HWRValues.PART_TYPE_SHAPE;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final String KEY_DRAW = "Draw";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static final String KEY_EMOJI = HWRValues.PART_TYPE_EMOJI;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public static final Map<String, String> langUnrelatedModelMap;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public static final Map<String, String> textModelMap;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public static final Map<String, String> gestureModelMap;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        langUnrelatedModelMap = linkedHashMap;
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        textModelMap = linkedHashMap2;
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        gestureModelMap = linkedHashMap3;
        linkedHashMap.put(HWRValues.PART_TYPE_SHAPE, "zxx-Zsym-x-shapes");
        linkedHashMap.put("Draw", "zxx-Zsym-x-autodraw");
        linkedHashMap.put(HWRValues.PART_TYPE_EMOJI, "zxx-Zsye-x-emoji");
        linkedHashMap2.put("zh_CN", "zh-Hani-CN");
        linkedHashMap2.put("zh_TW", "zh-Hani-TW");
        linkedHashMap2.put("en_US", "en-US");
        linkedHashMap2.put("ja_JP", OcrValues.LANG_JAPANESE);
        linkedHashMap2.put("ko_KR", OcrValues.LANG_KOREAN);
        linkedHashMap2.put("ru_RU", OcrValues.LANG_RUSSIAN);
        linkedHashMap2.put("de_DE", OcrValues.LANG_GERMAN);
        linkedHashMap2.put("fr_FR", OcrValues.LANG_FRENCH);
        linkedHashMap2.put("it_IT", OcrValues.LANG_ITALIAN);
        linkedHashMap2.put("pt_PT", ExtUnits.UNIT_PT);
        linkedHashMap2.put("es_ES", "es");
        linkedHashMap3.put("zh_CN", "zh-Hani-CN-x-gesture");
        linkedHashMap3.put("zh_TW", "zh-Hani-TW-x-gesture");
        linkedHashMap3.put("en_US", "en-US-x-gesture");
        linkedHashMap3.put("ja_JP", "ja-x-gesture");
        linkedHashMap3.put("ko_KR", "ko-x-gesture");
        linkedHashMap3.put("ru_RU", "ru-x-gesture");
        linkedHashMap3.put("de_DE", "de-x-gesture");
        linkedHashMap3.put("fr_FR", "fr-x-gesture");
        linkedHashMap3.put("it_IT", "it-x-gesture");
        linkedHashMap3.put("pt_PT", "pt-x-gesture");
        linkedHashMap3.put("es_ES", "es-x-gesture");
    }

    public final void deleteModel(@NotNull DigitalInkRecognitionModel model) {
        Intrinsics.checkNotNullParameter(model, "model");
        Task<Void> deleteDownloadedModel = RemoteModelManager.getInstance().deleteDownloadedModel(model);
        Intrinsics.checkNotNullExpressionValue(deleteDownloadedModel, "deleteDownloadedModel(...)");
        execute(deleteDownloadedModel);
    }

    public final void downloadModel(@NotNull DigitalInkRecognitionModel model) {
        Intrinsics.checkNotNullParameter(model, "model");
        Task<Void> download = RemoteModelManager.getInstance().download(model, new DownloadConditions.Builder().build());
        Intrinsics.checkNotNullExpressionValue(download, "download(...)");
        execute(download);
    }

    public final <T> T execute(@NotNull Task<T> task) {
        Intrinsics.checkNotNullParameter(task, "<this>");
        return (T) Tasks.await(task, 60L, TimeUnit.SECONDS);
    }

    @NotNull
    public final List<DigitalInkRecognitionModel> getDownloadedModels() {
        List<DigitalInkRecognitionModel> mutableList;
        Task downloadedModels = RemoteModelManager.getInstance().getDownloadedModels(DigitalInkRecognitionModel.class);
        Intrinsics.checkNotNullExpressionValue(downloadedModels, "getDownloadedModels(...)");
        Object execute = execute(downloadedModels);
        Intrinsics.checkNotNullExpressionValue(execute, "execute(...)");
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) execute);
        return mutableList;
    }

    @NotNull
    public final Map<String, String> getGestureModelMap() {
        return gestureModelMap;
    }

    @NotNull
    public final String getKEY_DRAW() {
        return KEY_DRAW;
    }

    @NotNull
    public final String getKEY_EMOJI() {
        return KEY_EMOJI;
    }

    @NotNull
    public final String getKEY_SHAPE() {
        return KEY_SHAPE;
    }

    @NotNull
    public final Map<String, String> getLangUnrelatedModelMap() {
        return langUnrelatedModelMap;
    }

    @NotNull
    public final Map<String, String> getTextModelMap() {
        return textModelMap;
    }

    public final boolean isModelDownloaded(@NotNull DigitalInkRecognitionModel model) {
        Intrinsics.checkNotNullParameter(model, "model");
        Task<Boolean> isModelDownloaded = RemoteModelManager.getInstance().isModelDownloaded(model);
        Intrinsics.checkNotNullExpressionValue(isModelDownloaded, "isModelDownloaded(...)");
        Object execute = execute(isModelDownloaded);
        Intrinsics.checkNotNullExpressionValue(execute, "execute(...)");
        return ((Boolean) execute).booleanValue();
    }

    @NotNull
    public final DigitalInkRecognitionModel selectModel(@NotNull HWRResource resource) {
        Intrinsics.checkNotNullParameter(resource, "resource");
        String str = Intrinsics.areEqual(resource.getContentType(), HWRValues.PART_TYPE_SHAPE) ? langUnrelatedModelMap.get(KEY_DRAW) : null;
        if (Intrinsics.areEqual(resource.getContentType(), HWRValues.PART_TYPE_DRAW)) {
            str = langUnrelatedModelMap.get(KEY_DRAW);
        }
        if (Intrinsics.areEqual(resource.getContentType(), HWRValues.PART_TYPE_EMOJI)) {
            str = langUnrelatedModelMap.get(KEY_EMOJI);
        }
        if (Intrinsics.areEqual(resource.getContentType(), "Text")) {
            str = textModelMap.get(resource.getLang());
        }
        if (Intrinsics.areEqual(resource.getContentType(), HWRValues.PART_TYPE_GESTURE)) {
            str = gestureModelMap.get(resource.getLang());
        }
        if (str == null) {
            throw HWRException.INSTANCE.m33355of(ErrorType.RESOURCE_NOT_FOUND);
        }
        DigitalInkRecognitionModelIdentifier fromLanguageTag = DigitalInkRecognitionModelIdentifier.fromLanguageTag(str);
        Intrinsics.checkNotNull(fromLanguageTag);
        DigitalInkRecognitionModel build = DigitalInkRecognitionModel.builder(fromLanguageTag).build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        return build;
    }
}
