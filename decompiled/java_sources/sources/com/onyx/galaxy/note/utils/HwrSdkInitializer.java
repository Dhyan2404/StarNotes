package com.onyx.galaxy.note.utils;

import com.google.mlkit.common.sdkinternal.MlKitContext;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.data.FunctionKey;
import com.onyx.android.sdk.hwr.action.HWRInstallDefaultResourceAction;
import com.onyx.android.sdk.hwr.data.bundle.HWRFactory;
import com.onyx.android.sdk.hwr.data.constant.HWRRecognizerType;
import com.onyx.android.sdk.hwr.data.constant.HWRValues;
import com.onyx.android.sdk.hwr.service.convert.HWRResultConvertProvider;
import com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer;
import com.onyx.android.sdk.hwr.service.resource.IHWRResourceChecker;
import com.onyx.android.sdk.hwr.service.resource.IHWRResourceDownloader;
import com.onyx.android.sdk.hwr.service.resource.MLResourceChecker;
import com.onyx.android.sdk.hwr.service.resource.MLResourceDownloader;
import com.onyx.android.sdk.hwr.sunia.resource.SuNiaResourceChecker;
import com.onyx.android.sdk.hwr.sunia.resource.SuNiaResourceDownloader;
import com.onyx.android.sdk.universal.util.HWREngineManager;
import com.onyx.galaxy.note.hilt.convert.IHWRResultConvertEntryPoint;
import com.onyx.galaxy.note.hilt.recognizer.IRecognizerEntrypoint;
import com.sun.org.apache.bcel.internal.Constants;
import dagger.hilt.android.EntryPointAccessors;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\t\u0010\nJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\b\u0010\b\u001a\u00020\u0002H\u0002¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/galaxy/note/utils/HwrSdkInitializer;", "", "", "initialize", "installDefaultResource", "a", "d", "b", "c", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class HwrSdkInitializer {

    @NotNull
    public static final HwrSdkInitializer INSTANCE = new HwrSdkInitializer();

    /* renamed from: a */
    public final void m51972a() {
        HWRFactory.INSTANCE.setRecognizerFactory(new Function1<HWRRecognizerType, IHWRRecognizer>() { // from class: com.onyx.galaxy.note.utils.HwrSdkInitializer$installSupportedRecognizer$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final IHWRRecognizer invoke(@NotNull HWRRecognizerType type) {
                Intrinsics.checkNotNullParameter(type, "type");
                IHWRRecognizer recognizer = ((IRecognizerEntrypoint) EntryPointAccessors.fromApplication(ResManager.INSTANCE.getAppContext(), IRecognizerEntrypoint.class)).getRecognizeCreator().create(type.getType()).getRecognizer();
                if (recognizer != null) {
                    return recognizer;
                }
                throw new RuntimeException("HWR Recognizer Not Found");
            }
        });
        MlKitContext.initializeIfNeeded(ResManager.INSTANCE.getAppContext());
    }

    /* renamed from: b */
    public final void m51973b() {
        HWRFactory.INSTANCE.setResourceCheckerFactory(new Function1<String, IHWRResourceChecker>() { // from class: com.onyx.galaxy.note.utils.HwrSdkInitializer$installSupportedResourceChecker$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final IHWRResourceChecker invoke(@NotNull String engine) {
                Intrinsics.checkNotNullParameter(engine, "engine");
                if (Intrinsics.areEqual(engine, HWRValues.ENGINE_ML)) {
                    return MLResourceChecker.INSTANCE;
                }
                if (Intrinsics.areEqual(engine, HWRValues.ENGINE_SUNIA)) {
                    return SuNiaResourceChecker.INSTANCE;
                }
                throw new RuntimeException("HWR Resource Checker Not Found");
            }
        });
    }

    /* renamed from: c */
    public final void m51974c() {
        HWRFactory.INSTANCE.setResourceDownloaderFactory(new Function1<String, IHWRResourceDownloader>() { // from class: com.onyx.galaxy.note.utils.HwrSdkInitializer$installSupportedResourceDownloader$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final IHWRResourceDownloader invoke(@NotNull String type) {
                Intrinsics.checkNotNullParameter(type, "type");
                if (Intrinsics.areEqual(type, HWRValues.ENGINE_ML)) {
                    return new MLResourceDownloader();
                }
                if (Intrinsics.areEqual(type, HWRValues.ENGINE_SUNIA)) {
                    return new SuNiaResourceDownloader();
                }
                throw new RuntimeException("HWR Resource Downloader Not Found");
            }
        });
    }

    /* renamed from: d */
    public final void m51975d() {
        HWRFactory.INSTANCE.setResultConverterFactory(new Function1<String, HWRResultConvertProvider>() { // from class: com.onyx.galaxy.note.utils.HwrSdkInitializer$installSupportedResultConverter$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final HWRResultConvertProvider invoke(@NotNull String type) {
                Intrinsics.checkNotNullParameter(type, "type");
                HWRResultConvertProvider hWRResultConvertProvider = ((IHWRResultConvertEntryPoint) EntryPointAccessors.fromApplication(ResManager.INSTANCE.getAppContext(), IHWRResultConvertEntryPoint.class)).getConvertCreator().create(type).getHWRResultConvertProvider();
                if (hWRResultConvertProvider != null) {
                    return hWRResultConvertProvider;
                }
                throw new RuntimeException("HWR Recognizer Not Found");
            }
        });
    }

    public final void initialize() {
        m51972a();
        m51975d();
        m51973b();
        m51974c();
    }

    public final void installDefaultResource() {
        List listOf;
        String defaultLangByFunction = HWREngineManager.INSTANCE.getDefaultLangByFunction(FunctionKey.HWR);
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{HWRValues.ENGINE_ML, HWRValues.ENGINE_SUNIA});
        RxjavaKt.subscribeWithDefault$default(new HWRInstallDefaultResourceAction(defaultLangByFunction, listOf).build(), null, null, null, 7, null);
    }
}
