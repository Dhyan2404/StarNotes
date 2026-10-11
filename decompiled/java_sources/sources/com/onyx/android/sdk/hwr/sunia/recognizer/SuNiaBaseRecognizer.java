package com.onyx.android.sdk.hwr.sunia.recognizer;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.onyx.android.sdk.auth.UserConfig;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.LogFileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.hwr.data.bean.HWRConvertBean;
import com.onyx.android.sdk.hwr.data.bean.HWRException;
import com.onyx.android.sdk.hwr.data.bean.HWRInput;
import com.onyx.android.sdk.hwr.data.constant.HWRLifecycle;
import com.onyx.android.sdk.hwr.data.constant.HWRRecognizerType;
import com.onyx.android.sdk.hwr.service.handler.IHWRGestureHandler;
import com.onyx.android.sdk.hwr.service.listener.IHWRRecognizerListener;
import com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer;
import com.onyx.android.sdk.hwr.utils.HWRLangUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.sdk.Engine;
import com.sunia.HTREnginev2.sdk.EngineAuthenticateCallback;
import com.sunia.HTREnginev2.sdk.Params;
import com.sunia.HTREnginev2.sdk.editor.Editor;
import com.sunia.commonv2.auth.HWRURLType;
import com.sunia.commonv2.hwr.p057v2.HWRHelperV2;
import com.sunia.commonv2.module.CommonModule;
import com.sunia.commonv2.module.ICommonModule;
import io.reactivex.rxjava3.core.Observable;
import java.util.concurrent.CompletableFuture;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.EnumUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0011\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bS\u0010TJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\t\u001a\u00020\u0006H\u0016J\b\u0010\n\u001a\u00020\u0006H\u0016J\b\u0010\u000b\u001a\u00020\u0006H\u0016J\b\u0010\f\u001a\u00020\u0006H\u0016J\b\u0010\u000e\u001a\u00020\rH\u0016J\b\u0010\u000f\u001a\u00020\u0004H\u0016J\u000e\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0016J\b\u0010\u0014\u001a\u00020\u0013H\u0016J\b\u0010\u0016\u001a\u00020\u0015H\u0016J\b\u0010\u0017\u001a\u00020\u0015H\u0016J\u0010\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u001d\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00150\u00192\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u001d\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00150\u00192\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001c\u0010\u001bJ\u0010\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u001d\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00150\u00192\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001e\u0010\u001bJ\u0010\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010 \u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010!\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010#\u001a\u00020\"2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010%\u001a\u00020\"2\u0006\u0010$\u001a\u00020\"2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J \u0010)\u001a\u00020\u00062\u0006\u0010&\u001a\u00020\u00152\u0006\u0010'\u001a\u00020\u00152\u0006\u0010(\u001a\u00020\u0015H\u0016J\n\u0010+\u001a\u0004\u0018\u00010*H\u0016J\n\u0010-\u001a\u0004\u0018\u00010,H\u0016J\b\u0010.\u001a\u00020\u0002H\u0016R\"\u0010\u000e\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103R$\u0010;\u001a\u0004\u0018\u0001048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b5\u00106\u001a\u0004\b7\u00108\"\u0004\b9\u0010:R$\u0010C\u001a\u0004\u0018\u00010<8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@\"\u0004\bA\u0010BR$\u0010K\u001a\u0004\u0018\u00010D8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bE\u0010F\u001a\u0004\bG\u0010H\"\u0004\bI\u0010JR$\u0010R\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bL\u0010M\u001a\u0004\bN\u0010O\"\u0004\bP\u0010Q¨\u0006U"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;", "Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;", "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "input", "", "a", "", "init", "open", "createEditor", Constants.CLEAR_ATTRIBUTES, "close", "destroy", "Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;", RequestParameters.SUBRESOURCE_LIFECYCLE, "isIdle", "Lio/reactivex/rxjava3/core/Observable;", "", "waitForIdle", "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;", "getRecognizerType", "", "getContentType", "getLang", "onPointerEvents", "", "onImport", "(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)[Ljava/lang/String;", "onAddStroke", "onErase", "onReplace", "onTransform", "onUndo", "onRedo", "Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;", SyncConstant.EXPORT_DIR_NAME, "convertBean", "optimize", "type", "data", "lang", "compileTextModel", "Lcom/onyx/android/sdk/hwr/service/listener/IHWRRecognizerListener;", "getOutputListener", "Lcom/onyx/android/sdk/hwr/service/handler/IHWRGestureHandler;", "getGestureHandler", "getOpenParam", "Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;", "getLifecycle", "()Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;", "setLifecycle", "(Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;)V", "Lcom/sunia/HTREnginev2/sdk/Engine;", "b", "Lcom/sunia/HTREnginev2/sdk/Engine;", "getEngine", "()Lcom/sunia/HTREnginev2/sdk/Engine;", "setEngine", "(Lcom/sunia/HTREnginev2/sdk/Engine;)V", "engine", "Lcom/sunia/HTREnginev2/sdk/editor/Editor;", "c", "Lcom/sunia/HTREnginev2/sdk/editor/Editor;", "getEditor", "()Lcom/sunia/HTREnginev2/sdk/editor/Editor;", "setEditor", "(Lcom/sunia/HTREnginev2/sdk/editor/Editor;)V", "editor", "Lcom/sunia/HTREnginev2/sdk/Params;", "d", "Lcom/sunia/HTREnginev2/sdk/Params;", "getParams", "()Lcom/sunia/HTREnginev2/sdk/Params;", "setParams", "(Lcom/sunia/HTREnginev2/sdk/Params;)V", "params", "e", "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "getOpenInput", "()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "setOpenInput", "(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V", "openInput", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-sunia_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSuNiaBaseRecognizer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuNiaBaseRecognizer.kt\ncom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer\n+ 2 HWRException.kt\ncom/onyx/android/sdk/hwr/data/bean/HWRException$Companion\n*L\n1#1,210:1\n49#2:211\n49#2:212\n49#2:213\n*S KotlinDebug\n*F\n+ 1 SuNiaBaseRecognizer.kt\ncom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer\n*L\n45#1:211\n48#1:212\n51#1:213\n*E\n"})
/* loaded from: classes7.dex */
public class SuNiaBaseRecognizer implements IHWRRecognizer {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public HWRLifecycle lifecycle = HWRLifecycle.CREATED;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public Engine engine;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public Editor editor;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public Params params;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public HWRInput openInput;

    /* renamed from: a */
    public final boolean m33389a(HWRInput input) {
        String lang = input.getLang();
        HWRInput hWRInput = this.openInput;
        return Intrinsics.areEqual(lang, hWRInput != null ? hWRInput.getLang() : null);
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    public void clear() {
        Editor editor = this.editor;
        if (editor != null) {
            editor.clearContent();
        }
        this.lifecycle = HWRLifecycle.CLEARED;
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    public void close() {
        Editor editor = this.editor;
        if (editor != null) {
            editor.close();
        }
        this.editor = null;
        this.lifecycle = HWRLifecycle.CLOSED;
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    public void compileTextModel(@NotNull String type, @NotNull String data, @NotNull String lang) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(lang, "lang");
    }

    public void createEditor() {
        Params createInstance = Params.createInstance();
        this.params = createInstance;
        Engine engine = this.engine;
        this.editor = engine != null ? engine.createEditor(createInstance) : null;
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    public void destroy() {
        close();
        Engine engine = this.engine;
        if (engine != null) {
            engine.release();
        }
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    @NotNull
    public HWRConvertBean export(@NotNull HWRInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
        return new HWRConvertBean();
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    @NotNull
    public Observable<HWRConvertBean> exportObservable(@NotNull HWRInput hWRInput) {
        return IHWRRecognizer.DefaultImpls.exportObservable(this, hWRInput);
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    @NotNull
    public String getContentType() {
        return "";
    }

    @Nullable
    public final Editor getEditor() {
        return this.editor;
    }

    @Nullable
    public final Engine getEngine() {
        return this.engine;
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    @Nullable
    public IHWRGestureHandler getGestureHandler() {
        return null;
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    @NotNull
    public String getLang() {
        String lang;
        HWRInput hWRInput = this.openInput;
        return (hWRInput == null || (lang = hWRInput.getLang()) == null) ? HWRLangUtils.INSTANCE.getDefaultHWRLang() : lang;
    }

    @NotNull
    public final HWRLifecycle getLifecycle() {
        return this.lifecycle;
    }

    @Nullable
    public final HWRInput getOpenInput() {
        return this.openInput;
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    @NotNull
    public HWRInput getOpenParam() {
        return new HWRInput();
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    @Nullable
    public IHWRRecognizerListener getOutputListener() {
        return null;
    }

    @Nullable
    public final Params getParams() {
        return this.params;
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    @NotNull
    public HWRRecognizerType getRecognizerType() {
        return HWRRecognizerType.SUNIA;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    public void init(@NotNull final HWRInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
        if (input.getUserOpenId().length() == 0) {
            throw HWRException.INSTANCE.m33354of(HWRException.ExceptionType.RECOGNIZER_INIT_FAIL, "uid is required");
        }
        if (input.getAppId().length() == 0) {
            throw HWRException.INSTANCE.m33354of(HWRException.ExceptionType.RECOGNIZER_INIT_FAIL, "appId is required");
        }
        if (input.getProductKey().length() == 0) {
            throw HWRException.INSTANCE.m33354of(HWRException.ExceptionType.RECOGNIZER_INIT_FAIL, "productKey is required");
        }
        UserConfig.singleton().setUserId(input.getUserOpenId());
        CommonModule.attachBaseContext(ResManager.INSTANCE.getAppContext(), new ICommonModule() { // from class: com.onyx.android.sdk.hwr.sunia.recognizer.SuNiaBaseRecognizer$init$1
            @Override // com.sunia.commonv2.module.ICommonModule
            public int getAndroidLogLevel() {
                return Debug.INSTANCE.getDebug() ? 3 : 6;
            }

            @Override // com.sunia.commonv2.module.ICommonModule
            @NotNull
            public String getAppId() {
                return HWRInput.this.getAppId();
            }

            @Override // com.sunia.commonv2.module.ICommonModule
            @NotNull
            public String getPublicKey() {
                return HWRInput.this.getProductKey();
            }
        });
        final HWRURLType hWRURLType = (HWRURLType) EnumUtils.getEnum(HWRURLType.class, input.getActivateServer());
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = "";
        final CompletableFuture completableFuture = new CompletableFuture();
        HWRHelperV2.authorizeAndCreateEngine(input.getAppId(), input.getProductKey(), (HWRURLType) AnyKt.getOrElse(hWRURLType, new Function0<HWRURLType>() { // from class: com.onyx.android.sdk.hwr.sunia.recognizer.SuNiaBaseRecognizer$init$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final HWRURLType invoke() {
                return HWRURLType.PROD;
            }
        }), new EngineAuthenticateCallback() { // from class: com.onyx.android.sdk.hwr.sunia.recognizer.SuNiaBaseRecognizer$init$callback$1
            /* JADX WARN: Type inference failed for: r5v2, types: [T, java.lang.String] */
            @Override // com.sunia.HTREnginev2.sdk.EngineAuthenticateCallback
            public void onError(@NotNull Exception e, @Nullable String p1) {
                Intrinsics.checkNotNullParameter(e, "e");
                Ref.ObjectRef<String> objectRef2 = objectRef;
                StringBuilder sb = new StringBuilder();
                sb.append(p1 == null ? "" : p1);
                sb.append(' ');
                String message = e.getMessage();
                sb.append(message != null ? message : "");
                objectRef2.element = sb.toString();
                completableFuture.complete(-1);
                Debug.INSTANCE.m32038d("SuNiaBaseRecognizer.onError", "errorType=" + p1 + " errorMessage=" + objectRef.element, new Object[0]);
            }

            @Override // com.sunia.HTREnginev2.sdk.EngineAuthenticateCallback
            public void onSuccess(@NotNull Engine engine, @Nullable String p1, @Nullable String p2) {
                Intrinsics.checkNotNullParameter(engine, "engine");
                SuNiaBaseRecognizer.this.setEngine(engine);
                completableFuture.complete(0);
                Debug.INSTANCE.m32038d("SuNiaBaseRecognizer.onSuccess", "urlType=" + hWRURLType + " authorizeType=" + p2, new Object[0]);
            }
        });
        Integer num = (Integer) completableFuture.get();
        if (num != null && num.intValue() == -1) {
            LogFileUtils.INSTANCE.m32102e(getClass(), (String) objectRef.element);
            throw HWRException.INSTANCE.m33354of(HWRException.ExceptionType.RECOGNIZER_INIT_FAIL, (String) objectRef.element);
        }
        this.lifecycle = HWRLifecycle.INITIALIZED;
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    public boolean isIdle() {
        Editor editor = this.editor;
        return editor != null && editor.isIdle();
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
        return new String[0];
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    public void onErase(@NotNull HWRInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    @NotNull
    public String[] onImport(@NotNull HWRInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
        return new String[0];
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    public void onPointerEvents(@NotNull HWRInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    public void onRedo(@NotNull HWRInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    @NotNull
    public String[] onReplace(@NotNull HWRInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
        return new String[0];
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    public void onTransform(@NotNull HWRInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    public void onUndo(@NotNull HWRInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    public void open(@NotNull HWRInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
        if (this.lifecycle.compareTo(HWRLifecycle.INITIALIZED) > 0 && this.lifecycle.compareTo(HWRLifecycle.CLOSED) < 0) {
            if (m33389a(input)) {
                return;
            } else {
                close();
            }
        }
        this.openInput = input;
        if (this.editor == null) {
            createEditor();
        }
        this.lifecycle = HWRLifecycle.OPENED;
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    @NotNull
    public HWRConvertBean optimize(@NotNull HWRConvertBean convertBean, @NotNull HWRInput input) {
        Intrinsics.checkNotNullParameter(convertBean, "convertBean");
        Intrinsics.checkNotNullParameter(input, "input");
        return new HWRConvertBean();
    }

    public final void setEditor(@Nullable Editor editor) {
        this.editor = editor;
    }

    public final void setEngine(@Nullable Engine engine) {
        this.engine = engine;
    }

    public final void setLifecycle(@NotNull HWRLifecycle hWRLifecycle) {
        Intrinsics.checkNotNullParameter(hWRLifecycle, "<set-?>");
        this.lifecycle = hWRLifecycle;
    }

    public final void setOpenInput(@Nullable HWRInput hWRInput) {
        this.openInput = hWRInput;
    }

    public final void setParams(@Nullable Params params) {
        this.params = params;
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    @NotNull
    public Observable<Object> waitForIdle() {
        Observable<Object> just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }
}
