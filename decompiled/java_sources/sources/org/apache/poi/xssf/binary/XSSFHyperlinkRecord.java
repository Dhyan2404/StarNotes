package org.apache.poi.xssf.binary;

import java.util.Objects;
import org.apache.logging.log4j.util.Chars;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes13.dex */
public class XSSFHyperlinkRecord {
    private final CellRangeAddress cellRangeAddress;
    private String display;
    private String location;
    private final String relId;
    private String toolTip;

    public XSSFHyperlinkRecord(CellRangeAddress cellRangeAddress, String str, String str2, String str3, String str4) {
        this.cellRangeAddress = cellRangeAddress;
        this.relId = str;
        this.location = str2;
        this.toolTip = str3;
        this.display = str4;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        XSSFHyperlinkRecord xSSFHyperlinkRecord = (XSSFHyperlinkRecord) obj;
        return Objects.equals(this.cellRangeAddress, xSSFHyperlinkRecord.cellRangeAddress) && Objects.equals(this.relId, xSSFHyperlinkRecord.relId) && Objects.equals(this.location, xSSFHyperlinkRecord.location) && Objects.equals(this.toolTip, xSSFHyperlinkRecord.toolTip) && Objects.equals(this.display, xSSFHyperlinkRecord.display);
    }

    public CellRangeAddress getCellRangeAddress() {
        return this.cellRangeAddress;
    }

    public String getDisplay() {
        return this.display;
    }

    public String getLocation() {
        return this.location;
    }

    public String getRelId() {
        return this.relId;
    }

    public String getToolTip() {
        return this.toolTip;
    }

    public int hashCode() {
        return Objects.hash(this.cellRangeAddress, this.relId, this.location, this.toolTip, this.display);
    }

    public void setDisplay(String str) {
        this.display = str;
    }

    public void setLocation(String str) {
        this.location = str;
    }

    public void setToolTip(String str) {
        this.toolTip = str;
    }

    public String toString() {
        return "XSSFHyperlinkRecord{cellRangeAddress=" + this.cellRangeAddress + ", relId='" + this.relId + Chars.QUOTE + ", location='" + this.location + Chars.QUOTE + ", toolTip='" + this.toolTip + Chars.QUOTE + ", display='" + this.display + Chars.QUOTE + '}';
    }
}
