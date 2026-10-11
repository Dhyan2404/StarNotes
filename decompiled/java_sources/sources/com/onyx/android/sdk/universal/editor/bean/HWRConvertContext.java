package com.onyx.android.sdk.universal.editor.bean;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.hwr.data.bean.HWRCandidate;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b<\u0010=R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR*\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\"\u0010\u001a\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R(\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001b0\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\r\u001a\u0004\b\u001d\u0010\u000f\"\u0004\b\u001e\u0010\u0011R$\u0010'\u001a\u0004\u0018\u00010 8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R$\u0010/\u001a\u0004\u0018\u00010(8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\u001d\u00103\u001a\b\u0012\u0004\u0012\u00020\u000b008\u0006¢\u0006\f\n\u0004\b1\u0010\r\u001a\u0004\b2\u0010\u000fR\u001d\u00107\u001a\b\u0012\u0004\u0012\u000204008\u0006¢\u0006\f\n\u0004\b5\u0010\r\u001a\u0004\b6\u0010\u000fR\"\u0010;\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b8\u0010\u0004\u001a\u0004\b9\u0010\u0006\"\u0004\b:\u0010\b¨\u0006>"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;", "", "", "a", "J", "getPointDownSystemTime", "()J", "setPointDownSystemTime", "(J)V", "pointDownSystemTime", "", "", "b", "Ljava/util/List;", "getShapeIds", "()Ljava/util/List;", "setShapeIds", "(Ljava/util/List;)V", "shapeIds", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "c", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "getTouchPoints", "()Lcom/onyx/android/sdk/base/data/TouchPointList;", "setTouchPoints", "(Lcom/onyx/android/sdk/base/data/TouchPointList;)V", "touchPoints", "Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;", "d", "getCandidates", "setCandidates", "candidates", "Lcom/onyx/android/sdk/universal/editor/bean/HWRRecognizeState;", "e", "Lcom/onyx/android/sdk/universal/editor/bean/HWRRecognizeState;", "getRecognizeState", "()Lcom/onyx/android/sdk/universal/editor/bean/HWRRecognizeState;", "setRecognizeState", "(Lcom/onyx/android/sdk/universal/editor/bean/HWRRecognizeState;)V", "recognizeState", "Lcom/onyx/android/sdk/universal/editor/bean/HWRRecognizeGestureType;", C6997f.f39671c, "Lcom/onyx/android/sdk/universal/editor/bean/HWRRecognizeGestureType;", "getGestureType", "()Lcom/onyx/android/sdk/universal/editor/bean/HWRRecognizeGestureType;", "setGestureType", "(Lcom/onyx/android/sdk/universal/editor/bean/HWRRecognizeGestureType;)V", "gestureType", "", C6998g.f39679a, "getRemoveShapeIds", "removeShapeIds", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6999h.f39688c, "getRenderShapes", "renderShapes", "i", "getConvertFinishTime", "setConvertFinishTime", "convertFinishTime", Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class HWRConvertContext {

    /* renamed from: a, reason: from kotlin metadata */
    public long pointDownSystemTime;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public List<String> shapeIds;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public volatile HWRRecognizeState recognizeState;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public volatile HWRRecognizeGestureType gestureType;

    /* renamed from: i, reason: from kotlin metadata */
    public long convertFinishTime;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public TouchPointList touchPoints = new TouchPointList();

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public List<HWRCandidate> candidates = new ArrayList();

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<String> removeShapeIds = new ArrayList();

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> renderShapes = new ArrayList();

    @NotNull
    public final List<HWRCandidate> getCandidates() {
        return this.candidates;
    }

    public final long getConvertFinishTime() {
        return this.convertFinishTime;
    }

    @Nullable
    public final HWRRecognizeGestureType getGestureType() {
        return this.gestureType;
    }

    public final long getPointDownSystemTime() {
        return this.pointDownSystemTime;
    }

    @Nullable
    public final HWRRecognizeState getRecognizeState() {
        return this.recognizeState;
    }

    @NotNull
    public final List<String> getRemoveShapeIds() {
        return this.removeShapeIds;
    }

    @NotNull
    public final List<Shape> getRenderShapes() {
        return this.renderShapes;
    }

    @Nullable
    public final List<String> getShapeIds() {
        return this.shapeIds;
    }

    @NotNull
    public final TouchPointList getTouchPoints() {
        return this.touchPoints;
    }

    public final void setCandidates(@NotNull List<HWRCandidate> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.candidates = list;
    }

    public final void setConvertFinishTime(long j) {
        this.convertFinishTime = j;
    }

    public final void setGestureType(@Nullable HWRRecognizeGestureType hWRRecognizeGestureType) {
        this.gestureType = hWRRecognizeGestureType;
    }

    public final void setPointDownSystemTime(long j) {
        this.pointDownSystemTime = j;
    }

    public final void setRecognizeState(@Nullable HWRRecognizeState hWRRecognizeState) {
        this.recognizeState = hWRRecognizeState;
    }

    public final void setShapeIds(@Nullable List<String> list) {
        this.shapeIds = list;
    }

    public final void setTouchPoints(@NotNull TouchPointList touchPointList) {
        Intrinsics.checkNotNullParameter(touchPointList, "<set-?>");
        this.touchPoints = touchPointList;
    }
}
