package org.apache.poi.xssf.usermodel.extensions;

import java.math.BigInteger;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.ReadingOrder;
import org.apache.poi.ss.usermodel.VerticalAlignment;
import org.apache.poi.util.Internal;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellAlignment;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STHorizontalAlignment;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STVerticalAlignment;

/* loaded from: classes13.dex */
public class XSSFCellAlignment {
    private final CTCellAlignment cellAlignement;

    public XSSFCellAlignment(CTCellAlignment cTCellAlignment) {
        this.cellAlignement = cTCellAlignment;
    }

    @Internal
    public CTCellAlignment getCTCellAlignment() {
        return this.cellAlignement;
    }

    public HorizontalAlignment getHorizontal() {
        STHorizontalAlignment.Enum horizontal = this.cellAlignement.getHorizontal();
        if (horizontal == null) {
            horizontal = STHorizontalAlignment.GENERAL;
        }
        return HorizontalAlignment.values()[horizontal.intValue() - 1];
    }

    public long getIndent() {
        return this.cellAlignement.getIndent();
    }

    public ReadingOrder getReadingOrder() {
        CTCellAlignment cTCellAlignment = this.cellAlignement;
        return (cTCellAlignment == null || !cTCellAlignment.isSetReadingOrder()) ? ReadingOrder.CONTEXT : ReadingOrder.forLong(this.cellAlignement.getReadingOrder());
    }

    public boolean getShrinkToFit() {
        return this.cellAlignement.getShrinkToFit();
    }

    public long getTextRotation() {
        if (this.cellAlignement.isSetTextRotation()) {
            return this.cellAlignement.getTextRotation().longValue();
        }
        return 0L;
    }

    public VerticalAlignment getVertical() {
        STVerticalAlignment.Enum vertical = this.cellAlignement.getVertical();
        if (vertical == null) {
            vertical = STVerticalAlignment.BOTTOM;
        }
        return VerticalAlignment.values()[vertical.intValue() - 1];
    }

    public boolean getWrapText() {
        return this.cellAlignement.getWrapText();
    }

    public void setHorizontal(HorizontalAlignment horizontalAlignment) {
        this.cellAlignement.setHorizontal(STHorizontalAlignment.Enum.forInt(horizontalAlignment.ordinal() + 1));
    }

    public void setIndent(long j) {
        this.cellAlignement.setIndent(j);
    }

    public void setReadingOrder(ReadingOrder readingOrder) {
        this.cellAlignement.setReadingOrder(readingOrder.getCode());
    }

    public void setShrinkToFit(boolean z) {
        this.cellAlignement.setShrinkToFit(z);
    }

    public void setTextRotation(long j) {
        if (j < 0 && j >= -90) {
            j = (j * (-1)) + 90;
        }
        this.cellAlignement.setTextRotation(BigInteger.valueOf(j));
    }

    public void setVertical(VerticalAlignment verticalAlignment) {
        this.cellAlignement.setVertical(STVerticalAlignment.Enum.forInt(verticalAlignment.ordinal() + 1));
    }

    public void setWrapText(boolean z) {
        this.cellAlignement.setWrapText(z);
    }
}
