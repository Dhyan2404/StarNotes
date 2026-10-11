package org.apache.poi.style.page;

import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.ooxml.util.POIXMLUnits;
import org.apache.poi.style.Styles;
import org.apache.poi.util.CollectionUtils;
import org.apache.poi.util.ExtUnits;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColumn;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColumns;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPr;

/* loaded from: classes13.dex */
public class PageColumns implements Styles {
    float[] columnWidth;
    boolean equalWidth;
    int index;
    int num = 1;
    boolean sep;
    float[] spaces;

    private float getAverageSpace() {
        int i = 0;
        if (this.num <= 2) {
            return this.spaces[0];
        }
        float f = 0.0f;
        while (true) {
            if (i >= this.num - 1) {
                return ExtUnits.getFormatValue(f / (r1 - 1));
            }
            f += this.spaces[i];
            i++;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        PageColumns pageColumns = (PageColumns) obj;
        return this.num == pageColumns.num && this.sep == pageColumns.sep && Arrays.equals(this.columnWidth, pageColumns.columnWidth) && Arrays.equals(this.spaces, pageColumns.spaces);
    }

    public float[] getColumnWidth() {
        return this.columnWidth;
    }

    public String getGridItemStyle() {
        StringBuilder sb = new StringBuilder();
        sb.append("grid-area: 1 / ");
        int i = this.index + 1;
        this.index = i;
        sb.append(i);
        return sb.toString();
    }

    public int getIndex() {
        return this.index;
    }

    public int getNum() {
        return this.num;
    }

    public float[] getSpaces() {
        return this.spaces;
    }

    public boolean hasColumn() {
        int i = this.num;
        return i > 1 && this.index < i;
    }

    public int hashCode() {
        return (((Objects.hash(Integer.valueOf(this.num), Boolean.valueOf(this.sep)) * 31) + Arrays.hashCode(this.columnWidth)) * 31) + Arrays.hashCode(this.spaces);
    }

    public boolean isEqualWidth() {
        return this.equalWidth;
    }

    public boolean isSep() {
        return this.sep;
    }

    public void parse(CTSectPr cTSectPr, PageSize pageSize, PageMargin pageMargin) {
        if (cTSectPr.isSetCols()) {
            CTColumns cols = cTSectPr.getCols();
            if (cols.isSetNum()) {
                int intValue = cols.getNum().intValue();
                this.num = intValue;
                if (intValue <= 1) {
                    return;
                }
                this.sep = POIXMLUnits.parseOnOff(cols.xgetSep());
                this.equalWidth = POIXMLUnits.parseOnOff(cols.xgetEqualWidth());
                int i = this.num;
                this.columnWidth = new float[i];
                this.spaces = new float[i];
                List<CTColumn> colList = cols.getColList();
                int i2 = 0;
                if (CollectionUtils.isNonBlank(colList)) {
                    if (colList.size() != this.num) {
                        throw new POIXMLException(String.format("Expect col size: %d but is %d", Integer.valueOf(this.num), Integer.valueOf(colList.size())));
                    }
                    while (i2 < this.num) {
                        this.columnWidth[i2] = ExtUnits.parseLength(colList.get(i2).xgetW());
                        this.spaces[i2] = ExtUnits.parseLength(colList.get(i2).xgetSpace());
                        i2++;
                    }
                    return;
                }
                float parseLength = ExtUnits.parseLength(cols.xgetSpace());
                float f = (pageSize.width - pageMargin.left) - pageMargin.right;
                int i3 = this.num;
                float f2 = (f - ((i3 * parseLength) - 1.0f)) / i3;
                while (i2 < this.num) {
                    this.columnWidth[i2] = f2;
                    this.spaces[i2] = parseLength;
                    i2++;
                }
            }
        }
    }

    public String toString() {
        return "PageColumns{columnWidth=" + Arrays.toString(this.columnWidth) + ", spaces=" + Arrays.toString(this.spaces) + ", num=" + this.num + ", sep=" + this.sep + '}';
    }

    @Override // org.apache.poi.style.Styles
    public String toStyle() {
        StringBuilder sb = new StringBuilder();
        sb.append("display: grid;grid-gap:");
        sb.append(getAverageSpace());
        sb.append("px;");
        sb.append("grid-template-columns:");
        for (int i = 0; i < this.num; i++) {
            sb.append(' ');
            sb.append(this.columnWidth[i]);
            sb.append(ExtUnits.UNIT_PX);
        }
        sb.append(';');
        return sb.toString();
    }
}
