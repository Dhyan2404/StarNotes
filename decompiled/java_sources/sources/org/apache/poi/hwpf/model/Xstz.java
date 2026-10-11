package org.apache.poi.hwpf.model;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public class Xstz {
    private static final Logger LOGGER = LogManager.getLogger((Class<?>) Xstz.class);
    private final short _chTerm;
    private Xst _xst;

    public Xstz() {
        this._chTerm = (short) 0;
        this._xst = new Xst();
    }

    public void fillFields(byte[] bArr, int i) {
        Xst xst = new Xst(bArr, i);
        this._xst = xst;
        int size = i + xst.getSize();
        if (LittleEndian.getShort(bArr, size) != 0) {
            LOGGER.atWarn().log("chTerm at the end of Xstz at offset {} is not 0", Unbox.box(size));
        }
    }

    public String getAsJavaString() {
        return this._xst.getAsJavaString();
    }

    public int getSize() {
        return this._xst.getSize() + 2;
    }

    public int serialize(byte[] bArr, int i) {
        this._xst.serialize(bArr, i);
        int size = this._xst.getSize() + i;
        LittleEndian.putUShort(bArr, size, 0);
        return (size + 2) - i;
    }

    public String toString() {
        return "[Xstz]" + this._xst.getAsJavaString() + "[/Xstz]";
    }

    public Xstz(byte[] bArr, int i) {
        this._chTerm = (short) 0;
        fillFields(bArr, i);
    }
}
