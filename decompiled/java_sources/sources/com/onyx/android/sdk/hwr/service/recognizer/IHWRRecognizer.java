package com.onyx.android.sdk.hwr.service.recognizer;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.hwr.data.bean.HWRConvertBean;
import com.onyx.android.sdk.hwr.data.bean.HWRInput;
import com.onyx.android.sdk.hwr.data.constant.HWRLifecycle;
import com.onyx.android.sdk.hwr.data.constant.HWRRecognizerType;
import com.onyx.android.sdk.hwr.service.handler.IHWRGestureHandler;
import com.onyx.android.sdk.hwr.service.listener.IHWRRecognizerListener;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0011\n\u0002\b\r\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J \u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H&J\b\u0010\n\u001a\u00020\u0003H&J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH&J\u0016\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\f0\u00102\u0006\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u0011\u001a\u00020\u0007H&J\n\u0010\u0012\u001a\u0004\u0018\u00010\u0013H&J\b\u0010\u0014\u001a\u00020\u0007H&J\b\u0010\u0015\u001a\u00020\u000eH&J\n\u0010\u0016\u001a\u0004\u0018\u00010\u0017H&J\b\u0010\u0018\u001a\u00020\u0019H&J\u0010\u0010\u001a\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH&J\b\u0010\u001b\u001a\u00020\u001cH&J\b\u0010\u001d\u001a\u00020\u001eH&J\b\u0010\u001f\u001a\u00020\u001cH\u0016J\b\u0010 \u001a\u00020\u001cH\u0016J\b\u0010!\u001a\u00020\u001cH\u0016J\b\u0010\"\u001a\u00020\u001cH\u0016J\b\u0010#\u001a\u00020\u001cH\u0016J\b\u0010$\u001a\u00020\u001cH\u0016J\b\u0010%\u001a\u00020\u001cH\u0016J\b\u0010&\u001a\u00020\u001cH\u0016J\u0010\u0010'\u001a\u00020\u001c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u001b\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00070)2\u0006\u0010\r\u001a\u00020\u000eH&¢\u0006\u0002\u0010*J\u0010\u0010+\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH&J\u001b\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00070)2\u0006\u0010\r\u001a\u00020\u000eH&¢\u0006\u0002\u0010*J\u0010\u0010-\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH&J\u0010\u0010.\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH&J\u001b\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00070)2\u0006\u0010\r\u001a\u00020\u000eH&¢\u0006\u0002\u0010*J\u0010\u00100\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH&J\u0010\u00101\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH&J\u0010\u00102\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH&J\u0018\u00103\u001a\u00020\f2\u0006\u00104\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH&J\u000e\u00105\u001a\b\u0012\u0004\u0012\u00020\u00010\u0010H&¨\u00066"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;", "", Constants.CLEAR_ATTRIBUTES, "", "close", "compileTextModel", "type", "", "data", "lang", "destroy", SyncConstant.EXPORT_DIR_NAME, "Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;", "input", "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "exportObservable", "Lio/reactivex/rxjava3/core/Observable;", "getContentType", "getGestureHandler", "Lcom/onyx/android/sdk/hwr/service/handler/IHWRGestureHandler;", "getLang", "getOpenParam", "getOutputListener", "Lcom/onyx/android/sdk/hwr/service/listener/IHWRRecognizerListener;", "getRecognizerType", "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;", "init", "isIdle", "", RequestParameters.SUBRESOURCE_LIFECYCLE, "Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;", "needActivate", "needClear", "needClose", "needDestroy", "needDiscard", "needHandle", "needInitialize", "needOpen", "needReopen", "onAddStroke", "", "(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)[Ljava/lang/String;", "onErase", "onImport", "onPointerEvents", "onRedo", "onReplace", "onTransform", "onUndo", "open", "optimize", "convertBean", "waitForIdle", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface IHWRRecognizer {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class DefaultImpls {
        @NotNull
        public static Observable<HWRConvertBean> exportObservable(@NotNull IHWRRecognizer iHWRRecognizer, @NotNull HWRInput input) {
            Intrinsics.checkNotNullParameter(input, "input");
            Observable<HWRConvertBean> just = Observable.just(iHWRRecognizer.export(input));
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }

        public static boolean needActivate(@NotNull IHWRRecognizer iHWRRecognizer) {
            return false;
        }

        public static boolean needClear(@NotNull IHWRRecognizer iHWRRecognizer) {
            return CollectionsKt.listOf((Object[]) new HWRLifecycle[]{HWRLifecycle.OPENED, HWRLifecycle.PROCESSING}).contains(iHWRRecognizer.lifecycle());
        }

        public static boolean needClose(@NotNull IHWRRecognizer iHWRRecognizer) {
            return CollectionsKt.listOf((Object[]) new HWRLifecycle[]{HWRLifecycle.OPENED, HWRLifecycle.PROCESSING, HWRLifecycle.CLEARED}).contains(iHWRRecognizer.lifecycle());
        }

        public static boolean needDestroy(@NotNull IHWRRecognizer iHWRRecognizer) {
            return iHWRRecognizer.lifecycle().compareTo(HWRLifecycle.INITIALIZED) >= 0 && iHWRRecognizer.lifecycle().compareTo(HWRLifecycle.DESTROYED) < 0;
        }

        public static boolean needDiscard(@NotNull IHWRRecognizer iHWRRecognizer) {
            return iHWRRecognizer.lifecycle() == HWRLifecycle.DESTROYED;
        }

        public static boolean needHandle(@NotNull IHWRRecognizer iHWRRecognizer) {
            return CollectionsKt.listOf(HWRLifecycle.PROCESSING).contains(iHWRRecognizer.lifecycle());
        }

        public static boolean needInitialize(@NotNull IHWRRecognizer iHWRRecognizer) {
            return iHWRRecognizer.lifecycle() == HWRLifecycle.CREATED;
        }

        public static boolean needOpen(@NotNull IHWRRecognizer iHWRRecognizer) {
            return CollectionsKt.listOf((Object[]) new HWRLifecycle[]{HWRLifecycle.INITIALIZED, HWRLifecycle.CLOSED}).contains(iHWRRecognizer.lifecycle());
        }

        public static boolean needReopen(@NotNull IHWRRecognizer iHWRRecognizer, @NotNull HWRInput input) {
            Intrinsics.checkNotNullParameter(input, "input");
            HWRInput openParam = iHWRRecognizer.getOpenParam();
            return (Intrinsics.areEqual(input.getContentType(), openParam.getContentType()) && input.getIsTextEnable() == openParam.getIsTextEnable() && input.getIsGestureEnable() == openParam.getIsGestureEnable() && input.getIsShapeEnable() == openParam.getIsShapeEnable()) ? false : true;
        }
    }

    void clear();

    void close();

    void compileTextModel(@NotNull String type, @NotNull String data, @NotNull String lang);

    void destroy();

    @NotNull
    HWRConvertBean export(@NotNull HWRInput input);

    @NotNull
    Observable<HWRConvertBean> exportObservable(@NotNull HWRInput input);

    @NotNull
    String getContentType();

    @Nullable
    IHWRGestureHandler getGestureHandler();

    @NotNull
    String getLang();

    @NotNull
    HWRInput getOpenParam();

    @Nullable
    IHWRRecognizerListener getOutputListener();

    @NotNull
    HWRRecognizerType getRecognizerType();

    void init(@NotNull HWRInput input);

    boolean isIdle();

    @NotNull
    HWRLifecycle lifecycle();

    boolean needActivate();

    boolean needClear();

    boolean needClose();

    boolean needDestroy();

    boolean needDiscard();

    boolean needHandle();

    boolean needInitialize();

    boolean needOpen();

    boolean needReopen(@NotNull HWRInput input);

    @NotNull
    String[] onAddStroke(@NotNull HWRInput input);

    void onErase(@NotNull HWRInput input);

    @NotNull
    String[] onImport(@NotNull HWRInput input);

    void onPointerEvents(@NotNull HWRInput input);

    void onRedo(@NotNull HWRInput input);

    @NotNull
    String[] onReplace(@NotNull HWRInput input);

    void onTransform(@NotNull HWRInput input);

    void onUndo(@NotNull HWRInput input);

    void open(@NotNull HWRInput input);

    @NotNull
    HWRConvertBean optimize(@NotNull HWRConvertBean convertBean, @NotNull HWRInput input);

    @NotNull
    Observable<Object> waitForIdle();
}
