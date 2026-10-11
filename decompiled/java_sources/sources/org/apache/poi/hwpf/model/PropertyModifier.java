package org.apache.poi.hwpf.model;

import com.google.android.material.motion.MotionUtils;
import java.util.Objects;
import org.apache.poi.common.Duplicatable;
import org.apache.poi.util.BitField;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public final class PropertyModifier implements Duplicatable {
    private static final BitField _fComplex = new BitField(1);
    private static final BitField _figrpprl = new BitField(65534);
    private static final BitField _fisprm = new BitField(254);
    private static final BitField _fval = new BitField(65280);
    private short value;

    public PropertyModifier(short s) {
        this.value = s;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && PropertyModifier.class == obj.getClass() && this.value == ((PropertyModifier) obj).value;
    }

    public short getIgrpprl() {
        if (isComplex()) {
            return _figrpprl.getShortValue(this.value);
        }
        throw new IllegalStateException("Not complex");
    }

    public short getIsprm() {
        if (isComplex()) {
            throw new IllegalStateException("Not simple");
        }
        return _fisprm.getShortValue(this.value);
    }

    public short getVal() {
        if (isComplex()) {
            throw new IllegalStateException("Not simple");
        }
        return _fval.getShortValue(this.value);
    }

    public short getValue() {
        return this.value;
    }

    public int hashCode() {
        return Objects.hash(Short.valueOf(this.value));
    }

    public boolean isComplex() {
        return _fComplex.isSet(this.value);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[PRM] (complex: ");
        sb.append(isComplex());
        sb.append("; ");
        if (isComplex()) {
            sb.append("igrpprl: ");
            sb.append((int) getIgrpprl());
            sb.append("; ");
        } else {
            sb.append("isprm: ");
            sb.append((int) getIsprm());
            sb.append("; ");
            sb.append("val: ");
            sb.append((int) getVal());
            sb.append("; ");
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    @Override // org.apache.poi.common.Duplicatable
    public PropertyModifier copy() {
        return new PropertyModifier(this);
    }

    public PropertyModifier(PropertyModifier propertyModifier) {
        this.value = propertyModifier.value;
    }
}
