package org.apache.poi.hwpf.model;

import com.google.android.material.motion.MotionUtils;
import org.apache.poi.hwpf.sprm.CharacterSprmUncompressor;
import org.apache.poi.hwpf.sprm.SprmBuffer;
import org.apache.poi.hwpf.usermodel.CharacterProperties;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public final class CHPX extends BytePropertyNode<CHPX> {
    public CHPX(CHPX chpx) {
        super(chpx);
    }

    public CharacterProperties getCharacterProperties(StyleSheet styleSheet, short s) {
        return styleSheet == null ? new CharacterProperties() : CharacterSprmUncompressor.uncompressCHP(styleSheet, styleSheet.getCharacterStyle(s), getGrpprl(), 0);
    }

    public byte[] getGrpprl() {
        return ((SprmBuffer) this._buf).toByteArray();
    }

    public SprmBuffer getSprmBuf() {
        return (SprmBuffer) this._buf;
    }

    public String toString() {
        return "CHPX from " + getStart() + " to " + getEnd() + " (in bytes " + getStartBytes() + " to " + getEndBytes() + MotionUtils.f31762d;
    }

    public CHPX(int i, int i2, SprmBuffer sprmBuffer) {
        super(i, i2, sprmBuffer);
    }

    @Override // org.apache.poi.hwpf.model.PropertyNode, org.apache.poi.common.Duplicatable
    public CHPX copy() {
        return new CHPX(this);
    }
}
