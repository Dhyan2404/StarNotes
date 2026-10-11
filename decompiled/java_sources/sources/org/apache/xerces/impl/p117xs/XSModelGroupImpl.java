package org.apache.xerces.impl.p117xs;

import org.apache.xerces.impl.p117xs.util.XSObjectListImpl;
import org.apache.xerces.p118xs.XSAnnotation;
import org.apache.xerces.p118xs.XSModelGroup;
import org.apache.xerces.p118xs.XSNamespaceItem;
import org.apache.xerces.p118xs.XSObjectList;

/* loaded from: classes13.dex */
public class XSModelGroupImpl implements XSModelGroup {
    public static final short MODELGROUP_ALL = 103;
    public static final short MODELGROUP_CHOICE = 101;
    public static final short MODELGROUP_SEQUENCE = 102;
    public short fCompositor;
    public XSParticleDecl[] fParticles = null;
    public int fParticleCount = 0;
    public XSObjectList fAnnotations = null;

    /* renamed from: e */
    public String f112932e = null;

    /* renamed from: a */
    public final int m70242a() {
        int i = 0;
        for (int i2 = 0; i2 < this.fParticleCount; i2++) {
            int maxEffectiveTotalRange = this.fParticles[i2].maxEffectiveTotalRange();
            if (maxEffectiveTotalRange == -1) {
                return -1;
            }
            i += maxEffectiveTotalRange;
        }
        return i;
    }

    /* renamed from: b */
    public final int m70243b() {
        int i = 0;
        if (this.fParticleCount > 0 && (i = this.fParticles[0].maxEffectiveTotalRange()) == -1) {
            return -1;
        }
        for (int i2 = 1; i2 < this.fParticleCount; i2++) {
            int maxEffectiveTotalRange = this.fParticles[i2].maxEffectiveTotalRange();
            if (maxEffectiveTotalRange == -1) {
                return -1;
            }
            if (maxEffectiveTotalRange > i) {
                i = maxEffectiveTotalRange;
            }
        }
        return i;
    }

    /* renamed from: c */
    public final int m70244c() {
        int i = 0;
        for (int i2 = 0; i2 < this.fParticleCount; i2++) {
            i += this.fParticles[i2].minEffectiveTotalRange();
        }
        return i;
    }

    /* renamed from: d */
    public final int m70245d() {
        int minEffectiveTotalRange = this.fParticleCount > 0 ? this.fParticles[0].minEffectiveTotalRange() : 0;
        for (int i = 1; i < this.fParticleCount; i++) {
            int minEffectiveTotalRange2 = this.fParticles[i].minEffectiveTotalRange();
            if (minEffectiveTotalRange2 < minEffectiveTotalRange) {
                minEffectiveTotalRange = minEffectiveTotalRange2;
            }
        }
        return minEffectiveTotalRange;
    }

    @Override // org.apache.xerces.p118xs.XSModelGroup
    public XSAnnotation getAnnotation() {
        XSObjectList xSObjectList = this.fAnnotations;
        if (xSObjectList != null) {
            return (XSAnnotation) xSObjectList.item(0);
        }
        return null;
    }

    @Override // org.apache.xerces.p118xs.XSModelGroup
    public XSObjectList getAnnotations() {
        XSObjectList xSObjectList = this.fAnnotations;
        return xSObjectList != null ? xSObjectList : XSObjectListImpl.EMPTY_LIST;
    }

    @Override // org.apache.xerces.p118xs.XSModelGroup
    public short getCompositor() {
        short s = this.fCompositor;
        if (s == 101) {
            return (short) 2;
        }
        return s == 102 ? (short) 1 : (short) 3;
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public String getName() {
        return null;
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public String getNamespace() {
        return null;
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public XSNamespaceItem getNamespaceItem() {
        return null;
    }

    @Override // org.apache.xerces.p118xs.XSModelGroup
    public XSObjectList getParticles() {
        return new XSObjectListImpl(this.fParticles, this.fParticleCount);
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public short getType() {
        return (short) 7;
    }

    public boolean isEmpty() {
        for (int i = 0; i < this.fParticleCount; i++) {
            if (!this.fParticles[i].isEmpty()) {
                return false;
            }
        }
        return true;
    }

    public int maxEffectiveTotalRange() {
        return this.fCompositor == 101 ? m70243b() : m70242a();
    }

    public int minEffectiveTotalRange() {
        return this.fCompositor == 101 ? m70245d() : m70244c();
    }

    public void reset() {
        this.fCompositor = (short) 102;
        this.fParticles = null;
        this.fParticleCount = 0;
        this.f112932e = null;
        this.fAnnotations = null;
    }

    public String toString() {
        if (this.f112932e == null) {
            StringBuffer stringBuffer = new StringBuffer();
            if (this.fCompositor == 103) {
                stringBuffer.append("all(");
            } else {
                stringBuffer.append('(');
            }
            if (this.fParticleCount > 0) {
                stringBuffer.append(this.fParticles[0].toString());
            }
            for (int i = 1; i < this.fParticleCount; i++) {
                stringBuffer.append(this.fCompositor == 101 ? '|' : ',');
                stringBuffer.append(this.fParticles[i].toString());
            }
            stringBuffer.append(')');
            this.f112932e = stringBuffer.toString();
        }
        return this.f112932e;
    }
}
