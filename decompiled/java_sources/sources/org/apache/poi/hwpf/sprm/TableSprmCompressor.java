package org.apache.poi.hwpf.sprm;

import java.util.ArrayList;
import java.util.Arrays;
import org.apache.poi.hwpf.usermodel.TableCellDescriptor;
import org.apache.poi.hwpf.usermodel.TableProperties;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public final class TableSprmCompressor {
    public static byte[] compressTableProperty(TableProperties tableProperties) {
        ArrayList arrayList = new ArrayList();
        int addSprm = tableProperties.getJc() != 0 ? SprmUtils.addSprm((short) 21504, tableProperties.getJc(), null, arrayList) + 0 : 0;
        if (tableProperties.getFCantSplit()) {
            addSprm += SprmUtils.addSprm((short) 13315, 1, null, arrayList);
        }
        if (tableProperties.getFTableHeader()) {
            addSprm += SprmUtils.addSprm((short) 13316, 1, null, arrayList);
        }
        byte[] bArr = new byte[24];
        tableProperties.getBrcTop().serialize(bArr, 0);
        tableProperties.getBrcLeft().serialize(bArr, 4);
        tableProperties.getBrcBottom().serialize(bArr, 8);
        tableProperties.getBrcRight().serialize(bArr, 12);
        tableProperties.getBrcHorizontal().serialize(bArr, 16);
        tableProperties.getBrcVertical().serialize(bArr, 20);
        if (!Arrays.equals(bArr, new byte[24])) {
            addSprm += SprmUtils.addSprm((short) -10747, 0, bArr, arrayList);
        }
        if (tableProperties.getDyaRowHeight() != 0) {
            addSprm += SprmUtils.addSprm((short) -27641, tableProperties.getDyaRowHeight(), null, arrayList);
        }
        if (tableProperties.getItcMac() > 0) {
            short itcMac = tableProperties.getItcMac();
            long j = itcMac;
            byte[] safelyAllocate = IOUtils.safelyAllocate(((j + 1) * 2) + 1 + (j * 20), SprmUtils.MAX_RECORD_LENGTH);
            safelyAllocate[0] = (byte) itcMac;
            short[] rgdxaCenter = tableProperties.getRgdxaCenter();
            for (int i = 0; i < rgdxaCenter.length; i++) {
                LittleEndian.putShort(safelyAllocate, (i * 2) + 1, rgdxaCenter[i]);
            }
            TableCellDescriptor[] rgtc = tableProperties.getRgtc();
            for (int i2 = 0; i2 < rgtc.length; i2++) {
                rgtc[i2].serialize(safelyAllocate, ((itcMac + 1) * 2) + 1 + (i2 * 20));
            }
            addSprm += SprmUtils.addSpecialSprm((short) -10744, safelyAllocate, arrayList);
        }
        if (tableProperties.getTlp() != null && !tableProperties.getTlp().isEmpty()) {
            byte[] bArr2 = new byte[4];
            tableProperties.getTlp().serialize(bArr2, 0);
            addSprm += SprmUtils.addSprm((short) 29706, 0, bArr2, arrayList);
        }
        return SprmUtils.getGrpprl(arrayList, addSprm);
    }
}
