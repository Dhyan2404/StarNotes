package org.apache.poi.hwpf.model;

import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public final class OldPAPBinTable extends PAPBinTable {
    public OldPAPBinTable(byte[] bArr, int i, int i2, int i3, TextPieceTable textPieceTable) {
        PlexOfCps plexOfCps = new PlexOfCps(bArr, i, i2, 2);
        int length = plexOfCps.length();
        for (int i4 = 0; i4 < length; i4++) {
            for (PAPX papx : new PAPFormattedDiskPage(bArr, bArr, LittleEndian.getUShort(plexOfCps.getProperty(i4).getBytes()) * 512, textPieceTable).getPAPXs()) {
                if (papx != null) {
                    this._paragraphs.add(papx);
                }
            }
        }
    }
}
