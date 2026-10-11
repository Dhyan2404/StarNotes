package java.awt.font;

import java.awt.RenderingHints;
import java.awt.geom.AffineTransform;

/* loaded from: classes5.dex */
public class FontRenderContext {
    private transient Object aaHintValue;
    private transient boolean defaulting;
    private transient Object fmHintValue;

    /* renamed from: tx */
    private transient AffineTransform f97738tx;

    public FontRenderContext() {
        this.aaHintValue = RenderingHints.VALUE_TEXT_ANTIALIAS_DEFAULT;
        this.fmHintValue = RenderingHints.VALUE_FRACTIONALMETRICS_DEFAULT;
        this.defaulting = true;
    }

    public boolean equals(Object obj) {
        try {
            return equals((FontRenderContext) obj);
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public Object getAntiAliasingHint() {
        return this.defaulting ? isAntiAliased() ? RenderingHints.VALUE_TEXT_ANTIALIAS_ON : RenderingHints.VALUE_TEXT_ANTIALIAS_OFF : this.aaHintValue;
    }

    public Object getFractionalMetricsHint() {
        return this.defaulting ? usesFractionalMetrics() ? RenderingHints.VALUE_FRACTIONALMETRICS_ON : RenderingHints.VALUE_FRACTIONALMETRICS_OFF : this.fmHintValue;
    }

    public AffineTransform getTransform() {
        return this.f97738tx == null ? new AffineTransform() : new AffineTransform(this.f97738tx);
    }

    public int getTransformType() {
        if (this.defaulting) {
            return getTransform().getType();
        }
        AffineTransform affineTransform = this.f97738tx;
        if (affineTransform == null) {
            return 0;
        }
        return affineTransform.getType();
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        AffineTransform affineTransform = this.f97738tx;
        int hashCode3 = affineTransform == null ? 0 : affineTransform.hashCode();
        if (this.defaulting) {
            hashCode = hashCode3 + getAntiAliasingHint().hashCode();
            hashCode2 = getFractionalMetricsHint().hashCode();
        } else {
            hashCode = hashCode3 + this.aaHintValue.hashCode();
            hashCode2 = this.fmHintValue.hashCode();
        }
        return hashCode + hashCode2;
    }

    public boolean isAntiAliased() {
        Object obj = this.aaHintValue;
        return (obj == RenderingHints.VALUE_TEXT_ANTIALIAS_OFF || obj == RenderingHints.VALUE_TEXT_ANTIALIAS_DEFAULT) ? false : true;
    }

    public boolean isTransformed() {
        return !this.defaulting ? this.f97738tx != null : !getTransform().isIdentity();
    }

    public boolean usesFractionalMetrics() {
        Object obj = this.fmHintValue;
        return (obj == RenderingHints.VALUE_FRACTIONALMETRICS_OFF || obj == RenderingHints.VALUE_FRACTIONALMETRICS_DEFAULT) ? false : true;
    }

    public boolean equals(FontRenderContext fontRenderContext) {
        if (this == fontRenderContext) {
            return true;
        }
        if (fontRenderContext == null) {
            return false;
        }
        if (fontRenderContext.defaulting || this.defaulting) {
            return fontRenderContext.getAntiAliasingHint() == getAntiAliasingHint() && fontRenderContext.getFractionalMetricsHint() == getFractionalMetricsHint() && fontRenderContext.getTransform().equals(getTransform());
        }
        if (fontRenderContext.aaHintValue != this.aaHintValue || fontRenderContext.fmHintValue != this.fmHintValue) {
            return false;
        }
        AffineTransform affineTransform = this.f97738tx;
        return affineTransform == null ? fontRenderContext.f97738tx == null : affineTransform.equals(fontRenderContext.f97738tx);
    }

    public FontRenderContext(AffineTransform affineTransform, boolean z, boolean z2) {
        if (affineTransform != null && !affineTransform.isIdentity()) {
            this.f97738tx = new AffineTransform(affineTransform);
        }
        if (z) {
            this.aaHintValue = RenderingHints.VALUE_TEXT_ANTIALIAS_ON;
        } else {
            this.aaHintValue = RenderingHints.VALUE_TEXT_ANTIALIAS_OFF;
        }
        if (z2) {
            this.fmHintValue = RenderingHints.VALUE_FRACTIONALMETRICS_ON;
        } else {
            this.fmHintValue = RenderingHints.VALUE_FRACTIONALMETRICS_OFF;
        }
    }

    public FontRenderContext(AffineTransform affineTransform, Object obj, Object obj2) {
        if (affineTransform != null && !affineTransform.isIdentity()) {
            this.f97738tx = new AffineTransform(affineTransform);
        }
        try {
            if (RenderingHints.KEY_TEXT_ANTIALIASING.isCompatibleValue(obj)) {
                this.aaHintValue = obj;
                try {
                    if (RenderingHints.KEY_FRACTIONALMETRICS.isCompatibleValue(obj2)) {
                        this.fmHintValue = obj2;
                        return;
                    }
                    throw new IllegalArgumentException("FM hint:" + obj2);
                } catch (Exception unused) {
                    throw new IllegalArgumentException("FM hint:" + obj2);
                }
            }
            throw new IllegalArgumentException("AA hint:" + obj);
        } catch (Exception unused2) {
            throw new IllegalArgumentException("AA hint:" + obj);
        }
    }
}
