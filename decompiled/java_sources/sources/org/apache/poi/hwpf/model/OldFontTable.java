package org.apache.poi.hwpf.model;

import java.util.ArrayList;
import java.util.Arrays;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public final class OldFontTable {
    private static final Logger LOG = LogManager.getLogger((Class<?>) OldFontTable.class);
    private final OldFfn[] _fontNames;

    public OldFontTable(byte[] bArr, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        LittleEndian.getShort(bArr, i);
        int i3 = i2 + i;
        int i4 = i + 2;
        while (true) {
            OldFfn build = OldFfn.build(bArr, i4, i3);
            if (build == null) {
                this._fontNames = (OldFfn[]) arrayList.toArray(new OldFfn[0]);
                return;
            } else {
                arrayList.add(build);
                i4 += build.getLength();
            }
        }
    }

    public OldFfn[] getFontNames() {
        return this._fontNames;
    }

    public String getMainFont(int i) {
        OldFfn[] oldFfnArr = this._fontNames;
        if (i < oldFfnArr.length) {
            return oldFfnArr[i].getMainFontName();
        }
        LOG.atInfo().log("Mismatch in chpFtc with stringCount");
        return null;
    }

    public String toString() {
        return "OldFontTable{_fontNames=" + Arrays.toString(this._fontNames) + '}';
    }
}
