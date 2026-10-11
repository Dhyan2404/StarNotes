package com.onyx.android.sdk.hwr.data.bean;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.hwr.utils.HWRTransform;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010%\n\u0002\b\u000b\u0018\u0000 T2\u00020\u0001:\u0001TB\u0007¢\u0006\u0004\bR\u0010SR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R$\u0010\u0019\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R$\u0010!\u001a\u0004\u0018\u00010\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\"\u0010)\u001a\u00020\"8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\"\u00101\u001a\u00020*8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R$\u00109\u001a\u0004\u0018\u0001028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u00104\u001a\u0004\b5\u00106\"\u0004\b7\u00108R$\u0010A\u001a\u0004\u0018\u00010:8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R$\u0010I\u001a\u0004\u0018\u00010B8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bC\u0010D\u001a\u0004\bE\u0010F\"\u0004\bG\u0010HR.\u0010Q\u001a\u000e\u0012\u0004\u0012\u000202\u0012\u0004\u0012\u0002020J8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bK\u0010L\u001a\u0004\bM\u0010N\"\u0004\bO\u0010P¨\u0006U"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;", "", "", "a", Constants.HASIDCALL_INDEX_SIG, "getSuccess", Constants.BOOLEAN_VALUE_SIG, "setSuccess", "(Z)V", FirebaseAnalytics.Param.SUCCESS, "", "b", "I", "getOutputType", "()I", "setOutputType", "(I)V", "outputType", "Lcom/onyx/android/sdk/hwr/data/bean/HWRException;", "c", "Lcom/onyx/android/sdk/hwr/data/bean/HWRException;", "getException", "()Lcom/onyx/android/sdk/hwr/data/bean/HWRException;", "setException", "(Lcom/onyx/android/sdk/hwr/data/bean/HWRException;)V", "exception", "Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;", "d", "Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;", "getResult", "()Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;", "setResult", "(Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;)V", com.sun.org.apache.xalan.internal.templates.Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "Landroid/graphics/RectF;", "e", "Landroid/graphics/RectF;", "getRegion", "()Landroid/graphics/RectF;", "setRegion", "(Landroid/graphics/RectF;)V", "region", "Landroid/graphics/Matrix;", C6997f.f39671c, "Landroid/graphics/Matrix;", "getPointMatrix", "()Landroid/graphics/Matrix;", "setPointMatrix", "(Landroid/graphics/Matrix;)V", "pointMatrix", "", C6998g.f39679a, Constants.STRING_SIG, "getResultJson", "()Ljava/lang/String;", "setResultJson", "(Ljava/lang/String;)V", "resultJson", "Lcom/onyx/android/sdk/hwr/utils/HWRTransform;", C6999h.f39688c, "Lcom/onyx/android/sdk/hwr/utils/HWRTransform;", "getTransform", "()Lcom/onyx/android/sdk/hwr/utils/HWRTransform;", "setTransform", "(Lcom/onyx/android/sdk/hwr/utils/HWRTransform;)V", com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_TRANSFORM_STRING, "Lcom/onyx/android/sdk/hwr/data/bean/HWRGestureWithContext;", "i", "Lcom/onyx/android/sdk/hwr/data/bean/HWRGestureWithContext;", "getGesture", "()Lcom/onyx/android/sdk/hwr/data/bean/HWRGestureWithContext;", "setGesture", "(Lcom/onyx/android/sdk/hwr/data/bean/HWRGestureWithContext;)V", "gesture", "", "j", "Ljava/util/Map;", "getItemIdMap", "()Ljava/util/Map;", "setItemIdMap", "(Ljava/util/Map;)V", "itemIdMap", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HWROutput {
    public static final int HWR_OUTPUT_GESTURE = 1;
    public static final int HWR_OUTPUT_ITEM_ID_MAP = 2;
    public static final int HWR_OUTPUT_RESULT = 0;

    /* renamed from: b, reason: from kotlin metadata */
    public int outputType;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public HWRException exception;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public HWRConvertBean result;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public String resultJson;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public HWRTransform transform;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public HWRGestureWithContext gesture;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: k */
    @NotNull
    public static final HWROutput f42450k = new HWROutput();

    /* renamed from: a, reason: from kotlin metadata */
    public boolean success = true;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public RectF region = new RectF();

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public Matrix pointMatrix = new Matrix();

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public Map<String, String> itemIdMap = new LinkedHashMap();

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/bean/HWROutput$Companion;", "", "()V", "Empty", "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;", "getEmpty", "()Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;", "HWR_OUTPUT_GESTURE", "", "HWR_OUTPUT_ITEM_ID_MAP", "HWR_OUTPUT_RESULT", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final HWROutput getEmpty() {
            return HWROutput.f42450k;
        }

        public Companion() {
        }
    }

    @Nullable
    public final HWRException getException() {
        return this.exception;
    }

    @Nullable
    public final HWRGestureWithContext getGesture() {
        return this.gesture;
    }

    @NotNull
    public final Map<String, String> getItemIdMap() {
        return this.itemIdMap;
    }

    public final int getOutputType() {
        return this.outputType;
    }

    @NotNull
    public final Matrix getPointMatrix() {
        return this.pointMatrix;
    }

    @NotNull
    public final RectF getRegion() {
        return this.region;
    }

    @Nullable
    public final HWRConvertBean getResult() {
        return this.result;
    }

    @Nullable
    public final String getResultJson() {
        return this.resultJson;
    }

    public final boolean getSuccess() {
        return this.success;
    }

    @Nullable
    public final HWRTransform getTransform() {
        return this.transform;
    }

    public final void setException(@Nullable HWRException hWRException) {
        this.exception = hWRException;
    }

    public final void setGesture(@Nullable HWRGestureWithContext hWRGestureWithContext) {
        this.gesture = hWRGestureWithContext;
    }

    public final void setItemIdMap(@NotNull Map<String, String> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.itemIdMap = map;
    }

    public final void setOutputType(int i) {
        this.outputType = i;
    }

    public final void setPointMatrix(@NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(matrix, "<set-?>");
        this.pointMatrix = matrix;
    }

    public final void setRegion(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.region = rectF;
    }

    public final void setResult(@Nullable HWRConvertBean hWRConvertBean) {
        this.result = hWRConvertBean;
    }

    public final void setResultJson(@Nullable String str) {
        this.resultJson = str;
    }

    public final void setSuccess(boolean z) {
        this.success = z;
    }

    public final void setTransform(@Nullable HWRTransform hWRTransform) {
        this.transform = hWRTransform;
    }
}
