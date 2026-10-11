package com.onyx.android.sdk.hwr.data.bean;

import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Build;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.hwr.data.constant.HWRCommand;
import com.onyx.android.sdk.hwr.data.constant.HWRRecognizerType;
import com.onyx.android.sdk.hwr.data.constant.MyCertificate;
import com.onyx.android.sdk.hwr.utils.HWRLangUtils;
import com.onyx.android.sdk.hwr.utils.HWRMmkvUtils;
import com.onyx.android.sdk.hwr.utils.HWRTransform;
import com.onyx.android.sdk.neohwr.layout.SourcePointGroup;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.sod;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0012\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0007\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b'\n\u0002\u0010!\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 ¢\u00012\u00020\u0001:\u0002¢\u0001B\t¢\u0006\u0006\b \u0001\u0010¡\u0001J\u0006\u0010\u0002\u001a\u00020\u0000R$\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\"\u0010\u0012\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\"\u0010\u001a\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\"\u0010\"\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\"\u0010&\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010\u0015\u001a\u0004\b$\u0010\u0017\"\u0004\b%\u0010\u0019R\"\u0010*\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010\u0015\u001a\u0004\b(\u0010\u0017\"\u0004\b)\u0010\u0019R\"\u00102\u001a\u00020+8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\"\u0010:\u001a\u0002038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b4\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\"\u0010>\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b;\u0010\u0015\u001a\u0004\b<\u0010\u0017\"\u0004\b=\u0010\u0019R\"\u0010F\u001a\u00020?8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b@\u0010A\u001a\u0004\bB\u0010C\"\u0004\bD\u0010ER\"\u0010J\u001a\u00020?8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bG\u0010A\u001a\u0004\bH\u0010C\"\u0004\bI\u0010ER\"\u0010N\u001a\u00020?8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bK\u0010A\u001a\u0004\bL\u0010C\"\u0004\bM\u0010ER\"\u0010R\u001a\u00020?8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bO\u0010A\u001a\u0004\bP\u0010C\"\u0004\bQ\u0010ER\"\u0010Z\u001a\u00020S8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bT\u0010U\u001a\u0004\bV\u0010W\"\u0004\bX\u0010YR\"\u0010b\u001a\u00020[8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\\\u0010]\u001a\u0004\b^\u0010_\"\u0004\b`\u0010aR\"\u0010d\u001a\u00020+8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bc\u0010-\u001a\u0004\bd\u0010/\"\u0004\be\u00101R\"\u0010g\u001a\u00020+8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bf\u0010-\u001a\u0004\bg\u0010/\"\u0004\bh\u00101R\"\u0010j\u001a\u00020+8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bi\u0010-\u001a\u0004\bj\u0010/\"\u0004\bk\u00101R\"\u0010m\u001a\u00020+8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bl\u0010-\u001a\u0004\bm\u0010/\"\u0004\bn\u00101R\"\u0010r\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bo\u0010\u0015\u001a\u0004\bp\u0010\u0017\"\u0004\bq\u0010\u0019R\"\u0010v\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bs\u0010\u0015\u001a\u0004\bt\u0010\u0017\"\u0004\bu\u0010\u0019R\"\u0010z\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bw\u0010\u0015\u001a\u0004\bx\u0010\u0017\"\u0004\by\u0010\u0019R\"\u0010~\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b{\u0010\u0015\u001a\u0004\b|\u0010\u0017\"\u0004\b}\u0010\u0019R%\u0010\u0082\u0001\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b\u007f\u0010\u0015\u001a\u0005\b\u0080\u0001\u0010\u0017\"\u0005\b\u0081\u0001\u0010\u0019R#\u0010\u0088\u0001\u001a\t\u0012\u0004\u0012\u00020\u00130\u0083\u00018\u0006¢\u0006\u0010\n\u0006\b\u0084\u0001\u0010\u0085\u0001\u001a\u0006\b\u0086\u0001\u0010\u0087\u0001R#\u0010\u008b\u0001\u001a\t\u0012\u0004\u0012\u00020\u00130\u0083\u00018\u0006¢\u0006\u0010\n\u0006\b\u0089\u0001\u0010\u0085\u0001\u001a\u0006\b\u008a\u0001\u0010\u0087\u0001R$\u0010\u008f\u0001\u001a\n\u0012\u0005\u0012\u00030\u008c\u00010\u0083\u00018\u0006¢\u0006\u0010\n\u0006\b\u008d\u0001\u0010\u0085\u0001\u001a\u0006\b\u008e\u0001\u0010\u0087\u0001R\u001d\u0010\u0095\u0001\u001a\u00030\u0090\u00018\u0006¢\u0006\u0010\n\u0006\b\u0091\u0001\u0010\u0092\u0001\u001a\u0006\b\u0093\u0001\u0010\u0094\u0001R0\u0010\u009a\u0001\u001a\t\u0012\u0004\u0012\u00020\u00130\u0083\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u0096\u0001\u0010\u0085\u0001\u001a\u0006\b\u0097\u0001\u0010\u0087\u0001\"\u0006\b\u0098\u0001\u0010\u0099\u0001R1\u0010\u009f\u0001\u001a\n\u0012\u0005\u0012\u00030\u009b\u00010\u0083\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u009c\u0001\u0010\u0085\u0001\u001a\u0006\b\u009d\u0001\u0010\u0087\u0001\"\u0006\b\u009e\u0001\u0010\u0099\u0001¨\u0006£\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "", "copy", "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "a", "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "getClusterInfo", "()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "setClusterInfo", "(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)V", "clusterInfo", "", "b", "[B", "getCertificate", "()[B", "setCertificate", "([B)V", "certificate", "", "c", Constants.STRING_SIG, "getFingerprint", "()Ljava/lang/String;", "setFingerprint", "(Ljava/lang/String;)V", sod.f84348A, "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;", "d", "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;", "getRecognizerType", "()Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;", "setRecognizerType", "(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)V", "recognizerType", "e", "getContentType", "setContentType", CouchFieldKey.KEY_CONTENT_TYPE, C6997f.f39671c, "getLang", "setLang", "lang", "", C6998g.f39679a, Constants.HASIDCALL_INDEX_SIG, "getResetRecognizer", Constants.BOOLEAN_VALUE_SIG, "setResetRecognizer", "(Z)V", "resetRecognizer", "Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;", C6999h.f39688c, "Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;", "getCommand", "()Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;", "setCommand", "(Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;)V", "command", "i", "getPreContext", "setPreContext", "preContext", "", "j", "F", "getViewWidth", "()F", "setViewWidth", "(F)V", "viewWidth", C4921e.f26537n, "getViewHeight", "setViewHeight", "viewHeight", "l", "getOffsetX", "setOffsetX", "offsetX", "m", "getOffsetY", "setOffsetY", "offsetY", "Landroid/graphics/RectF;", GoogleApiAvailabilityLight.f29016b, "Landroid/graphics/RectF;", "getRegion", "()Landroid/graphics/RectF;", "setRegion", "(Landroid/graphics/RectF;)V", "region", "Landroid/graphics/Matrix;", C4921e.f26528e, "Landroid/graphics/Matrix;", "getPointMatrix", "()Landroid/graphics/Matrix;", "setPointMatrix", "(Landroid/graphics/Matrix;)V", "pointMatrix", "p", "isTextEnable", "setTextEnable", "q", "isGestureEnable", "setGestureEnable", "r", "isShapeEnable", "setShapeEnable", "s", "isIncremental", "setIncremental", "t", "getArgJson", "setArgJson", "argJson", "u", "getAppId", "setAppId", "appId", "v", "getProductKey", "setProductKey", "productKey", "w", "getUserOpenId", "setUserOpenId", "userOpenId", "x", "getActivateServer", "setActivateServer", "activateServer", "", "y", "Ljava/util/List;", "getItemIds", "()Ljava/util/List;", "itemIds", "z", "getShapeIds", "shapeIds", "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;", "A", "getPointerEvents", "pointerEvents", "Lcom/onyx/android/sdk/hwr/utils/HWRTransform;", "B", "Lcom/onyx/android/sdk/hwr/utils/HWRTransform;", "getTransform", "()Lcom/onyx/android/sdk/hwr/utils/HWRTransform;", com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_TRANSFORM_STRING, BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "getReservedResources", "setReservedResources", "(Ljava/util/List;)V", "reservedResources", "Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "getSourceStrokePointGroups", "setSourceStrokePointGroups", "sourceStrokePointGroups", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HWRInput {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: E */
    @NotNull
    public static HWRInput f42406E = new HWRInput();

    /* renamed from: A, reason: from kotlin metadata */
    @NotNull
    public final List<HWRPointerEvent> pointerEvents;

    /* renamed from: B, reason: from kotlin metadata */
    @NotNull
    public final HWRTransform transform;

    /* renamed from: C, reason: from kotlin metadata */
    @NotNull
    public List<String> reservedResources;

    /* renamed from: D, reason: from kotlin metadata */
    @NotNull
    public List<SourcePointGroup> sourceStrokePointGroups;

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public ClusterInfo clusterInfo;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public byte[] certificate = MyCertificate.INSTANCE.getBytes();

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public String fingerprint;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public HWRRecognizerType recognizerType;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public String contentType;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public String lang;

    /* renamed from: g, reason: from kotlin metadata */
    public boolean resetRecognizer;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public HWRCommand command;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public String preContext;

    /* renamed from: j, reason: from kotlin metadata */
    public float viewWidth;

    /* renamed from: k, reason: from kotlin metadata */
    public float viewHeight;

    /* renamed from: l, reason: from kotlin metadata */
    public float offsetX;

    /* renamed from: m, reason: from kotlin metadata */
    public float offsetY;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public RectF region;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public Matrix pointMatrix;

    /* renamed from: p, reason: from kotlin metadata */
    public boolean isTextEnable;

    /* renamed from: q, reason: from kotlin metadata */
    public boolean isGestureEnable;

    /* renamed from: r, reason: from kotlin metadata */
    public boolean isShapeEnable;

    /* renamed from: s, reason: from kotlin metadata */
    public boolean isIncremental;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public String argJson;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public String appId;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public String productKey;

    /* renamed from: w, reason: from kotlin metadata */
    @NotNull
    public String userOpenId;

    /* renamed from: x, reason: from kotlin metadata */
    @NotNull
    public String activateServer;

    /* renamed from: y, reason: from kotlin metadata */
    @NotNull
    public final List<String> itemIds;

    /* renamed from: z, reason: from kotlin metadata */
    @NotNull
    public final List<String> shapeIds;

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/bean/HWRInput$Companion;", "", "()V", "Empty", "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "getEmpty", "()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "setEmpty", "(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final HWRInput getEmpty() {
            return HWRInput.f42406E;
        }

        public final void setEmpty(@NotNull HWRInput hWRInput) {
            Intrinsics.checkNotNullParameter(hWRInput, "<set-?>");
            HWRInput.f42406E = hWRInput;
        }

        public Companion() {
        }
    }

    public HWRInput() {
        String FINGERPRINT = Build.FINGERPRINT;
        Intrinsics.checkNotNullExpressionValue(FINGERPRINT, "FINGERPRINT");
        this.fingerprint = FINGERPRINT;
        this.recognizerType = HWRRecognizerType.UNKNOWN;
        this.contentType = "";
        this.lang = HWRMmkvUtils.INSTANCE.getLang(HWRLangUtils.INSTANCE.getDefaultHWRLang());
        this.resetRecognizer = true;
        this.command = HWRCommand.NONE;
        this.preContext = "";
        this.region = new RectF();
        this.pointMatrix = new Matrix();
        this.isTextEnable = true;
        this.isGestureEnable = true;
        this.isShapeEnable = true;
        this.argJson = "";
        this.appId = "";
        this.productKey = "";
        this.userOpenId = "";
        this.activateServer = "";
        this.itemIds = new ArrayList();
        this.shapeIds = new ArrayList();
        this.pointerEvents = new ArrayList();
        this.transform = new HWRTransform();
        this.reservedResources = new ArrayList();
        this.sourceStrokePointGroups = new ArrayList();
    }

    @NotNull
    public final HWRInput copy() {
        HWRInput hWRInput = new HWRInput();
        hWRInput.clusterInfo = this.clusterInfo;
        hWRInput.certificate = this.certificate;
        hWRInput.fingerprint = this.fingerprint;
        hWRInput.recognizerType = this.recognizerType;
        hWRInput.resetRecognizer = this.resetRecognizer;
        return hWRInput;
    }

    @NotNull
    public final String getActivateServer() {
        return this.activateServer;
    }

    @NotNull
    public final String getAppId() {
        return this.appId;
    }

    @NotNull
    public final String getArgJson() {
        return this.argJson;
    }

    @NotNull
    public final byte[] getCertificate() {
        return this.certificate;
    }

    @Nullable
    public final ClusterInfo getClusterInfo() {
        return this.clusterInfo;
    }

    @NotNull
    public final HWRCommand getCommand() {
        return this.command;
    }

    @NotNull
    public final String getContentType() {
        return this.contentType;
    }

    @NotNull
    public final String getFingerprint() {
        return this.fingerprint;
    }

    @NotNull
    public final List<String> getItemIds() {
        return this.itemIds;
    }

    @NotNull
    public final String getLang() {
        return this.lang;
    }

    public final float getOffsetX() {
        return this.offsetX;
    }

    public final float getOffsetY() {
        return this.offsetY;
    }

    @NotNull
    public final Matrix getPointMatrix() {
        return this.pointMatrix;
    }

    @NotNull
    public final List<HWRPointerEvent> getPointerEvents() {
        return this.pointerEvents;
    }

    @NotNull
    public final String getPreContext() {
        return this.preContext;
    }

    @NotNull
    public final String getProductKey() {
        return this.productKey;
    }

    @NotNull
    public final HWRRecognizerType getRecognizerType() {
        return this.recognizerType;
    }

    @NotNull
    public final RectF getRegion() {
        return this.region;
    }

    @NotNull
    public final List<String> getReservedResources() {
        return this.reservedResources;
    }

    public final boolean getResetRecognizer() {
        return this.resetRecognizer;
    }

    @NotNull
    public final List<String> getShapeIds() {
        return this.shapeIds;
    }

    @NotNull
    public final List<SourcePointGroup> getSourceStrokePointGroups() {
        return this.sourceStrokePointGroups;
    }

    @NotNull
    public final HWRTransform getTransform() {
        return this.transform;
    }

    @NotNull
    public final String getUserOpenId() {
        return this.userOpenId;
    }

    public final float getViewHeight() {
        return this.viewHeight;
    }

    public final float getViewWidth() {
        return this.viewWidth;
    }

    /* renamed from: isGestureEnable, reason: from getter */
    public final boolean getIsGestureEnable() {
        return this.isGestureEnable;
    }

    /* renamed from: isIncremental, reason: from getter */
    public final boolean getIsIncremental() {
        return this.isIncremental;
    }

    /* renamed from: isShapeEnable, reason: from getter */
    public final boolean getIsShapeEnable() {
        return this.isShapeEnable;
    }

    /* renamed from: isTextEnable, reason: from getter */
    public final boolean getIsTextEnable() {
        return this.isTextEnable;
    }

    public final void setActivateServer(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.activateServer = str;
    }

    public final void setAppId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.appId = str;
    }

    public final void setArgJson(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.argJson = str;
    }

    public final void setCertificate(@NotNull byte[] bArr) {
        Intrinsics.checkNotNullParameter(bArr, "<set-?>");
        this.certificate = bArr;
    }

    public final void setClusterInfo(@Nullable ClusterInfo clusterInfo) {
        this.clusterInfo = clusterInfo;
    }

    public final void setCommand(@NotNull HWRCommand hWRCommand) {
        Intrinsics.checkNotNullParameter(hWRCommand, "<set-?>");
        this.command = hWRCommand;
    }

    public final void setContentType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.contentType = str;
    }

    public final void setFingerprint(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.fingerprint = str;
    }

    public final void setGestureEnable(boolean z) {
        this.isGestureEnable = z;
    }

    public final void setIncremental(boolean z) {
        this.isIncremental = z;
    }

    public final void setLang(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.lang = str;
    }

    public final void setOffsetX(float f) {
        this.offsetX = f;
    }

    public final void setOffsetY(float f) {
        this.offsetY = f;
    }

    public final void setPointMatrix(@NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(matrix, "<set-?>");
        this.pointMatrix = matrix;
    }

    public final void setPreContext(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.preContext = str;
    }

    public final void setProductKey(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.productKey = str;
    }

    public final void setRecognizerType(@NotNull HWRRecognizerType hWRRecognizerType) {
        Intrinsics.checkNotNullParameter(hWRRecognizerType, "<set-?>");
        this.recognizerType = hWRRecognizerType;
    }

    public final void setRegion(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.region = rectF;
    }

    public final void setReservedResources(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.reservedResources = list;
    }

    public final void setResetRecognizer(boolean z) {
        this.resetRecognizer = z;
    }

    public final void setShapeEnable(boolean z) {
        this.isShapeEnable = z;
    }

    public final void setSourceStrokePointGroups(@NotNull List<SourcePointGroup> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.sourceStrokePointGroups = list;
    }

    public final void setTextEnable(boolean z) {
        this.isTextEnable = z;
    }

    public final void setUserOpenId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.userOpenId = str;
    }

    public final void setViewHeight(float f) {
        this.viewHeight = f;
    }

    public final void setViewWidth(float f) {
        this.viewWidth = f;
    }
}
