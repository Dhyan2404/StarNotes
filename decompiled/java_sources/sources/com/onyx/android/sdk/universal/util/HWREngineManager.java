package com.onyx.android.sdk.universal.util;

import com.onyx.android.sdk.data.utils.ConfigLoader;
import com.onyx.android.sdk.hwr.data.bean.HWRInput;
import com.onyx.android.sdk.hwr.data.bundle.HWRBundle;
import com.onyx.android.sdk.hwr.data.constant.HWRActivateServer;
import com.onyx.android.sdk.hwr.data.constant.HWRRecognizerType;
import com.onyx.android.sdk.hwr.data.constant.HWRRecognizerTypeKt;
import com.onyx.android.sdk.hwr.data.constant.HWRValues;
import com.onyx.android.sdk.universal.p042ui.data.HwrEngineEntry;
import com.onyx.android.sdk.universal.p042ui.data.HwrRecognizerConfig;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b$\u0010%J\u000e\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\t\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002J\u0016\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\u0012\u001a\u00020\u00112\u0006\u0010\b\u001a\u00020\u0002R\u001a\u0010\u0017\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0017\u0010\u001c\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0014\u0010\u001e\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001d\u0010\u0014R\u001d\u0010#\u001a\u0004\u0018\u00010\u001f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\u0013\u0010\"¨\u0006&"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/util/HWREngineManager;", "", "", "functionKey", "getEngineByFunction", "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;", "getRecognizerTypeByFunction", "getDefaultLangByFunction", "engine", "getActivateServerByEngineType", "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;", "hwrBundle", "ensureEngineByFunction", "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "input", "", "initHWRInputByEngine", "", "shouldEnableSegmentFeature", "a", Constants.STRING_SIG, "getDEFAULT_LANG", "()Ljava/lang/String;", "DEFAULT_LANG", "b", "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;", "getDEFAULT_RECOGNIZER", "()Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;", "DEFAULT_RECOGNIZER", "c", "HWR_RECOGNIZER_CONFIG_RAW_NAME", "Lcom/onyx/android/sdk/universal/ui/data/HwrRecognizerConfig;", "d", "Lkotlin/Lazy;", "()Lcom/onyx/android/sdk/universal/ui/data/HwrRecognizerConfig;", "hwrRecognizerConfig", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHWREngineManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWREngineManager.kt\ncom/onyx/android/sdk/universal/util/HWREngineManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,59:1\n1#2:60\n*E\n"})
/* loaded from: classes8.dex */
public final class HWREngineManager {

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static final String HWR_RECOGNIZER_CONFIG_RAW_NAME = "hwr_recognizer_config";

    @NotNull
    public static final HWREngineManager INSTANCE = new HWREngineManager();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final String DEFAULT_LANG = "zh_CN";

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final HWRRecognizerType DEFAULT_RECOGNIZER = HWRRecognizerType.f42543ML;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public static final Lazy hwrRecognizerConfig = LazyKt.lazy(new Function0<HwrRecognizerConfig>() { // from class: com.onyx.android.sdk.universal.util.HWREngineManager$hwrRecognizerConfig$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @Nullable
        public final HwrRecognizerConfig invoke() {
            return (HwrRecognizerConfig) ConfigLoader.INSTANCE.load(HwrRecognizerConfig.class, HWREngineManager.HWR_RECOGNIZER_CONFIG_RAW_NAME);
        }
    });

    /* renamed from: a */
    public final HwrRecognizerConfig m41603a() {
        return (HwrRecognizerConfig) hwrRecognizerConfig.getValue();
    }

    @NotNull
    public final String ensureEngineByFunction(@NotNull HWRBundle hwrBundle, @NotNull String functionKey) {
        Intrinsics.checkNotNullParameter(hwrBundle, "hwrBundle");
        Intrinsics.checkNotNullParameter(functionKey, "functionKey");
        HWRRecognizerType recognizerTypeByFunction = getRecognizerTypeByFunction(functionKey);
        hwrBundle.getRecognizerManager().getRecognizer(recognizerTypeByFunction);
        return HWRRecognizerTypeKt.getEngineType(recognizerTypeByFunction);
    }

    @NotNull
    public final String getActivateServerByEngineType(@NotNull String engine) {
        List<HWRActivateServer> activateServerList;
        Object obj;
        Intrinsics.checkNotNullParameter(engine, "engine");
        HwrRecognizerConfig m41603a = m41603a();
        String str = null;
        if (m41603a != null && (activateServerList = m41603a.getActivateServerList()) != null) {
            Iterator<T> it2 = activateServerList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it2.next();
                if (Intrinsics.areEqual(HWRRecognizerTypeKt.getEngineType(HWRRecognizerType.INSTANCE.getHwrRecognizerByName(((HWRActivateServer) obj).getEngineName())), engine)) {
                    break;
                }
            }
            HWRActivateServer hWRActivateServer = (HWRActivateServer) obj;
            if (hWRActivateServer != null) {
                str = hWRActivateServer.getServerType();
            }
        }
        return str == null ? "" : str;
    }

    @NotNull
    public final String getDEFAULT_LANG() {
        return DEFAULT_LANG;
    }

    @NotNull
    public final HWRRecognizerType getDEFAULT_RECOGNIZER() {
        return DEFAULT_RECOGNIZER;
    }

    @NotNull
    public final String getDefaultLangByFunction(@NotNull String functionKey) {
        List<HwrEngineEntry> engineEntryList;
        Object obj;
        Intrinsics.checkNotNullParameter(functionKey, "functionKey");
        HwrRecognizerConfig m41603a = m41603a();
        String str = null;
        if (m41603a != null && (engineEntryList = m41603a.getEngineEntryList()) != null) {
            Iterator<T> it2 = engineEntryList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it2.next();
                if (Intrinsics.areEqual(((HwrEngineEntry) obj).getFunctionKey(), functionKey)) {
                    break;
                }
            }
            HwrEngineEntry hwrEngineEntry = (HwrEngineEntry) obj;
            if (hwrEngineEntry != null) {
                str = hwrEngineEntry.getDefaultLang();
            }
        }
        return str == null ? DEFAULT_LANG : str;
    }

    @NotNull
    public final String getEngineByFunction(@NotNull String functionKey) {
        Intrinsics.checkNotNullParameter(functionKey, "functionKey");
        return HWRRecognizerTypeKt.getEngineType(getRecognizerTypeByFunction(functionKey));
    }

    @NotNull
    public final HWRRecognizerType getRecognizerTypeByFunction(@NotNull String functionKey) {
        List<HwrEngineEntry> engineEntryList;
        Object obj;
        Intrinsics.checkNotNullParameter(functionKey, "functionKey");
        HwrRecognizerConfig m41603a = m41603a();
        String str = null;
        if (m41603a != null && (engineEntryList = m41603a.getEngineEntryList()) != null) {
            Iterator<T> it2 = engineEntryList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it2.next();
                if (Intrinsics.areEqual(((HwrEngineEntry) obj).getFunctionKey(), functionKey)) {
                    break;
                }
            }
            HwrEngineEntry hwrEngineEntry = (HwrEngineEntry) obj;
            if (hwrEngineEntry != null) {
                str = hwrEngineEntry.getEngineName();
            }
        }
        return HWRRecognizerType.INSTANCE.getHwrRecognizerByName(str);
    }

    public final void initHWRInputByEngine(@NotNull HWRInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
        input.setActivateServer(getActivateServerByEngineType(HWRRecognizerTypeKt.getEngineType(input.getRecognizerType())));
    }

    public final boolean shouldEnableSegmentFeature(@NotNull String engine) {
        Intrinsics.checkNotNullParameter(engine, "engine");
        return Intrinsics.areEqual(engine, HWRValues.ENGINE_ML);
    }
}
