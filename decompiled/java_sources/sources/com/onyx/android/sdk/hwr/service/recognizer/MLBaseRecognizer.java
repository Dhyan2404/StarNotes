package com.onyx.android.sdk.hwr.service.recognizer;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.google.mlkit.vision.digitalink.DigitalInkRecognitionModel;
import com.google.mlkit.vision.digitalink.DigitalInkRecognizer;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.geometry.extractor.GeometryArgsExtractorFactory;
import com.onyx.android.sdk.hwr.data.bean.HWRCandidate;
import com.onyx.android.sdk.hwr.data.bean.HWRConvertBean;
import com.onyx.android.sdk.hwr.data.bean.HWRException;
import com.onyx.android.sdk.hwr.data.bean.HWRInput;
import com.onyx.android.sdk.hwr.data.bean.HWRPointerEvent;
import com.onyx.android.sdk.hwr.data.constant.HWRLifecycle;
import com.onyx.android.sdk.hwr.data.constant.HWRRecognizerType;
import com.onyx.android.sdk.hwr.data.constant.HWRValues;
import com.onyx.android.sdk.hwr.service.handler.IHWRGestureHandler;
import com.onyx.android.sdk.hwr.service.listener.IHWRRecognizerListener;
import com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer;
import com.onyx.android.sdk.hwr.utils.HWRDataUtils;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.subjects.PublishSubject;
import io.reactivex.rxjava3.subjects.Subject;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0011\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b`\u0010aJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&J\b\u0010\u0007\u001a\u00020\u0004H\u0016J\b\u0010\b\u001a\u00020\u0004H&J\b\u0010\t\u001a\u00020\u0004H\u0016J\b\u0010\u000b\u001a\u00020\nH\u0016J\b\u0010\r\u001a\u00020\fH\u0016J\u000e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0016J\b\u0010\u0012\u001a\u00020\u0011H\u0016J\b\u0010\u0014\u001a\u00020\u0013H\u0016J\b\u0010\u0015\u001a\u00020\u0013H\u0016J\u001d\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00130\u00162\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u001d\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00130\u00162\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001c\u0010\u0018J\u0010\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u001d\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00130\u00162\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001e\u0010\u0018J\u0010\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010!\u001a\u00020 2\u0006\u0010\u0003\u001a\u00020\u0002H&J\u0018\u0010#\u001a\u00020 2\u0006\u0010\"\u001a\u00020 2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J \u0010'\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u00132\u0006\u0010%\u001a\u00020\u00132\u0006\u0010&\u001a\u00020\u0013H\u0016J\n\u0010)\u001a\u0004\u0018\u00010(H\u0016J\n\u0010+\u001a\u0004\u0018\u00010*H\u0016J\b\u0010,\u001a\u00020\u0002H\u0016J&\u00103\u001a\u0002022\u0006\u0010-\u001a\u00020\u00132\u0006\u0010.\u001a\u00020\u00132\f\u00101\u001a\b\u0012\u0004\u0012\u0002000/H\u0004R\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b4\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\"\u0010;\u001a\u00020:8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R\"\u0010B\u001a\u00020A8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bB\u0010C\u001a\u0004\bD\u0010E\"\u0004\bF\u0010GR\"\u0010H\u001a\u00020\u00028\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bH\u0010I\u001a\u0004\bJ\u0010K\"\u0004\bL\u0010MR\"\u0010N\u001a\u00020\u00028\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bN\u0010I\u001a\u0004\bO\u0010K\"\u0004\bP\u0010MR(\u0010X\u001a\b\u0012\u0004\u0012\u00020\u000f0Q8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bR\u0010S\u001a\u0004\bT\u0010U\"\u0004\bV\u0010WR\"\u0010_\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bY\u0010Z\u001a\u0004\b[\u0010\\\"\u0004\b]\u0010^¨\u0006b"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;", "Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;", "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "input", "", "init", "open", Constants.CLEAR_ATTRIBUTES, "close", "destroy", "Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;", RequestParameters.SUBRESOURCE_LIFECYCLE, "", "isIdle", "Lio/reactivex/rxjava3/core/Observable;", "", "waitForIdle", "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;", "getRecognizerType", "", "getContentType", "getLang", "", "onImport", "(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)[Ljava/lang/String;", "onPointerEvents", "onUndo", "onRedo", "onAddStroke", "onErase", "onReplace", "onTransform", "Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;", SyncConstant.EXPORT_DIR_NAME, "convertBean", "optimize", "type", "data", "lang", "compileTextModel", "Lcom/onyx/android/sdk/hwr/service/listener/IHWRRecognizerListener;", "getOutputListener", "Lcom/onyx/android/sdk/hwr/service/handler/IHWRGestureHandler;", "getGestureHandler", "getOpenParam", CouchFieldKey.KEY_CONTENT_TYPE, "candidate", "", "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;", "pointerEvents", "Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;", "candidateToCandidate", "a", "Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;", "getLifecycle", "()Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;", "setLifecycle", "(Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;)V", "Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;", "model", "Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;", "getModel", "()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;", "setModel", "(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)V", "Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;", "recognizer", "Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;", "getRecognizer", "()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;", "setRecognizer", "(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;)V", "initInput", "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "getInitInput", "()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "setInitInput", "(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V", "openInput", "getOpenInput", "setOpenInput", "Lio/reactivex/rxjava3/subjects/Subject;", "b", "Lio/reactivex/rxjava3/subjects/Subject;", "getIdleStatePublishObservable", "()Lio/reactivex/rxjava3/subjects/Subject;", "setIdleStatePublishObservable", "(Lio/reactivex/rxjava3/subjects/Subject;)V", "idleStatePublishObservable", "c", Constants.HASIDCALL_INDEX_SIG, "getIdle", Constants.BOOLEAN_VALUE_SIG, "setIdle", "(Z)V", "idle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public abstract class MLBaseRecognizer implements IHWRRecognizer {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public HWRLifecycle lifecycle = HWRLifecycle.CREATED;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public Subject<Object> idleStatePublishObservable;

    /* renamed from: c, reason: from kotlin metadata */
    public boolean idle;
    public HWRInput initInput;
    public DigitalInkRecognitionModel model;
    public HWRInput openInput;
    public DigitalInkRecognizer recognizer;

    public MLBaseRecognizer() {
        PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.idleStatePublishObservable = create;
        this.idle = true;
    }

    @NotNull
    public final HWRCandidate candidateToCandidate(@NotNull String contentType, @NotNull String candidate, @NotNull List<HWRPointerEvent> pointerEvents) {
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        Intrinsics.checkNotNullParameter(candidate, "candidate");
        Intrinsics.checkNotNullParameter(pointerEvents, "pointerEvents");
        if (Intrinsics.areEqual(contentType, "Text")) {
            return HWRCandidate.INSTANCE.text(candidate);
        }
        if (!Intrinsics.areEqual(contentType, HWRValues.PART_TYPE_SHAPE)) {
            return Intrinsics.areEqual(contentType, HWRValues.PART_TYPE_GESTURE) ? HWRCandidate.INSTANCE.gesture(candidate) : HWRCandidate.INSTANCE.other(contentType, candidate);
        }
        HWRCandidate shape = HWRCandidate.INSTANCE.shape(candidate);
        shape.setShapeArgs(GeometryArgsExtractorFactory.INSTANCE.create(candidate).extractArgs(HWRDataUtils.INSTANCE.toTouchPointList(pointerEvents)));
        return shape;
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    public void clear() {
        this.lifecycle = HWRLifecycle.CLEARED;
        this.idleStatePublishObservable.onComplete();
        PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.idleStatePublishObservable = create;
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    public abstract void close();

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    public void compileTextModel(@NotNull String type, @NotNull String data, @NotNull String lang) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(lang, "lang");
        throw HWRException.INSTANCE.m33355of(OcrValues.ERROR_UNSUPPORTED_OPERATION);
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    public void destroy() {
        if (this.lifecycle != HWRLifecycle.CLOSED) {
            close();
        }
        this.lifecycle = HWRLifecycle.DESTROYED;
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    @NotNull
    public abstract HWRConvertBean export(@NotNull HWRInput input);

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    @NotNull
    public Observable<HWRConvertBean> exportObservable(@NotNull HWRInput hWRInput) {
        return IHWRRecognizer.DefaultImpls.exportObservable(this, hWRInput);
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    @NotNull
    public String getContentType() {
        return getOpenInput().getContentType();
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    @Nullable
    public IHWRGestureHandler getGestureHandler() {
        return null;
    }

    public final boolean getIdle() {
        return this.idle;
    }

    @NotNull
    public final Subject<Object> getIdleStatePublishObservable() {
        return this.idleStatePublishObservable;
    }

    @NotNull
    public final HWRInput getInitInput() {
        HWRInput hWRInput = this.initInput;
        if (hWRInput != null) {
            return hWRInput;
        }
        Intrinsics.throwUninitializedPropertyAccessException("initInput");
        return null;
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    @NotNull
    public String getLang() {
        return getOpenInput().getLang();
    }

    @NotNull
    public final HWRLifecycle getLifecycle() {
        return this.lifecycle;
    }

    @NotNull
    public final DigitalInkRecognitionModel getModel() {
        DigitalInkRecognitionModel digitalInkRecognitionModel = this.model;
        if (digitalInkRecognitionModel != null) {
            return digitalInkRecognitionModel;
        }
        Intrinsics.throwUninitializedPropertyAccessException("model");
        return null;
    }

    @NotNull
    public final HWRInput getOpenInput() {
        HWRInput hWRInput = this.openInput;
        if (hWRInput != null) {
            return hWRInput;
        }
        Intrinsics.throwUninitializedPropertyAccessException("openInput");
        return null;
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    @NotNull
    public HWRInput getOpenParam() {
        return getOpenInput();
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    @Nullable
    public IHWRRecognizerListener getOutputListener() {
        return null;
    }

    @NotNull
    public final DigitalInkRecognizer getRecognizer() {
        DigitalInkRecognizer digitalInkRecognizer = this.recognizer;
        if (digitalInkRecognizer != null) {
            return digitalInkRecognizer;
        }
        Intrinsics.throwUninitializedPropertyAccessException("recognizer");
        return null;
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    @NotNull
    public HWRRecognizerType getRecognizerType() {
        return HWRRecognizerType.f42543ML;
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    public void init(@NotNull HWRInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
        setInitInput(input);
        this.lifecycle = HWRLifecycle.INITIALIZED;
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    public boolean isIdle() {
        return this.idle;
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    @NotNull
    public HWRLifecycle lifecycle() {
        return this.lifecycle;
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    public boolean needActivate() {
        return IHWRRecognizer.DefaultImpls.needActivate(this);
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    public boolean needClear() {
        return IHWRRecognizer.DefaultImpls.needClear(this);
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    public boolean needClose() {
        return IHWRRecognizer.DefaultImpls.needClose(this);
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    public boolean needDestroy() {
        return IHWRRecognizer.DefaultImpls.needDestroy(this);
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    public boolean needDiscard() {
        return IHWRRecognizer.DefaultImpls.needDiscard(this);
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    public boolean needHandle() {
        return IHWRRecognizer.DefaultImpls.needHandle(this);
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    public boolean needInitialize() {
        return IHWRRecognizer.DefaultImpls.needInitialize(this);
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    public boolean needOpen() {
        return IHWRRecognizer.DefaultImpls.needOpen(this);
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    public boolean needReopen(@NotNull HWRInput hWRInput) {
        return IHWRRecognizer.DefaultImpls.needReopen(this, hWRInput);
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    @NotNull
    public String[] onAddStroke(@NotNull HWRInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
        throw HWRException.INSTANCE.m33355of(OcrValues.ERROR_UNSUPPORTED_OPERATION);
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    public void onErase(@NotNull HWRInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
        throw HWRException.INSTANCE.m33355of(OcrValues.ERROR_UNSUPPORTED_OPERATION);
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    @NotNull
    public String[] onImport(@NotNull HWRInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
        throw HWRException.INSTANCE.m33355of(OcrValues.ERROR_UNSUPPORTED_OPERATION);
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    public void onPointerEvents(@NotNull HWRInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
        throw HWRException.INSTANCE.m33355of(OcrValues.ERROR_UNSUPPORTED_OPERATION);
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    public void onRedo(@NotNull HWRInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
        throw HWRException.INSTANCE.m33355of(OcrValues.ERROR_UNSUPPORTED_OPERATION);
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    @NotNull
    public String[] onReplace(@NotNull HWRInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
        throw HWRException.INSTANCE.m33355of(OcrValues.ERROR_UNSUPPORTED_OPERATION);
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    public void onTransform(@NotNull HWRInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
        throw HWRException.INSTANCE.m33355of(OcrValues.ERROR_UNSUPPORTED_OPERATION);
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    public void onUndo(@NotNull HWRInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
        throw HWRException.INSTANCE.m33355of(OcrValues.ERROR_UNSUPPORTED_OPERATION);
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    public abstract void open(@NotNull HWRInput input);

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    @NotNull
    public HWRConvertBean optimize(@NotNull HWRConvertBean convertBean, @NotNull HWRInput input) {
        Intrinsics.checkNotNullParameter(convertBean, "convertBean");
        Intrinsics.checkNotNullParameter(input, "input");
        return convertBean;
    }

    public final void setIdle(boolean z) {
        this.idle = z;
    }

    public final void setIdleStatePublishObservable(@NotNull Subject<Object> subject) {
        Intrinsics.checkNotNullParameter(subject, "<set-?>");
        this.idleStatePublishObservable = subject;
    }

    public final void setInitInput(@NotNull HWRInput hWRInput) {
        Intrinsics.checkNotNullParameter(hWRInput, "<set-?>");
        this.initInput = hWRInput;
    }

    public final void setLifecycle(@NotNull HWRLifecycle hWRLifecycle) {
        Intrinsics.checkNotNullParameter(hWRLifecycle, "<set-?>");
        this.lifecycle = hWRLifecycle;
    }

    public final void setModel(@NotNull DigitalInkRecognitionModel digitalInkRecognitionModel) {
        Intrinsics.checkNotNullParameter(digitalInkRecognitionModel, "<set-?>");
        this.model = digitalInkRecognitionModel;
    }

    public final void setOpenInput(@NotNull HWRInput hWRInput) {
        Intrinsics.checkNotNullParameter(hWRInput, "<set-?>");
        this.openInput = hWRInput;
    }

    public final void setRecognizer(@NotNull DigitalInkRecognizer digitalInkRecognizer) {
        Intrinsics.checkNotNullParameter(digitalInkRecognizer, "<set-?>");
        this.recognizer = digitalInkRecognizer;
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    @NotNull
    public Observable<Object> waitForIdle() {
        if (!this.idle) {
            return this.idleStatePublishObservable;
        }
        Observable<Object> just = Observable.just("Already in Idle State");
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }
}
