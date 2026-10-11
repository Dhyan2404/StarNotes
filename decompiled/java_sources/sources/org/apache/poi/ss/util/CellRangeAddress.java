package org.apache.poi.ss.util;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import org.apache.poi.hssf.record.RecordInputStream;
import org.apache.poi.ss.formula.SheetNameFormatter;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes13.dex */
public class CellRangeAddress extends CellRangeAddressBase {
    public static final int ENCODED_SIZE = 8;

    public CellRangeAddress(int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
        if (i2 < i || i4 < i3) {
            throw new IllegalArgumentException("Invalid cell range, having lastRow < firstRow || lastCol < firstCol, had rows " + i2 + CloudStorageConstants.OPERATION_GREATER_EQUAL + i + " or cells " + i4 + CloudStorageConstants.OPERATION_GREATER_EQUAL + i3);
        }
    }

    public static int getEncodedSize(int i) {
        return i * 8;
    }

    private static int readUShortAndCheck(RecordInputStream recordInputStream) {
        if (recordInputStream.remaining() >= 8) {
            return recordInputStream.readUShort();
        }
        throw new IllegalArgumentException("Ran out of data reading CellRangeAddress");
    }

    public static CellRangeAddress valueOf(String str) {
        CellReference cellReference;
        CellReference cellReference2;
        int indexOf = str.indexOf(58);
        if (indexOf == -1) {
            cellReference2 = new CellReference(str);
            cellReference = cellReference2;
        } else {
            CellReference cellReference3 = new CellReference(str.substring(0, indexOf));
            cellReference = new CellReference(str.substring(indexOf + 1));
            cellReference2 = cellReference3;
        }
        return new CellRangeAddress(cellReference2.getRow(), cellReference.getRow(), cellReference2.getCol(), cellReference.getCol());
    }

    public String formatAsString() {
        return formatAsString(null, false);
    }

    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(getFirstRow());
        littleEndianOutput.writeShort(getLastRow());
        littleEndianOutput.writeShort(getFirstColumn());
        littleEndianOutput.writeShort(getLastColumn());
    }

    @Override // org.apache.poi.common.Duplicatable
    public CellRangeAddress copy() {
        return new CellRangeAddress(getFirstRow(), getLastRow(), getFirstColumn(), getLastColumn());
    }

    public String formatAsString(String str, boolean z) {
        StringBuilder sb = new StringBuilder();
        if (str != null) {
            sb.append(SheetNameFormatter.format(str));
            sb.append(PublicSuffixDatabase.f103895g);
        }
        CellReference cellReference = new CellReference(getFirstRow(), getFirstColumn(), z, z);
        CellReference cellReference2 = new CellReference(getLastRow(), getLastColumn(), z, z);
        sb.append(cellReference.formatAsString());
        if (!cellReference.equals(cellReference2) || isFullColumnRange() || isFullRowRange()) {
            sb.append(':');
            sb.append(cellReference2.formatAsString());
        }
        return sb.toString();
    }

    public CellRangeAddress(RecordInputStream recordInputStream) {
        super(readUShortAndCheck(recordInputStream), recordInputStream.readUShort(), recordInputStream.readUShort(), recordInputStream.readUShort());
    }
}
