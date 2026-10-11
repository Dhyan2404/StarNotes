package com.onyx.android.sdk.bean;

import java.io.Serializable;
import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0011\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\b¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/bean/DefaultPenParams;", "Ljava/io/Serializable;", "()V", "defaultVelocityAmplifier", "", "getDefaultVelocityAmplifier", "()F", "setDefaultVelocityAmplifier", "(F)V", "defaultVelocityIgnoreThreshold", "getDefaultVelocityIgnoreThreshold", "setDefaultVelocityIgnoreThreshold", "defaultVelocityLowerBound", "getDefaultVelocityLowerBound", "setDefaultVelocityLowerBound", "defaultVelocitySensitivity", "getDefaultVelocitySensitivity", "setDefaultVelocitySensitivity", "defaultVelocityUpperBound", "getDefaultVelocityUpperBound", "setDefaultVelocityUpperBound", "sdk-pen_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class DefaultPenParams implements Serializable {
    private float defaultVelocityAmplifier;
    private float defaultVelocityIgnoreThreshold;
    private float defaultVelocityLowerBound;
    private float defaultVelocitySensitivity;
    private float defaultVelocityUpperBound;

    public final float getDefaultVelocityAmplifier() {
        return this.defaultVelocityAmplifier;
    }

    public final float getDefaultVelocityIgnoreThreshold() {
        return this.defaultVelocityIgnoreThreshold;
    }

    public final float getDefaultVelocityLowerBound() {
        return this.defaultVelocityLowerBound;
    }

    public final float getDefaultVelocitySensitivity() {
        return this.defaultVelocitySensitivity;
    }

    public final float getDefaultVelocityUpperBound() {
        return this.defaultVelocityUpperBound;
    }

    public final void setDefaultVelocityAmplifier(float f) {
        this.defaultVelocityAmplifier = f;
    }

    public final void setDefaultVelocityIgnoreThreshold(float f) {
        this.defaultVelocityIgnoreThreshold = f;
    }

    public final void setDefaultVelocityLowerBound(float f) {
        this.defaultVelocityLowerBound = f;
    }

    public final void setDefaultVelocitySensitivity(float f) {
        this.defaultVelocitySensitivity = f;
    }

    public final void setDefaultVelocityUpperBound(float f) {
        this.defaultVelocityUpperBound = f;
    }
}
