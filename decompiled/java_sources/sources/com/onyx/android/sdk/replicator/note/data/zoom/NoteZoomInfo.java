package com.onyx.android.sdk.replicator.note.data.zoom;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.Serializable;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.math.NumberUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0011\u001a\u00020\u0000H\u0014J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u0000J\u0013\u0010\u0013\u001a\u00020\u00052\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\u0006\u0010\u0016\u001a\u00020\fJ\u0006\u0010\u0017\u001a\u00020\u000eJ\u0006\u0010\u0018\u001a\u00020\u0010J\b\u0010\u0019\u001a\u00020\fH\u0016J\b\u0010\u001a\u001a\u00020\u0005H\u0007J\b\u0010\u001b\u001a\u00020\u001cH\u0002J\u000e\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u001f\u001a\u00020\u001c2\u0006\u0010\u000f\u001a\u00020\u0010R$\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0006\u0010\u0003\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;", "Ljava/io/Serializable;", "", "()V", "fitToScreen", "", "getFitToScreen$annotations", "getFitToScreen", Constants.BOOLEAN_VALUE_SIG, "setFitToScreen", "(Z)V", "scaleType", "", "viewPortPos", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "viewportScale", "", "clone", "zoomInfo", "equals", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "", "getScaleType", "getViewPortPos", "getViewportScale", "hashCode", "isFitScreenType", "migrateScaleType", "", "setScaleType", "setViewPortPos", "setViewportScale", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class NoteZoomInfo implements Serializable, Cloneable {
    private boolean fitToScreen;
    private int scaleType;

    @NotNull
    private TouchPoint viewPortPos;
    private float viewportScale;

    public NoteZoomInfo() {
        Float FLOAT_ONE = NumberUtils.FLOAT_ONE;
        Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
        this.viewportScale = FLOAT_ONE.floatValue();
        this.viewPortPos = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0L, 127, null);
    }

    @Deprecated(message = "")
    public static /* synthetic */ void getFitToScreen$annotations() {
    }

    private final void migrateScaleType() {
        if (this.fitToScreen && this.scaleType == 0) {
            this.scaleType = 1;
        }
        this.fitToScreen = false;
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof NoteZoomInfo)) {
            return false;
        }
        NoteZoomInfo noteZoomInfo = (NoteZoomInfo) other;
        return ((this.viewportScale > noteZoomInfo.viewportScale ? 1 : (this.viewportScale == noteZoomInfo.viewportScale ? 0 : -1)) == 0) && Intrinsics.areEqual(this.viewPortPos, noteZoomInfo.viewPortPos) && this.fitToScreen == noteZoomInfo.fitToScreen && this.scaleType == noteZoomInfo.scaleType;
    }

    public final boolean getFitToScreen() {
        return this.fitToScreen;
    }

    public final int getScaleType() {
        migrateScaleType();
        return this.scaleType;
    }

    @NotNull
    public final TouchPoint getViewPortPos() {
        return this.viewPortPos;
    }

    public final float getViewportScale() {
        return this.viewportScale;
    }

    public int hashCode() {
        return (((((Float.hashCode(this.viewportScale) * 31) + this.viewPortPos.hashCode()) * 31) + Boolean.hashCode(this.fitToScreen)) * 31) + this.scaleType;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isFitScreenType() {
        return getScaleType() == 1;
    }

    public final void setFitToScreen(boolean z) {
        this.fitToScreen = z;
    }

    public final void setScaleType(int scaleType) {
        this.scaleType = scaleType;
    }

    public final void setViewPortPos(@NotNull TouchPoint viewPortPos) {
        Intrinsics.checkNotNullParameter(viewPortPos, "viewPortPos");
        this.viewPortPos = viewPortPos;
    }

    public final void setViewportScale(float viewportScale) {
        this.viewportScale = viewportScale;
    }

    @NotNull
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public NoteZoomInfo m72376clone() {
        NoteZoomInfo noteZoomInfo;
        NoteZoomInfo noteZoomInfo2 = null;
        try {
            Object clone = super.clone();
            Intrinsics.checkNotNull(clone, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.data.zoom.NoteZoomInfo");
            noteZoomInfo = (NoteZoomInfo) clone;
        } catch (CloneNotSupportedException e) {
            e = e;
        }
        try {
            noteZoomInfo.setViewPortPos(this.viewPortPos.m72173clone());
        } catch (CloneNotSupportedException e2) {
            e = e2;
            noteZoomInfo2 = noteZoomInfo;
            e.printStackTrace();
            noteZoomInfo = noteZoomInfo2;
            Intrinsics.checkNotNull(noteZoomInfo);
            return noteZoomInfo;
        }
        Intrinsics.checkNotNull(noteZoomInfo);
        return noteZoomInfo;
    }

    @Nullable
    public final NoteZoomInfo clone(@Nullable NoteZoomInfo zoomInfo) {
        if (zoomInfo != null) {
            return zoomInfo.m72376clone();
        }
        return null;
    }
}
