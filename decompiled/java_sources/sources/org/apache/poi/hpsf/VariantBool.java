package org.apache.poi.hpsf;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndianByteArrayInputStream;

@Internal
/* loaded from: classes12.dex */
public class VariantBool {
    private static final Logger LOG = LogManager.getLogger((Class<?>) VariantBool.class);
    static final int SIZE = 2;
    private boolean _value;

    public boolean getValue() {
        return this._value;
    }

    public void read(LittleEndianByteArrayInputStream littleEndianByteArrayInputStream) {
        short readShort = littleEndianByteArrayInputStream.readShort();
        if (readShort == -1) {
            this._value = true;
        } else if (readShort == 0) {
            this._value = false;
        } else {
            LOG.atWarn().log("VARIANT_BOOL value '{}' is incorrect", Unbox.box(readShort));
            this._value = true;
        }
    }

    public void setValue(boolean z) {
        this._value = z;
    }
}
