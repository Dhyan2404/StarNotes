package com.onyx.android.sdk.hwr.data.bundle;

import com.onyx.android.sdk.base.common.error.OnyxException;
import com.onyx.android.sdk.data.common.error.ErrorType;
import com.onyx.android.sdk.hwr.data.constant.HWRRecognizerType;
import com.onyx.android.sdk.hwr.service.convert.HWRResultConvertProvider;
import com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer;
import com.onyx.android.sdk.hwr.service.resource.IHWRResourceChecker;
import com.onyx.android.sdk.hwr.service.resource.IHWRResourceDownloader;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b#\u0010$R2\u0010\f\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002j\u0002`\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bRA\u0010\u0016\u001a!\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\u00110\u0002j\u0002`\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0007\u001a\u0004\b\u0014\u0010\t\"\u0004\b\u0015\u0010\u000bRA\u0010\u001c\u001a!\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\u00170\u0002j\u0002`\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u0007\u001a\u0004\b\u001a\u0010\t\"\u0004\b\u001b\u0010\u000bRA\u0010\"\u001a!\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\u001d0\u0002j\u0002`\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010\u0007\u001a\u0004\b \u0010\t\"\u0004\b!\u0010\u000b¨\u0006%"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;", "", "Lkotlin/Function1;", "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;", "Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;", "Lcom/onyx/android/sdk/hwr/data/bundle/HwrRecognizerFactory;", "a", "Lkotlin/jvm/functions/Function1;", "getRecognizerFactory", "()Lkotlin/jvm/functions/Function1;", "setRecognizerFactory", "(Lkotlin/jvm/functions/Function1;)V", "recognizerFactory", "", "Lkotlin/ParameterName;", "name", "engine", "Lcom/onyx/android/sdk/hwr/service/convert/HWRResultConvertProvider;", "Lcom/onyx/android/sdk/hwr/data/bundle/HwrResultConverterFactory;", "b", "getResultConverterFactory", "setResultConverterFactory", "resultConverterFactory", "Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;", "Lcom/onyx/android/sdk/hwr/data/bundle/HwrResourceCheckerFactory;", "c", "getResourceCheckerFactory", "setResourceCheckerFactory", "resourceCheckerFactory", "Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader;", "Lcom/onyx/android/sdk/hwr/data/bundle/HwrResourceDownloaderFactory;", "d", "getResourceDownloaderFactory", "setResourceDownloaderFactory", "resourceDownloaderFactory", Constants.CONSTRUCTOR_NAME, "()V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HWRFactory {

    @NotNull
    public static final HWRFactory INSTANCE = new HWRFactory();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static Function1<? super HWRRecognizerType, ? extends IHWRRecognizer> recognizerFactory = new Function1() { // from class: com.onyx.android.sdk.hwr.data.bundle.HWRFactory$recognizerFactory$1
        @Override // kotlin.jvm.functions.Function1
        @NotNull
        public final Void invoke(@NotNull HWRRecognizerType type) {
            Intrinsics.checkNotNullParameter(type, "type");
            throw OnyxException.INSTANCE.m31891of(ErrorType.NOT_IMPLEMENTED);
        }
    };

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static Function1<? super String, ? extends HWRResultConvertProvider> resultConverterFactory = new Function1() { // from class: com.onyx.android.sdk.hwr.data.bundle.HWRFactory$resultConverterFactory$1
        @Override // kotlin.jvm.functions.Function1
        @NotNull
        public final Void invoke(@NotNull String engine) {
            Intrinsics.checkNotNullParameter(engine, "engine");
            throw OnyxException.INSTANCE.m31891of(ErrorType.NOT_IMPLEMENTED);
        }
    };

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static Function1<? super String, ? extends IHWRResourceChecker> resourceCheckerFactory = new Function1() { // from class: com.onyx.android.sdk.hwr.data.bundle.HWRFactory$resourceCheckerFactory$1
        @Override // kotlin.jvm.functions.Function1
        @NotNull
        public final Void invoke(@NotNull String engine) {
            Intrinsics.checkNotNullParameter(engine, "engine");
            throw OnyxException.INSTANCE.m31891of(ErrorType.NOT_IMPLEMENTED);
        }
    };

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public static Function1<? super String, ? extends IHWRResourceDownloader> resourceDownloaderFactory = new Function1() { // from class: com.onyx.android.sdk.hwr.data.bundle.HWRFactory$resourceDownloaderFactory$1
        @Override // kotlin.jvm.functions.Function1
        @NotNull
        public final Void invoke(@NotNull String engine) {
            Intrinsics.checkNotNullParameter(engine, "engine");
            throw OnyxException.INSTANCE.m31891of(ErrorType.NOT_IMPLEMENTED);
        }
    };

    @NotNull
    public final Function1<HWRRecognizerType, IHWRRecognizer> getRecognizerFactory() {
        return recognizerFactory;
    }

    @NotNull
    public final Function1<String, IHWRResourceChecker> getResourceCheckerFactory() {
        return resourceCheckerFactory;
    }

    @NotNull
    public final Function1<String, IHWRResourceDownloader> getResourceDownloaderFactory() {
        return resourceDownloaderFactory;
    }

    @NotNull
    public final Function1<String, HWRResultConvertProvider> getResultConverterFactory() {
        return resultConverterFactory;
    }

    public final void setRecognizerFactory(@NotNull Function1<? super HWRRecognizerType, ? extends IHWRRecognizer> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        recognizerFactory = function1;
    }

    public final void setResourceCheckerFactory(@NotNull Function1<? super String, ? extends IHWRResourceChecker> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        resourceCheckerFactory = function1;
    }

    public final void setResourceDownloaderFactory(@NotNull Function1<? super String, ? extends IHWRResourceDownloader> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        resourceDownloaderFactory = function1;
    }

    public final void setResultConverterFactory(@NotNull Function1<? super String, ? extends HWRResultConvertProvider> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        resultConverterFactory = function1;
    }
}
