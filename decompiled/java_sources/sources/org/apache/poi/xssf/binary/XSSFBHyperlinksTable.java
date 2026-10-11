package org.apache.poi.xssf.binary;

import com.zaxxer.sparsebits.SparseBitSet;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.openxml4j.opc.PackageRelationship;
import org.apache.poi.ss.util.CellAddress;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.ss.util.CellRangeUtil;
import org.apache.poi.util.Internal;
import org.apache.poi.xssf.usermodel.XSSFRelation;

@Internal
/* loaded from: classes13.dex */
public class XSSFBHyperlinksTable {
    private static final SparseBitSet RECORDS;
    private final List<XSSFHyperlinkRecord> hyperlinkRecords = new ArrayList();
    private Map<String, String> relIdToHyperlink = new HashMap();

    /* loaded from: classes13.dex */
    public class HyperlinkSheetScraper extends XSSFBParser {
        private XSSFBCellRange hyperlinkCellRange;
        private final StringBuilder xlWideStringBuffer;

        public HyperlinkSheetScraper(InputStream inputStream) {
            super(inputStream, XSSFBHyperlinksTable.RECORDS);
            this.hyperlinkCellRange = new XSSFBCellRange();
            this.xlWideStringBuffer = new StringBuilder();
        }

        @Override // org.apache.poi.xssf.binary.XSSFBParser
        public void handleRecord(int i, byte[] bArr) throws XSSFBParseException {
            if (i != XSSFBRecordType.BrtHLink.getId()) {
                return;
            }
            this.hyperlinkCellRange = XSSFBCellRange.parse(bArr, 0, this.hyperlinkCellRange);
            this.xlWideStringBuffer.setLength(0);
            int readXLNullableWideString = 16 + XSSFBUtils.readXLNullableWideString(bArr, 16, this.xlWideStringBuffer);
            String sb = this.xlWideStringBuffer.toString();
            this.xlWideStringBuffer.setLength(0);
            int readXLWideString = readXLNullableWideString + XSSFBUtils.readXLWideString(bArr, readXLNullableWideString, this.xlWideStringBuffer);
            String sb2 = this.xlWideStringBuffer.toString();
            this.xlWideStringBuffer.setLength(0);
            int readXLWideString2 = readXLWideString + XSSFBUtils.readXLWideString(bArr, readXLWideString, this.xlWideStringBuffer);
            String sb3 = this.xlWideStringBuffer.toString();
            this.xlWideStringBuffer.setLength(0);
            XSSFBUtils.readXLWideString(bArr, readXLWideString2, this.xlWideStringBuffer);
            String sb4 = this.xlWideStringBuffer.toString();
            XSSFBCellRange xSSFBCellRange = this.hyperlinkCellRange;
            XSSFBHyperlinksTable.this.hyperlinkRecords.add(new XSSFHyperlinkRecord(new CellRangeAddress(xSSFBCellRange.firstRow, xSSFBCellRange.lastRow, xSSFBCellRange.firstCol, xSSFBCellRange.lastCol), sb, sb2.length() == 0 ? (String) XSSFBHyperlinksTable.this.relIdToHyperlink.get(sb) : sb2, sb3, sb4));
        }
    }

    /* loaded from: classes13.dex */
    public static class TopLeftCellAddressComparator implements Comparator<CellAddress>, Serializable {
        private static final long serialVersionUID = 1;

        private TopLeftCellAddressComparator() {
        }

        @Override // java.util.Comparator
        public int compare(CellAddress cellAddress, CellAddress cellAddress2) {
            if (cellAddress.getRow() < cellAddress2.getRow()) {
                return -1;
            }
            if (cellAddress.getRow() > cellAddress2.getRow()) {
                return 1;
            }
            if (cellAddress.getColumn() < cellAddress2.getColumn()) {
                return -1;
            }
            return cellAddress.getColumn() > cellAddress2.getColumn() ? 1 : 0;
        }
    }

    static {
        SparseBitSet sparseBitSet = new SparseBitSet();
        RECORDS = sparseBitSet;
        sparseBitSet.set(XSSFBRecordType.BrtHLink.getId());
    }

    public XSSFBHyperlinksTable(PackagePart packagePart) throws IOException {
        loadUrlsFromSheetRels(packagePart);
        InputStream inputStream = packagePart.getInputStream();
        try {
            new HyperlinkSheetScraper(inputStream).parse();
            if (inputStream != null) {
                inputStream.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    private void loadUrlsFromSheetRels(PackagePart packagePart) {
        try {
            Iterator<PackageRelationship> it2 = packagePart.getRelationshipsByType(XSSFRelation.SHEET_HYPERLINKS.getRelation()).iterator();
            while (it2.hasNext()) {
                PackageRelationship next = it2.next();
                this.relIdToHyperlink.put(next.getId(), next.getTargetURI().toString());
            }
        } catch (InvalidFormatException unused) {
        }
    }

    public List<XSSFHyperlinkRecord> findHyperlinkRecord(CellAddress cellAddress) {
        CellRangeAddress cellRangeAddress = new CellRangeAddress(cellAddress.getRow(), cellAddress.getRow(), cellAddress.getColumn(), cellAddress.getColumn());
        ArrayList arrayList = null;
        for (XSSFHyperlinkRecord xSSFHyperlinkRecord : this.hyperlinkRecords) {
            if (CellRangeUtil.intersect(cellRangeAddress, xSSFHyperlinkRecord.getCellRangeAddress()) != 1) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(xSSFHyperlinkRecord);
            }
        }
        return arrayList;
    }

    public Map<CellAddress, List<XSSFHyperlinkRecord>> getHyperLinks() {
        TreeMap treeMap = new TreeMap(new TopLeftCellAddressComparator());
        for (XSSFHyperlinkRecord xSSFHyperlinkRecord : this.hyperlinkRecords) {
            CellAddress cellAddress = new CellAddress(xSSFHyperlinkRecord.getCellRangeAddress().getFirstRow(), xSSFHyperlinkRecord.getCellRangeAddress().getFirstColumn());
            List list = (List) treeMap.get(cellAddress);
            if (list == null) {
                list = new ArrayList();
            }
            list.add(xSSFHyperlinkRecord);
            treeMap.put(cellAddress, list);
        }
        return treeMap;
    }
}
