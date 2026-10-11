package org.apache.poi.hwpf.model;

import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public final class OldSectionTable extends SectionTable {
    @Deprecated
    public OldSectionTable(byte[] bArr, int i, int i2, int i3, TextPieceTable textPieceTable) {
        this(bArr, i, i2);
    }

    public OldSectionTable(byte[] bArr, int i, int i2) {
        SEPX sepx;
        PlexOfCps plexOfCps = new PlexOfCps(bArr, i, i2, 12);
        int length = plexOfCps.length();
        for (int i3 = 0; i3 < length; i3++) {
            GenericPropertyNode property = plexOfCps.getProperty(i3);
            SectionDescriptor sectionDescriptor = new SectionDescriptor(property.getBytes(), 0);
            int fc = sectionDescriptor.getFc();
            int start = property.getStart();
            int end = property.getEnd();
            if (fc == -1) {
                sepx = new SEPX(sectionDescriptor, start, end, new byte[0]);
            } else {
                sepx = new SEPX(sectionDescriptor, start, end, IOUtils.safelyClone(bArr, fc + 2, LittleEndian.getShort(bArr, fc) + 2, 32769));
            }
            this._sections.add(sepx);
        }
        this._sections.sort(PropertyNode.StartComparator);
    }
}
