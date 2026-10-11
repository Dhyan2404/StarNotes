package org.apache.poi.xssf.usermodel.extensions;

import java.util.Objects;
import org.apache.poi.ss.usermodel.BorderStyle;
import org.apache.poi.util.Internal;
import org.apache.poi.xssf.model.ThemesTable;
import org.apache.poi.xssf.usermodel.IndexedColorMap;
import org.apache.poi.xssf.usermodel.XSSFColor;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBorder;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBorderPr;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STBorderStyle;

/* loaded from: classes13.dex */
public class XSSFCellBorder {
    private final IndexedColorMap _indexedColorMap;
    private ThemesTable _theme;
    private final CTBorder border;

    /* renamed from: org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C199871 {

        /* renamed from: $SwitchMap$org$apache$poi$xssf$usermodel$extensions$XSSFCellBorder$BorderSide */
        static final /* synthetic */ int[] f111836xd5d30e7;

        static {
            int[] iArr = new int[BorderSide.values().length];
            f111836xd5d30e7 = iArr;
            try {
                iArr[BorderSide.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f111836xd5d30e7[BorderSide.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f111836xd5d30e7[BorderSide.BOTTOM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f111836xd5d30e7[BorderSide.LEFT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f111836xd5d30e7[BorderSide.DIAGONAL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f111836xd5d30e7[BorderSide.VERTICAL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f111836xd5d30e7[BorderSide.HORIZONTAL.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes13.dex */
    public enum BorderSide {
        TOP,
        RIGHT,
        BOTTOM,
        LEFT,
        DIAGONAL,
        VERTICAL,
        HORIZONTAL
    }

    public XSSFCellBorder(CTBorder cTBorder, ThemesTable themesTable, IndexedColorMap indexedColorMap) {
        this.border = cTBorder;
        this._indexedColorMap = indexedColorMap;
        this._theme = themesTable;
    }

    private CTBorderPr getBorder(BorderSide borderSide) {
        return getBorder(borderSide, false);
    }

    public boolean equals(Object obj) {
        boolean z;
        if (!(obj instanceof XSSFCellBorder)) {
            return false;
        }
        XSSFCellBorder xSSFCellBorder = (XSSFCellBorder) obj;
        for (BorderSide borderSide : BorderSide.values()) {
            if (!Objects.equals(getBorderColor(borderSide), xSSFCellBorder.getBorderColor(borderSide)) || !Objects.equals(getBorderStyle(borderSide), xSSFCellBorder.getBorderStyle(borderSide))) {
                z = false;
                break;
            }
        }
        z = true;
        if (!z || this.border.isSetDiagonalUp() != xSSFCellBorder.border.isSetDiagonalUp() || this.border.isSetDiagonalDown() != xSSFCellBorder.border.isSetDiagonalDown() || this.border.isSetOutline() != xSSFCellBorder.border.isSetOutline()) {
            return false;
        }
        if (this.border.isSetDiagonalUp() && this.border.getDiagonalUp() != xSSFCellBorder.border.getDiagonalUp()) {
            return false;
        }
        if (!this.border.isSetDiagonalDown() || this.border.getDiagonalDown() == xSSFCellBorder.border.getDiagonalDown()) {
            return !this.border.isSetOutline() || this.border.getOutline() == xSSFCellBorder.border.getOutline();
        }
        return false;
    }

    public XSSFColor getBorderColor(BorderSide borderSide) {
        CTBorderPr border = getBorder(borderSide);
        if (border == null || !border.isSetColor()) {
            return null;
        }
        XSSFColor from = XSSFColor.from(border.getColor(), this._indexedColorMap);
        ThemesTable themesTable = this._theme;
        if (themesTable != null) {
            themesTable.inheritFromThemeAsRequired(from);
        }
        return from;
    }

    public BorderStyle getBorderStyle(BorderSide borderSide) {
        return BorderStyle.values()[(getBorder(borderSide) == null ? STBorderStyle.NONE : r0.getStyle()).intValue() - 1];
    }

    @Internal
    public CTBorder getCTBorder() {
        return this.border;
    }

    public int hashCode() {
        return this.border.toString().hashCode();
    }

    public void setBorderColor(BorderSide borderSide, XSSFColor xSSFColor) {
        CTBorderPr border = getBorder(borderSide, true);
        if (xSSFColor == null) {
            border.unsetColor();
        } else {
            border.setColor(xSSFColor.getCTColor());
        }
    }

    public void setBorderStyle(BorderSide borderSide, BorderStyle borderStyle) {
        getBorder(borderSide, true).setStyle(STBorderStyle.Enum.forInt(borderStyle.ordinal() + 1));
    }

    public void setThemesTable(ThemesTable themesTable) {
        this._theme = themesTable;
    }

    private CTBorderPr getBorder(BorderSide borderSide, boolean z) {
        switch (C199871.f111836xd5d30e7[borderSide.ordinal()]) {
            case 1:
                CTBorderPr top = this.border.getTop();
                return (z && top == null) ? this.border.addNewTop() : top;
            case 2:
                CTBorderPr right = this.border.getRight();
                return (z && right == null) ? this.border.addNewRight() : right;
            case 3:
                CTBorderPr bottom = this.border.getBottom();
                return (z && bottom == null) ? this.border.addNewBottom() : bottom;
            case 4:
                CTBorderPr left = this.border.getLeft();
                return (z && left == null) ? this.border.addNewLeft() : left;
            case 5:
                CTBorderPr diagonal = this.border.getDiagonal();
                return (z && diagonal == null) ? this.border.addNewDiagonal() : diagonal;
            case 6:
                CTBorderPr vertical = this.border.getVertical();
                return (z && vertical == null) ? this.border.addNewVertical() : vertical;
            case 7:
                CTBorderPr horizontal = this.border.getHorizontal();
                return (z && horizontal == null) ? this.border.addNewHorizontal() : horizontal;
            default:
                throw new IllegalArgumentException("No suitable side specified for the border, had " + borderSide);
        }
    }

    public XSSFCellBorder(CTBorder cTBorder) {
        this(cTBorder, null, null);
    }

    public XSSFCellBorder(CTBorder cTBorder, IndexedColorMap indexedColorMap) {
        this(cTBorder, null, indexedColorMap);
    }

    public XSSFCellBorder() {
        this(CTBorder.Factory.newInstance(), null, null);
    }
}
