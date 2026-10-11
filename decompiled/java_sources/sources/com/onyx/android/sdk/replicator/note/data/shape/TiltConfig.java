package com.onyx.android.sdk.replicator.note.data.shape;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u000f\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00032\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;", "", "tiltEnabled", "", "tiltScale", "", "(ZF)V", "getTiltEnabled", Constants.BOOLEAN_VALUE_SIG, "setTiltEnabled", "(Z)V", "getTiltScale", "()F", "setTiltScale", "(F)V", "component1", "component2", "copy", "equals", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final /* data */ class TiltConfig {
    private boolean tiltEnabled;
    private float tiltScale;

    public TiltConfig() {
        this(false, 0.0f, 3, null);
    }

    public static /* synthetic */ TiltConfig copy$default(TiltConfig tiltConfig, boolean z, float f, int i, Object obj) {
        if ((i & 1) != 0) {
            z = tiltConfig.tiltEnabled;
        }
        if ((i & 2) != 0) {
            f = tiltConfig.tiltScale;
        }
        return tiltConfig.copy(z, f);
    }

    /* renamed from: component1, reason: from getter */
    public final boolean getTiltEnabled() {
        return this.tiltEnabled;
    }

    /* renamed from: component2, reason: from getter */
    public final float getTiltScale() {
        return this.tiltScale;
    }

    @NotNull
    public final TiltConfig copy(boolean tiltEnabled, float tiltScale) {
        return new TiltConfig(tiltEnabled, tiltScale);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!Intrinsics.areEqual(TiltConfig.class, other != null ? other.getClass() : null)) {
            return false;
        }
        Intrinsics.checkNotNull(other, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.data.shape.TiltConfig");
        TiltConfig tiltConfig = (TiltConfig) other;
        if (this.tiltEnabled == tiltConfig.tiltEnabled) {
            if (this.tiltScale == tiltConfig.tiltScale) {
                return true;
            }
        }
        return false;
    }

    public final boolean getTiltEnabled() {
        return this.tiltEnabled;
    }

    public final float getTiltScale() {
        return this.tiltScale;
    }

    public int hashCode() {
        return (Boolean.hashCode(this.tiltEnabled) * 31) + Float.hashCode(this.tiltScale);
    }

    public final void setTiltEnabled(boolean z) {
        this.tiltEnabled = z;
    }

    public final void setTiltScale(float f) {
        this.tiltScale = f;
    }

    @NotNull
    public String toString() {
        return "TiltConfig(tiltEnabled=" + this.tiltEnabled + ", tiltScale=" + this.tiltScale + ')';
    }

    public TiltConfig(boolean z, float f) {
        this.tiltEnabled = z;
        this.tiltScale = f;
    }

    public /* synthetic */ TiltConfig(boolean z, float f, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? 3.0f : f);
    }
}
