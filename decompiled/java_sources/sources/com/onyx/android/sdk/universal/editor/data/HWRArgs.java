package com.onyx.android.sdk.universal.editor.data;

import com.onyx.android.sdk.hwr.data.constant.HWRRecognizerType;
import com.onyx.android.sdk.universal.util.HWREngineManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;", "", "()V", "lang", "", "getLang", "()Ljava/lang/String;", "setLang", "(Ljava/lang/String;)V", "recognizer", "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;", "getRecognizer", "()Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;", "setRecognizer", "(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)V", "segmentation", "", "getSegmentation", Constants.BOOLEAN_VALUE_SIG, "setSegmentation", "(Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class HWRArgs {

    @NotNull
    private String lang;

    @NotNull
    private HWRRecognizerType recognizer;
    private boolean segmentation;

    public HWRArgs() {
        HWREngineManager hWREngineManager = HWREngineManager.INSTANCE;
        this.lang = hWREngineManager.getDEFAULT_LANG();
        this.recognizer = hWREngineManager.getDEFAULT_RECOGNIZER();
    }

    @NotNull
    public final String getLang() {
        return this.lang;
    }

    @NotNull
    public final HWRRecognizerType getRecognizer() {
        return this.recognizer;
    }

    public final boolean getSegmentation() {
        return this.segmentation;
    }

    public final void setLang(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.lang = str;
    }

    public final void setRecognizer(@NotNull HWRRecognizerType hWRRecognizerType) {
        Intrinsics.checkNotNullParameter(hWRRecognizerType, "<set-?>");
        this.recognizer = hWRRecognizerType;
    }

    public final void setSegmentation(boolean z) {
        this.segmentation = z;
    }
}
