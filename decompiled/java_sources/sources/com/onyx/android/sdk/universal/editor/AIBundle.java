package com.onyx.android.sdk.universal.editor;

import android.os.Build;
import android.util.LruCache;
import com.onyx.android.sdk.base.eventbus.EventBusHolder;
import com.onyx.android.sdk.hwr.data.bundle.HWRBundle;
import com.onyx.android.sdk.hwr.service.manager.HWRRecognizerManager;
import com.onyx.android.sdk.rxgesture.pen.PenStatusBean;
import com.onyx.android.sdk.universal.editor.bean.HWRConvertContext;
import com.onyx.android.sdk.universal.editor.bean.HWRRecognizeState;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b \u0010!J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010\f\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010\r\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\b\u0010\u000f\u001a\u00020\u000eH\u0002R\u001b\u0010\u0013\u001a\u00020\u000e8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\"\u0010\u001b\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR \u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\n0\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/AIBundle;", "", "", "destroy", "", "eventTime", "", "isStrokeConverted", "removeConvertContext", "abortAndRemoveConvertContext", "Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;", "convertContext", "addConvertContext", "containsConvertContext", "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;", "a", "Lkotlin/Lazy;", "getHwrBundle", "()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;", "hwrBundle", "Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;", "b", "Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;", "getPenStatusBean", "()Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;", "setPenStatusBean", "(Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;)V", "penStatusBean", "Landroid/util/LruCache;", "c", "Landroid/util/LruCache;", "convertContextCache", Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAIBundle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AIBundle.kt\ncom/onyx/android/sdk/universal/editor/AIBundle\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,57:1\n41#2,5:58\n41#2,5:63\n41#2,5:68\n*S KotlinDebug\n*F\n+ 1 AIBundle.kt\ncom/onyx/android/sdk/universal/editor/AIBundle\n*L\n40#1:58,5\n47#1:63,5\n55#1:68,5\n*E\n"})
/* loaded from: classes8.dex */
public final class AIBundle {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Lazy hwrBundle;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public PenStatusBean penStatusBean;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final LruCache<Long, HWRConvertContext> convertContextCache;

    public AIBundle() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<HWRBundle>() { // from class: com.onyx.android.sdk.universal.editor.AIBundle$hwrBundle$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final HWRBundle invoke() {
                HWRBundle m36668a;
                m36668a = AIBundle.this.m36668a();
                return m36668a;
            }
        });
        this.hwrBundle = lazy;
        this.penStatusBean = new PenStatusBean();
        this.convertContextCache = new LruCache<>(10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final HWRBundle m36668a() {
        HWRBundle hWRBundle = new HWRBundle();
        hWRBundle.setRecognizerManager(new HWRRecognizerManager());
        hWRBundle.setEventBusHolder(new EventBusHolder(null, 1, 0 == true ? 1 : 0));
        String MODEL = Build.MODEL;
        Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
        hWRBundle.setModel(MODEL);
        String FINGERPRINT = Build.FINGERPRINT;
        Intrinsics.checkNotNullExpressionValue(FINGERPRINT, "FINGERPRINT");
        hWRBundle.setFingerprint(FINGERPRINT);
        return hWRBundle;
    }

    public final boolean abortAndRemoveConvertContext(long eventTime) {
        HWRConvertContext remove = this.convertContextCache.remove(Long.valueOf(eventTime));
        if (remove != null) {
            remove.setRecognizeState(HWRRecognizeState.IGNORED);
        } else {
            remove = null;
        }
        return remove != null;
    }

    public final void addConvertContext(long eventTime, @NotNull HWRConvertContext convertContext) {
        Intrinsics.checkNotNullParameter(convertContext, "convertContext");
        this.convertContextCache.put(Long.valueOf(eventTime), convertContext);
    }

    public final boolean containsConvertContext(long eventTime) {
        return this.convertContextCache.get(Long.valueOf(eventTime)) != null;
    }

    public final void destroy() {
        getHwrBundle().destroy();
        this.convertContextCache.evictAll();
    }

    @NotNull
    public final HWRBundle getHwrBundle() {
        return (HWRBundle) this.hwrBundle.getValue();
    }

    @NotNull
    public final PenStatusBean getPenStatusBean() {
        return this.penStatusBean;
    }

    public final boolean isStrokeConverted(long eventTime) {
        HWRConvertContext hWRConvertContext = this.convertContextCache.get(Long.valueOf(eventTime));
        return hWRConvertContext != null && hWRConvertContext.getRecognizeState() == HWRRecognizeState.SUCCESS;
    }

    public final boolean removeConvertContext(long eventTime) {
        return this.convertContextCache.remove(Long.valueOf(eventTime)) != null;
    }

    public final void setPenStatusBean(@NotNull PenStatusBean penStatusBean) {
        Intrinsics.checkNotNullParameter(penStatusBean, "<set-?>");
        this.penStatusBean = penStatusBean;
    }
}
