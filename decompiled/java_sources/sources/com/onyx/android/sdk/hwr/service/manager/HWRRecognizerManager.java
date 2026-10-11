package com.onyx.android.sdk.hwr.service.manager;

import com.onyx.android.sdk.base.scheduler.RxScheduler;
import com.onyx.android.sdk.hwr.data.bean.HWRException;
import com.onyx.android.sdk.hwr.data.bean.HWRInput;
import com.onyx.android.sdk.hwr.data.bundle.HWRFactory;
import com.onyx.android.sdk.hwr.data.constant.HWRLifecycle;
import com.onyx.android.sdk.hwr.data.constant.HWRRecognizerType;
import com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b)\u0010*J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0016\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tJ\u0006\u0010\r\u001a\u00020\fJ\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R.\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00040\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R$\u0010\u001c\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\"\u0010$\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\"\u0010(\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010\u001f\u001a\u0004\b&\u0010!\"\u0004\b'\u0010#¨\u0006+"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;", "", "", "isRecognizerActivated", "Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;", "getActiveRecognizer", "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;", "recognizerType", "getRecognizer", "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "input", "initRecognizer", "", "destroyAll", "a", "", "Ljava/util/Map;", "getRecognizerMap", "()Ljava/util/Map;", "setRecognizerMap", "(Ljava/util/Map;)V", "recognizerMap", "b", "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;", "getSelectedRecognizerType", "()Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;", "setSelectedRecognizerType", "(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)V", "selectedRecognizerType", "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "c", "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "getRecognizeScheduler", "()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "setRecognizeScheduler", "(Lcom/onyx/android/sdk/base/scheduler/RxScheduler;)V", "recognizeScheduler", "d", "getCloudScheduler", "setCloudScheduler", "cloudScheduler", Constants.CONSTRUCTOR_NAME, "()V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHWRRecognizerManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRRecognizerManager.kt\ncom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,78:1\n1855#2,2:79\n*S KotlinDebug\n*F\n+ 1 HWRRecognizerManager.kt\ncom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager\n*L\n69#1:79,2\n*E\n"})
/* loaded from: classes7.dex */
public final class HWRRecognizerManager {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public Map<HWRRecognizerType, IHWRRecognizer> recognizerMap = new LinkedHashMap();

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public HWRRecognizerType selectedRecognizerType;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public RxScheduler recognizeScheduler;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public RxScheduler cloudScheduler;

    public HWRRecognizerManager() {
        RxScheduler.Companion companion = RxScheduler.INSTANCE;
        this.recognizeScheduler = RxScheduler.Companion.newSingleThreadManager$default(companion, "HWRThread", 0L, 2, null);
        this.cloudScheduler = RxScheduler.Companion.newSingleThreadManager$default(companion, "CloudThread", 0L, 2, null);
    }

    /* renamed from: a */
    public final IHWRRecognizer m33369a(HWRRecognizerType recognizerType) {
        return HWRFactory.INSTANCE.getRecognizerFactory().invoke(recognizerType);
    }

    public final void destroyAll() {
        Iterator<T> it2 = this.recognizerMap.values().iterator();
        while (it2.hasNext()) {
            ((IHWRRecognizer) it2.next()).destroy();
        }
        this.recognizerMap.clear();
        this.selectedRecognizerType = null;
    }

    @NotNull
    public final IHWRRecognizer getActiveRecognizer() {
        HWRRecognizerType hWRRecognizerType = this.selectedRecognizerType;
        if (hWRRecognizerType == null) {
            throw HWRException.INSTANCE.m33355of("No Activated Recognizer Found");
        }
        Intrinsics.checkNotNull(hWRRecognizerType);
        return getRecognizer(hWRRecognizerType);
    }

    @NotNull
    public final RxScheduler getCloudScheduler() {
        return this.cloudScheduler;
    }

    @NotNull
    public final RxScheduler getRecognizeScheduler() {
        return this.recognizeScheduler;
    }

    @NotNull
    public final IHWRRecognizer getRecognizer(@NotNull HWRRecognizerType recognizerType) {
        Intrinsics.checkNotNullParameter(recognizerType, "recognizerType");
        IHWRRecognizer iHWRRecognizer = this.recognizerMap.get(recognizerType);
        if (iHWRRecognizer != null && iHWRRecognizer.needDiscard()) {
            this.recognizerMap.remove(recognizerType);
            iHWRRecognizer = null;
        }
        if (iHWRRecognizer == null) {
            iHWRRecognizer = m33369a(recognizerType);
            this.recognizerMap.put(recognizerType, iHWRRecognizer);
        }
        this.selectedRecognizerType = recognizerType;
        return iHWRRecognizer;
    }

    @NotNull
    public final Map<HWRRecognizerType, IHWRRecognizer> getRecognizerMap() {
        return this.recognizerMap;
    }

    @Nullable
    public final HWRRecognizerType getSelectedRecognizerType() {
        return this.selectedRecognizerType;
    }

    @NotNull
    public final IHWRRecognizer initRecognizer(@NotNull HWRRecognizerType recognizerType, @NotNull HWRInput input) {
        Intrinsics.checkNotNullParameter(recognizerType, "recognizerType");
        Intrinsics.checkNotNullParameter(input, "input");
        IHWRRecognizer recognizer = getRecognizer(recognizerType);
        if (recognizer.lifecycle().compareTo(HWRLifecycle.INITIALIZED) > 0) {
            recognizer.destroy();
            recognizer = m33369a(recognizerType);
            this.recognizerMap.put(recognizerType, recognizer);
        }
        recognizer.init(input);
        return recognizer;
    }

    public final boolean isRecognizerActivated() {
        return this.selectedRecognizerType != null;
    }

    public final void setCloudScheduler(@NotNull RxScheduler rxScheduler) {
        Intrinsics.checkNotNullParameter(rxScheduler, "<set-?>");
        this.cloudScheduler = rxScheduler;
    }

    public final void setRecognizeScheduler(@NotNull RxScheduler rxScheduler) {
        Intrinsics.checkNotNullParameter(rxScheduler, "<set-?>");
        this.recognizeScheduler = rxScheduler;
    }

    public final void setRecognizerMap(@NotNull Map<HWRRecognizerType, IHWRRecognizer> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.recognizerMap = map;
    }

    public final void setSelectedRecognizerType(@Nullable HWRRecognizerType hWRRecognizerType) {
        this.selectedRecognizerType = hWRRecognizerType;
    }
}
