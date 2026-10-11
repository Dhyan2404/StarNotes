package org.apache.poi.xssf.binary;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.SortedMap;
import java.util.TreeMap;
import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.ss.usermodel.BuiltinFormats;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes13.dex */
public class XSSFBStylesTable extends XSSFBParser {
    private boolean inCellXFS;
    private boolean inFmts;
    private final SortedMap<Short, String> numberFormats;
    private final List<Short> styleIds;

    /* renamed from: org.apache.poi.xssf.binary.XSSFBStylesTable$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C199501 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$xssf$binary$XSSFBRecordType;

        static {
            int[] iArr = new int[XSSFBRecordType.values().length];
            $SwitchMap$org$apache$poi$xssf$binary$XSSFBRecordType = iArr;
            try {
                iArr[XSSFBRecordType.BrtBeginCellXFs.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$xssf$binary$XSSFBRecordType[XSSFBRecordType.BrtEndCellXFs.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$xssf$binary$XSSFBRecordType[XSSFBRecordType.BrtXf.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$xssf$binary$XSSFBRecordType[XSSFBRecordType.BrtBeginFmts.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$xssf$binary$XSSFBRecordType[XSSFBRecordType.BrtEndFmts.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$xssf$binary$XSSFBRecordType[XSSFBRecordType.BrtFmt.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public XSSFBStylesTable(InputStream inputStream) throws IOException {
        super(inputStream);
        this.numberFormats = new TreeMap();
        this.styleIds = new ArrayList();
        parse();
    }

    private void handleBrtXFInCellXF(byte[] bArr) {
        this.styleIds.add(Short.valueOf((short) (bArr[2] & 255)));
    }

    private void handleFormat(byte[] bArr) {
        int i = bArr[0] & 255;
        if (i > 32767) {
            throw new POIXMLException("Format id must be a short");
        }
        StringBuilder sb = new StringBuilder();
        XSSFBUtils.readXLWideString(bArr, 2, sb);
        this.numberFormats.put(Short.valueOf((short) i), sb.toString());
    }

    public short getNumberFormatIndex(int i) {
        return this.styleIds.get(i).shortValue();
    }

    public String getNumberFormatString(int i) {
        short numberFormatIndex = getNumberFormatIndex(i);
        return this.numberFormats.containsKey(Short.valueOf(numberFormatIndex)) ? this.numberFormats.get(Short.valueOf(numberFormatIndex)) : BuiltinFormats.getBuiltinFormat(numberFormatIndex);
    }

    @Override // org.apache.poi.xssf.binary.XSSFBParser
    public void handleRecord(int i, byte[] bArr) throws XSSFBParseException {
        switch (C199501.$SwitchMap$org$apache$poi$xssf$binary$XSSFBRecordType[XSSFBRecordType.lookup(i).ordinal()]) {
            case 1:
                this.inCellXFS = true;
                return;
            case 2:
                this.inCellXFS = false;
                return;
            case 3:
                if (this.inCellXFS) {
                    handleBrtXFInCellXF(bArr);
                    return;
                }
                return;
            case 4:
                this.inFmts = true;
                return;
            case 5:
                this.inFmts = false;
                return;
            case 6:
                if (this.inFmts) {
                    handleFormat(bArr);
                    return;
                }
                return;
            default:
                return;
        }
    }
}
