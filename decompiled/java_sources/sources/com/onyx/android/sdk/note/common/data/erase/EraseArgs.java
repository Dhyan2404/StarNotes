package com.onyx.android.sdk.note.common.data.erase;

import com.onyx.android.sdk.base.data.TouchPointList;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.math.NumberUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0014\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005J\u0006\u0010\n\u001a\u00020\u0005R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u0004\u0010\u000fR\"\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\t\u0010\u0014R\"\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0011\u001a\u0004\b\u0016\u0010\u0013\"\u0004\b\u0007\u0010\u0014¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;", "", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "partEraseTrackPoints", "setPartEraseTrackPoints", "", "drawRadius", "setDrawRadius", "normalizeScale", "setNormalizeScale", "normalizeDrawRadius", "a", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "getPartEraseTrackPoints", "()Lcom/onyx/android/sdk/base/data/TouchPointList;", "(Lcom/onyx/android/sdk/base/data/TouchPointList;)V", "b", "F", "getNormalizeScale", "()F", "(F)V", "c", "getDrawRadius", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class EraseArgs {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public TouchPointList partEraseTrackPoints;

    /* renamed from: b, reason: from kotlin metadata */
    public float normalizeScale;

    /* renamed from: c, reason: from kotlin metadata */
    public float drawRadius;

    public EraseArgs() {
        Float FLOAT_ONE = NumberUtils.FLOAT_ONE;
        Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
        this.normalizeScale = FLOAT_ONE.floatValue();
        this.drawRadius = 15.0f;
    }

    public final float getDrawRadius() {
        return this.drawRadius;
    }

    public final float getNormalizeScale() {
        return this.normalizeScale;
    }

    @Nullable
    public final TouchPointList getPartEraseTrackPoints() {
        return this.partEraseTrackPoints;
    }

    public final float normalizeDrawRadius() {
        return this.drawRadius * this.normalizeScale;
    }

    /* renamed from: setDrawRadius, reason: collision with other method in class */
    public final void m72295setDrawRadius(float f) {
        this.drawRadius = f;
    }

    /* renamed from: setNormalizeScale, reason: collision with other method in class */
    public final void m72296setNormalizeScale(float f) {
        this.normalizeScale = f;
    }

    /* renamed from: setPartEraseTrackPoints, reason: collision with other method in class */
    public final void m72297setPartEraseTrackPoints(@Nullable TouchPointList touchPointList) {
        this.partEraseTrackPoints = touchPointList;
    }

    @NotNull
    public final EraseArgs setDrawRadius(float drawRadius) {
        this.drawRadius = drawRadius;
        return this;
    }

    @NotNull
    public final EraseArgs setNormalizeScale(float normalizeScale) {
        this.normalizeScale = normalizeScale;
        return this;
    }

    @NotNull
    public final EraseArgs setPartEraseTrackPoints(@Nullable TouchPointList partEraseTrackPoints) {
        this.partEraseTrackPoints = partEraseTrackPoints;
        return this;
    }
}
