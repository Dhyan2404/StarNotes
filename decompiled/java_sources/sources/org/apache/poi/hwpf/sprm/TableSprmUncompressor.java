package org.apache.poi.hwpf.sprm;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.hwpf.usermodel.BorderCode;
import org.apache.poi.hwpf.usermodel.TableCellDescriptor;
import org.apache.poi.hwpf.usermodel.TableProperties;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public final class TableSprmUncompressor extends SprmUncompressor {
    private static final Logger LOG = LogManager.getLogger((Class<?>) TableSprmUncompressor.class);

    public static void unCompressTAPOperation(TableProperties tableProperties, SprmOperation sprmOperation) {
        int i;
        int operation = sprmOperation.getOperation();
        if (operation == 0) {
            tableProperties.setJc((short) sprmOperation.getOperand());
            return;
        }
        int i2 = 0;
        if (operation == 1) {
            short[] rgdxaCenter = tableProperties.getRgdxaCenter();
            short itcMac = tableProperties.getItcMac();
            int operand = sprmOperation.getOperand() - (rgdxaCenter[0] + tableProperties.getDxaGapHalf());
            while (i2 < itcMac) {
                rgdxaCenter[i2] = (short) (rgdxaCenter[i2] + ((short) operand));
                i2++;
            }
            return;
        }
        if (operation == 2) {
            short[] rgdxaCenter2 = tableProperties.getRgdxaCenter();
            if (rgdxaCenter2 != null) {
                rgdxaCenter2[0] = (short) (rgdxaCenter2[0] + ((short) (tableProperties.getDxaGapHalf() - sprmOperation.getOperand())));
            }
            tableProperties.setDxaGapHalf(sprmOperation.getOperand());
            return;
        }
        if (operation == 3) {
            tableProperties.setFCantSplit(SprmUncompressor.getFlag(sprmOperation.getOperand()));
            return;
        }
        if (operation == 4) {
            tableProperties.setFTableHeader(SprmUncompressor.getFlag(sprmOperation.getOperand()));
            return;
        }
        if (operation == 5) {
            byte[] grpprl = sprmOperation.getGrpprl();
            int grpprlOffset = sprmOperation.getGrpprlOffset();
            tableProperties.setBrcTop(new BorderCode(grpprl, grpprlOffset));
            int i3 = grpprlOffset + 4;
            tableProperties.setBrcLeft(new BorderCode(grpprl, i3));
            int i4 = i3 + 4;
            tableProperties.setBrcBottom(new BorderCode(grpprl, i4));
            int i5 = i4 + 4;
            tableProperties.setBrcRight(new BorderCode(grpprl, i5));
            int i6 = i5 + 4;
            tableProperties.setBrcHorizontal(new BorderCode(grpprl, i6));
            tableProperties.setBrcVertical(new BorderCode(grpprl, i6 + 4));
            return;
        }
        if (operation == 7) {
            tableProperties.setDyaRowHeight(sprmOperation.getOperand());
            return;
        }
        if (operation == 8) {
            byte[] grpprl2 = sprmOperation.getGrpprl();
            int grpprlOffset2 = sprmOperation.getGrpprlOffset();
            int i7 = grpprl2[grpprlOffset2];
            int i8 = i7 + 1;
            short[] sArr = new short[i8];
            TableCellDescriptor[] tableCellDescriptorArr = new TableCellDescriptor[i7];
            tableProperties.setItcMac(i7);
            tableProperties.setRgdxaCenter(sArr);
            tableProperties.setRgtc(tableCellDescriptorArr);
            for (int i9 = 0; i9 < i7; i9++) {
                sArr[i9] = LittleEndian.getShort(grpprl2, (i9 * 2) + 1 + grpprlOffset2);
            }
            int i10 = (i8 * 2) + 1;
            boolean z = grpprlOffset2 + i10 < (sprmOperation.size() + grpprlOffset2) + (-6);
            while (i2 < i7) {
                if (!z || (i = (i2 * 20) + i10 + grpprlOffset2) >= grpprl2.length) {
                    tableCellDescriptorArr[i2] = new TableCellDescriptor();
                } else {
                    tableCellDescriptorArr[i2] = TableCellDescriptor.convertBytesToTC(grpprl2, i);
                }
                i2++;
            }
            sArr[i7] = LittleEndian.getShort(grpprl2, grpprlOffset2 + (i7 * 2) + 1);
            return;
        }
        if (operation != 33) {
            if (operation != 52) {
                return;
            }
            byte b = sprmOperation.getGrpprl()[sprmOperation.getGrpprlOffset() + 1];
            byte b2 = sprmOperation.getGrpprl()[sprmOperation.getGrpprlOffset() + 2];
            byte b3 = sprmOperation.getGrpprl()[sprmOperation.getGrpprlOffset() + 3];
            short s = LittleEndian.getShort(sprmOperation.getGrpprl(), sprmOperation.getGrpprlOffset() + 4);
            for (int i11 = sprmOperation.getGrpprl()[sprmOperation.getGrpprlOffset()]; i11 < b; i11++) {
                TableCellDescriptor tableCellDescriptor = tableProperties.getRgtc()[i11];
                if (tableCellDescriptor == null) {
                    throw new IllegalStateException("Cannot unCompress TAP, empty table cell descriptor, had : " + tableProperties.getRgtc().length + " Rgtc");
                }
                if ((b2 & 1) != 0) {
                    tableCellDescriptor.setFtsCellPaddingTop(b3);
                    tableCellDescriptor.setWCellPaddingTop(s);
                }
                if ((b2 & 2) != 0) {
                    tableCellDescriptor.setFtsCellPaddingLeft(b3);
                    tableCellDescriptor.setWCellPaddingLeft(s);
                }
                if ((b2 & 4) != 0) {
                    tableCellDescriptor.setFtsCellPaddingBottom(b3);
                    tableCellDescriptor.setWCellPaddingBottom(s);
                }
                if ((b2 & 8) != 0) {
                    tableCellDescriptor.setFtsCellPaddingRight(b3);
                    tableCellDescriptor.setWCellPaddingRight(s);
                }
            }
            return;
        }
        int operand2 = sprmOperation.getOperand();
        int i12 = ((-16777216) & operand2) >> 24;
        int i13 = (16711680 & operand2) >> 16;
        int i14 = operand2 & 65535;
        short itcMac2 = tableProperties.getItcMac();
        int i15 = itcMac2 + i13;
        short[] sArr2 = new short[i15 + 1];
        TableCellDescriptor[] tableCellDescriptorArr2 = new TableCellDescriptor[i15];
        if (i12 >= itcMac2) {
            System.arraycopy(tableProperties.getRgdxaCenter(), 0, sArr2, 0, itcMac2 + 1);
            System.arraycopy(tableProperties.getRgtc(), 0, tableCellDescriptorArr2, 0, itcMac2);
            i12 = itcMac2;
        } else {
            int i16 = i12 + 1;
            System.arraycopy(tableProperties.getRgdxaCenter(), 0, sArr2, 0, i16);
            int i17 = i12 + i13;
            int i18 = itcMac2 - i12;
            System.arraycopy(tableProperties.getRgdxaCenter(), i16, sArr2, i17, i18);
            System.arraycopy(tableProperties.getRgtc(), 0, tableCellDescriptorArr2, 0, i12);
            System.arraycopy(tableProperties.getRgtc(), i12, tableCellDescriptorArr2, i17, i18);
        }
        int i19 = i12;
        while (true) {
            int i20 = i12 + i13;
            if (i19 >= i20) {
                sArr2[i20] = (short) (sArr2[i20 - 1] + i14);
                return;
            } else {
                tableCellDescriptorArr2[i19] = new TableCellDescriptor();
                sArr2[i19] = (short) (sArr2[i19 - 1] + i14);
                i19++;
            }
        }
    }

    public static TableProperties uncompressTAP(SprmBuffer sprmBuffer) {
        TableProperties tableProperties;
        if (sprmBuffer.findSprm((short) -10744) != null) {
            tableProperties = new TableProperties(r0.getGrpprl()[r0.getGrpprlOffset()]);
        } else {
            LOG.atWarn().log("Some table rows didn't specify number of columns in SPRMs");
            tableProperties = new TableProperties((short) 1);
        }
        SprmIterator it2 = sprmBuffer.iterator();
        while (it2.hasNext()) {
            SprmOperation next = it2.next();
            if (next.getType() == 5) {
                try {
                    unCompressTAPOperation(tableProperties, next);
                } catch (ArrayIndexOutOfBoundsException e) {
                    LOG.atError().withThrowable(e).log("Unable to apply {}", next);
                }
            }
        }
        return tableProperties;
    }
}
