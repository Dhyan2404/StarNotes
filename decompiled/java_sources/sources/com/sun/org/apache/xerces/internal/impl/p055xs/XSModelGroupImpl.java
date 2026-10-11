package com.sun.org.apache.xerces.internal.impl.p055xs;

import com.sun.org.apache.xerces.internal.impl.p055xs.util.XSObjectListImpl;
import com.sun.org.apache.xerces.internal.p056xs.XSAnnotation;
import com.sun.org.apache.xerces.internal.p056xs.XSModelGroup;
import com.sun.org.apache.xerces.internal.p056xs.XSNamespaceItem;
import com.sun.org.apache.xerces.internal.p056xs.XSObjectList;

/* loaded from: classes10.dex */
public class XSModelGroupImpl implements XSModelGroup {
    public static final short MODELGROUP_ALL = 103;
    public static final short MODELGROUP_CHOICE = 101;
    public static final short MODELGROUP_SEQUENCE = 102;
    public XSAnnotationImpl fAnnotation;
    public short fCompositor;
    public XSParticleDecl[] fParticles = null;
    public int fParticleCount = 0;
    private String fDescription = null;

    private int maxEffectiveTotalRangeAllSeq() {
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

    private int maxEffectiveTotalRangeChoice() {
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

    private int minEffectiveTotalRangeAllSeq() {
        int i = 0;
        for (int i2 = 0; i2 < this.fParticleCount; i2++) {
            i += this.fParticles[i2].minEffectiveTotalRange();
        }
        return i;
    }

    private int minEffectiveTotalRangeChoice() {
        int minEffectiveTotalRange = this.fParticleCount > 0 ? this.fParticles[0].minEffectiveTotalRange() : 0;
        for (int i = 1; i < this.fParticleCount; i++) {
            int minEffectiveTotalRange2 = this.fParticles[i].minEffectiveTotalRange();
            if (minEffectiveTotalRange2 < minEffectiveTotalRange) {
                minEffectiveTotalRange = minEffectiveTotalRange2;
            }
        }
        return minEffectiveTotalRange;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSModelGroup
    public XSAnnotation getAnnotation() {
        return this.fAnnotation;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSModelGroup
    public short getCompositor() {
        short s = this.fCompositor;
        if (s == 101) {
            return (short) 2;
        }
        return s == 102 ? (short) 1 : (short) 3;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSObject
    public String getName() {
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSObject
    public String getNamespace() {
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSObject
    public XSNamespaceItem getNamespaceItem() {
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSModelGroup
    public XSObjectList getParticles() {
        return new XSObjectListImpl(this.fParticles, this.fParticleCount);
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSObject
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
        return this.fCompositor == 101 ? maxEffectiveTotalRangeChoice() : maxEffectiveTotalRangeAllSeq();
    }

    public int minEffectiveTotalRange() {
        return this.fCompositor == 101 ? minEffectiveTotalRangeChoice() : minEffectiveTotalRangeAllSeq();
    }

    public void reset() {
        this.fCompositor = (short) 102;
        this.fParticles = null;
        this.fParticleCount = 0;
        this.fDescription = null;
        this.fAnnotation = null;
    }

    public String toString() {
        if (this.fDescription == null) {
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
                if (this.fCompositor == 101) {
                    stringBuffer.append('|');
                } else {
                    stringBuffer.append(',');
                }
                stringBuffer.append(this.fParticles[i].toString());
            }
            stringBuffer.append(')');
            this.fDescription = stringBuffer.toString();
        }
        return this.fDescription;
    }
}
