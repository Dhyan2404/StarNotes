package org.apache.poi.hwpf.model;

import java.util.Arrays;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public final class UPX {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private byte[] _upx;

    public UPX(byte[] bArr) {
        this._upx = bArr;
    }

    public boolean equals(Object obj) {
        if (obj instanceof UPX) {
            return Arrays.equals(this._upx, ((UPX) obj)._upx);
        }
        return false;
    }

    public byte[] getUPX() {
        return this._upx;
    }

    public int hashCode() {
        return 42;
    }

    public int size() {
        return this._upx.length;
    }

    public String toString() {
        return "[UPX] " + Arrays.toString(this._upx);
    }
}
