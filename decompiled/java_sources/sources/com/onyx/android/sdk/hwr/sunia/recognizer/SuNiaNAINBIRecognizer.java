package com.onyx.android.sdk.hwr.sunia.recognizer;

import android.content.Context;
import android.content.res.AssetManager;
import androidx.core.net.MailTo;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.hwr.data.bean.HWRConvertBean;
import com.onyx.android.sdk.hwr.data.bean.HWRInput;
import com.onyx.android.sdk.hwr.data.constant.HWRRecognizerType;
import com.onyx.android.sdk.hwr.sunia.data.bean.SuNiaNBIParamSet;
import com.onyx.android.sdk.hwr.sunia.data.bean.SuNiaParam;
import com.onyx.android.sdk.hwr.sunia.utils.SuNiaHWRUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.commonv2.bean.NAIResult;
import com.sunia.commonv2.module.CommonModule;
import com.sunia.naiv2.sdk.NAICallback;
import com.sunia.naiv2.sdk.NAIEngineManager;
import com.sunia.nbiv2.sdk.NBIAxisPath;
import com.sunia.nbiv2.sdk.NBICallbackV2;
import com.sunia.nbiv2.sdk.NBIEngineManagerV2;
import com.sunia.nbiv2.sdk.NBIParameter;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.subjects.BehaviorSubject;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.Util;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b(\u0010)J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0016J\b\u0010\t\u001a\u00020\u0004H\u0016J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\f2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u000f\u001a\u00020\u000eH\u0002R(\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\n0\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\"\u0010\u001f\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u0014\u0010#\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0014\u0010'\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&¨\u0006*"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;", "Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;", "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "input", "", "open", "createEditor", "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;", "getRecognizerType", Constants.CLEAR_ATTRIBUTES, "Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;", SyncConstant.EXPORT_DIR_NAME, "Lio/reactivex/rxjava3/core/Observable;", "exportObservable", "Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet;", "b", "Lio/reactivex/rxjava3/subjects/BehaviorSubject;", C6997f.f39671c, "Lio/reactivex/rxjava3/subjects/BehaviorSubject;", "getSubject", "()Lio/reactivex/rxjava3/subjects/BehaviorSubject;", "setSubject", "(Lio/reactivex/rxjava3/subjects/BehaviorSubject;)V", MailTo.f5529g, "", C6998g.f39679a, "I", "getMode", "()I", "setMode", "(I)V", com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_MODE, "Lcom/sunia/naiv2/sdk/NAICallback;", C6999h.f39688c, "Lcom/sunia/naiv2/sdk/NAICallback;", "naiCallback", "Lcom/sunia/nbiv2/sdk/NBICallbackV2;", "i", "Lcom/sunia/nbiv2/sdk/NBICallbackV2;", "drawNBIPathCallback", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-sunia_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSuNiaNAINBIRecognizer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuNiaNAINBIRecognizer.kt\ncom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,136:1\n1855#2,2:137\n1855#2,2:139\n*S KotlinDebug\n*F\n+ 1 SuNiaNAINBIRecognizer.kt\ncom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer\n*L\n95#1:137,2\n105#1:139,2\n*E\n"})
/* loaded from: classes7.dex */
public final class SuNiaNAINBIRecognizer extends SuNiaBaseRecognizer {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public BehaviorSubject<HWRConvertBean> subject;

    /* renamed from: g, reason: from kotlin metadata */
    public int mode;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final NAICallback naiCallback;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final NBICallbackV2 drawNBIPathCallback;

    @Inject
    public SuNiaNAINBIRecognizer() {
        BehaviorSubject<HWRConvertBean> create = BehaviorSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.subject = create;
        this.naiCallback = new NAICallback() { // from class: com.onyx.android.sdk.hwr.sunia.recognizer.SuNiaNAINBIRecognizer$naiCallback$1
            /* renamed from: a */
            public final void m33391a() {
                SuNiaNBIParamSet m33390b;
                NBICallbackV2 nBICallbackV2;
                SuNiaNBIParamSet.Companion companion = SuNiaNBIParamSet.INSTANCE;
                m33390b = SuNiaNAINBIRecognizer.this.m33390b();
                SuNiaParam itemBean = companion.getItemBean(m33390b);
                SuNiaNAINBIRecognizer.this.setMode(itemBean.getCom.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_MODE java.lang.String());
                Debug.INSTANCE.m32035d(SuNiaNAINBIRecognizer.this.getClass(), "start nai name: " + itemBean.getName() + ", mode: " + itemBean.getCom.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_MODE java.lang.String(), new Object[0]);
                NBIEngineManagerV2 nBIEngineManagerV2 = NBIEngineManagerV2.getInstance();
                Context appContext = ResManager.INSTANCE.getAppContext();
                String authorizeFile = CommonModule.getCommonModule().getAuthorizeFile();
                int intensity = itemBean.getIntensity();
                NBIParameter nBIParameter = companion.getNBIParameter(itemBean);
                nBICallbackV2 = SuNiaNAINBIRecognizer.this.drawNBIPathCallback;
                nBIEngineManagerV2.start(appContext, authorizeFile, intensity, nBIParameter, nBICallbackV2);
            }

            @Override // com.sunia.naiv2.sdk.NAICallback
            public void onError(@NotNull Exception e) {
                Intrinsics.checkNotNullParameter(e, "e");
                Debug.INSTANCE.m32045e(SuNiaNAINBIRecognizer$naiCallback$1.class, e);
            }

            @Override // com.sunia.naiv2.sdk.NAICallback
            public void onLoad() {
                m33391a();
            }
        };
        this.drawNBIPathCallback = new NBICallbackV2() { // from class: com.onyx.android.sdk.hwr.sunia.recognizer.SuNiaNAINBIRecognizer$drawNBIPathCallback$1
            @Override // com.sunia.nbiv2.sdk.NBICallbackV2
            public void onCancel() {
            }

            @Override // com.sunia.nbiv2.sdk.NBICallbackV2
            public void onDrawNBIPath(long param, @NotNull List<? extends NBIAxisPath> nbiAxisPathList, @NotNull List<? extends NBIAxisPath> nbiOutlinePathList) {
                Intrinsics.checkNotNullParameter(nbiAxisPathList, "nbiAxisPathList");
                Intrinsics.checkNotNullParameter(nbiOutlinePathList, "nbiOutlinePathList");
                Debug.INSTANCE.m32035d(SuNiaNAINBIRecognizer.this.getClass(), "nbi_time=" + (System.currentTimeMillis() - param), new Object[0]);
                HWRConvertBean hWRConvertBean = new HWRConvertBean();
                hWRConvertBean.setHwrResultPoints(SuNiaHWRUtils.INSTANCE.toHWRPointerEventList(nbiAxisPathList));
                RxjavaKt.done(SuNiaNAINBIRecognizer.this.getSubject(), hWRConvertBean);
            }

            @Override // com.sunia.nbiv2.sdk.NBICallbackV2
            public void onError(@NotNull Exception e) {
                Intrinsics.checkNotNullParameter(e, "e");
                Debug.INSTANCE.m32045e(SuNiaNAINBIRecognizer$drawNBIPathCallback$1.class, e);
                SuNiaNAINBIRecognizer.this.getSubject().onError(e);
            }

            @Override // com.sunia.nbiv2.sdk.NBICallbackV2
            public void onLoad() {
                NBIEngineManagerV2.getInstance().nbiSetOutlineOutput(true);
            }

            @Override // com.sunia.nbiv2.sdk.NBICallbackV2
            public void onProgress(int index, int total) {
            }
        };
    }

    /* renamed from: b */
    public final SuNiaNBIParamSet m33390b() {
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        HWRInput openInput = getOpenInput();
        return (SuNiaNBIParamSet) AnyKt.getOrElse((SuNiaNBIParamSet) jSONUtils.parseObject(openInput != null ? openInput.getArgJson() : null, SuNiaNBIParamSet.class), new Function0<SuNiaNBIParamSet>() { // from class: com.onyx.android.sdk.hwr.sunia.recognizer.SuNiaNAINBIRecognizer$getNaiParameterSingleBean$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SuNiaNBIParamSet invoke() {
                return new SuNiaNBIParamSet();
            }
        });
    }

    @Override // com.onyx.android.sdk.hwr.sunia.recognizer.SuNiaBaseRecognizer, com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    public void clear() {
        NAIEngineManager.getInstance().clearPoints();
    }

    @Override // com.onyx.android.sdk.hwr.sunia.recognizer.SuNiaBaseRecognizer
    public void createEditor() {
    }

    @Override // com.onyx.android.sdk.hwr.sunia.recognizer.SuNiaBaseRecognizer, com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    @NotNull
    public HWRConvertBean export(@NotNull HWRInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
        NAIEngineManager.getInstance().clearPoints();
        Debug debug = Debug.INSTANCE;
        debug.m32035d(SuNiaNAINBIRecognizer.class, "export mode: " + this.mode, new Object[0]);
        NAIResult nAIResult = NAIEngineManager.getInstance().getNAIResult(SuNiaHWRUtils.INSTANCE.toRecognizePaths(input.getPointerEvents()), this.mode);
        Intrinsics.checkNotNullExpressionValue(nAIResult, "getNAIResult(...)");
        if (nAIResult.isSuccess()) {
            NBIEngineManagerV2.getInstance().doBeautifyTransform(nAIResult, System.currentTimeMillis());
        }
        debug.m32035d(SuNiaNAINBIRecognizer.class, "export: success: " + nAIResult.isSuccess(), new Object[0]);
        return new HWRConvertBean();
    }

    @Override // com.onyx.android.sdk.hwr.sunia.recognizer.SuNiaBaseRecognizer, com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    @NotNull
    public Observable<HWRConvertBean> exportObservable(@NotNull HWRInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
        BehaviorSubject<HWRConvertBean> create = BehaviorSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.subject = create;
        export(input);
        return this.subject;
    }

    public final int getMode() {
        return this.mode;
    }

    @Override // com.onyx.android.sdk.hwr.sunia.recognizer.SuNiaBaseRecognizer, com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    @NotNull
    public HWRRecognizerType getRecognizerType() {
        return HWRRecognizerType.SUNIA_NAI_NBI;
    }

    @NotNull
    public final BehaviorSubject<HWRConvertBean> getSubject() {
        return this.subject;
    }

    @Override // com.onyx.android.sdk.hwr.sunia.recognizer.SuNiaBaseRecognizer, com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    public void open(@NotNull HWRInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
        setOpenInput(input);
        String lang = input.getLang();
        AssetManager assets = ResManager.INSTANCE.getAppContext().getAssets();
        List assetFiles$default = FileUtils.getAssetFiles$default(FileUtils.INSTANCE, "nai/strokes", "hdb", null, 4, null);
        ArrayList arrayList = new ArrayList();
        try {
            Iterator it2 = assetFiles$default.iterator();
            while (it2.hasNext()) {
                InputStream open = assets.open((String) it2.next());
                Intrinsics.checkNotNullExpressionValue(open, "open(...)");
                arrayList.add(open);
            }
            NAIEngineManager.getInstance().start(ResManager.INSTANCE.getAppContext(), CommonModule.getCommonModule().getAuthorizeFile(), "nai/conf/" + lang + '/', lang + ".conf", arrayList, this.naiCallback);
        } finally {
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                Util.closeQuietly((InputStream) it3.next());
            }
        }
    }

    public final void setMode(int i) {
        this.mode = i;
    }

    public final void setSubject(@NotNull BehaviorSubject<HWRConvertBean> behaviorSubject) {
        Intrinsics.checkNotNullParameter(behaviorSubject, "<set-?>");
        this.subject = behaviorSubject;
    }
}
