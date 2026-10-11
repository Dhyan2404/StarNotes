package org.apache.poi.hwpf.model;

import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public final class OldCHPBinTable extends CHPBinTable {
    public OldCHPBinTable(byte[] bArr, int i, int i2, int i3, OldTextPieceTable oldTextPieceTable) {
        PlexOfCps plexOfCps = new PlexOfCps(bArr, i, i2, 2);
        int length = plexOfCps.length();
        for (int i4 = 0; i4 < length; i4++) {
            for (CHPX chpx : new CHPFormattedDiskPage(bArr, LittleEndian.getUShort(plexOfCps.getProperty(i4).getBytes()) * 512, oldTextPieceTable).getCHPXs()) {
                if (chpx != null) {
                    this._textRuns.add(chpx);
                }
            }
        }
        this._textRuns.sort(PropertyNode.StartComparator);
    }
}
