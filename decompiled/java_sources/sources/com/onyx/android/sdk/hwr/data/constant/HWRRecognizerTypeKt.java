package com.onyx.android.sdk.hwr.data.constant;

import com.onyx.android.sdk.hwr.data.bean.HWRException;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0004\u001a\u00020\u0005*\u00020\u0002\u001a\n\u0010\u0006\u001a\u00020\u0005*\u00020\u0002\u001a\n\u0010\u0007\u001a\u00020\u0005*\u00020\u0002¨\u0006\b"}, m61528d2 = {"getEngineType", "", "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;", "getEngineVersion", "isMlKitRecognizer", "", "isMyScriptRecognizer", "isSuNiaRecognizer", "sdk-hwr_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class HWRRecognizerTypeKt {
    @NotNull
    public static final String getEngineType(@NotNull HWRRecognizerType hWRRecognizerType) {
        Intrinsics.checkNotNullParameter(hWRRecognizerType, "<this>");
        if (isMyScriptRecognizer(hWRRecognizerType)) {
            return HWRValues.ENGINE_MS;
        }
        if (isMlKitRecognizer(hWRRecognizerType)) {
            return HWRValues.ENGINE_ML;
        }
        if (isSuNiaRecognizer(hWRRecognizerType)) {
            return HWRValues.ENGINE_SUNIA;
        }
        throw HWRException.INSTANCE.m33355of("Unknown Recognizer Type");
    }

    @NotNull
    public static final String getEngineVersion(@NotNull HWRRecognizerType hWRRecognizerType) {
        Intrinsics.checkNotNullParameter(hWRRecognizerType, "<this>");
        if (isMyScriptRecognizer(hWRRecognizerType)) {
            return HWRValues.VERSION_LIB_MS;
        }
        if (isMlKitRecognizer(hWRRecognizerType)) {
            return HWRValues.VERSION_LIB_ML;
        }
        throw HWRException.INSTANCE.m33355of("Unknown Recognizer Type");
    }

    public static final boolean isMlKitRecognizer(@NotNull HWRRecognizerType hWRRecognizerType) {
        List listOf;
        Intrinsics.checkNotNullParameter(hWRRecognizerType, "<this>");
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new HWRRecognizerType[]{HWRRecognizerType.f42543ML, HWRRecognizerType.ML_MIXED});
        return listOf.contains(hWRRecognizerType);
    }

    public static final boolean isMyScriptRecognizer(@NotNull HWRRecognizerType hWRRecognizerType) {
        List listOf;
        Intrinsics.checkNotNullParameter(hWRRecognizerType, "<this>");
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new HWRRecognizerType[]{HWRRecognizerType.MS_ON_SCREEN, HWRRecognizerType.MS_OFF_SCREEN, HWRRecognizerType.MS_CONTEXT_LESS});
        return listOf.contains(hWRRecognizerType);
    }

    public static final boolean isSuNiaRecognizer(@NotNull HWRRecognizerType hWRRecognizerType) {
        List listOf;
        Intrinsics.checkNotNullParameter(hWRRecognizerType, "<this>");
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new HWRRecognizerType[]{HWRRecognizerType.SUNIA, HWRRecognizerType.SUNIA_NAI_NBI});
        return listOf.contains(hWRRecognizerType);
    }
}
