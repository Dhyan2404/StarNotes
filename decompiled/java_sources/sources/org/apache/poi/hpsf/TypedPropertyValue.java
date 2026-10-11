package org.apache.poi.hpsf;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndianByteArrayInputStream;

@Internal
/* loaded from: classes12.dex */
public class TypedPropertyValue {
    private static final Logger LOG = LogManager.getLogger((Class<?>) TypedPropertyValue.class);
    private int _type;
    private Object _value;

    public TypedPropertyValue(int i, Object obj) {
        this._type = i;
        this._value = obj;
    }

    public static void skipPadding(LittleEndianByteArrayInputStream littleEndianByteArrayInputStream) {
        int readIndex = (4 - (littleEndianByteArrayInputStream.getReadIndex() & 3)) & 3;
        for (int i = 0; i < readIndex; i++) {
            littleEndianByteArrayInputStream.mark(1);
            if (littleEndianByteArrayInputStream.read() != 0) {
                littleEndianByteArrayInputStream.reset();
                return;
            }
        }
    }

    public Object getValue() {
        return this._value;
    }

    public void read(LittleEndianByteArrayInputStream littleEndianByteArrayInputStream) {
        this._type = littleEndianByteArrayInputStream.readShort();
        short readShort = littleEndianByteArrayInputStream.readShort();
        if (readShort != 0) {
            LOG.atWarn().log("TypedPropertyValue padding at offset {} MUST be 0, but it's value is {}", Unbox.box(littleEndianByteArrayInputStream.getReadIndex()), Unbox.box(readShort));
        }
        readValue(littleEndianByteArrayInputStream);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:17:0x0022. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:18:0x0025. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0132  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void readValue(org.apache.poi.util.LittleEndianByteArrayInputStream r6) {
        /*
            Method dump skipped, instructions count: 594
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.hpsf.TypedPropertyValue.readValue(org.apache.poi.util.LittleEndianByteArrayInputStream):void");
    }
}
