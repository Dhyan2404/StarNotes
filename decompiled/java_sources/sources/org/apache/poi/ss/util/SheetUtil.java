package org.apache.poi.ss.util;

import java.awt.font.FontRenderContext;
import java.awt.font.TextAttribute;
import java.awt.font.TextLayout;
import java.awt.geom.AffineTransform;
import java.awt.geom.Rectangle2D;
import java.text.AttributedString;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.CellValue;
import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.FormulaEvaluator;
import org.apache.poi.ss.usermodel.RichTextString;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.util.Internal;

/* loaded from: classes13.dex */
public class SheetUtil {
    public static final int DEFAULT_CHAR_WIDTH = 5;
    private static final char defaultChar = '0';
    private static final double fontHeightMultiple = 2.0d;
    private static final FormulaEvaluator dummyEvaluator = new FormulaEvaluator() { // from class: org.apache.poi.ss.util.SheetUtil.1
        @Override // org.apache.poi.ss.usermodel.FormulaEvaluator
        public void clearAllCachedResultValues() {
        }

        @Override // org.apache.poi.ss.usermodel.FormulaEvaluator
        public CellValue evaluate(Cell cell) {
            return null;
        }

        @Override // org.apache.poi.ss.usermodel.FormulaEvaluator
        public void evaluateAll() {
        }

        @Override // org.apache.poi.ss.usermodel.FormulaEvaluator
        public CellType evaluateFormulaCell(Cell cell) {
            return cell.getCachedFormulaResultType();
        }

        @Override // org.apache.poi.ss.usermodel.FormulaEvaluator
        public Cell evaluateInCell(Cell cell) {
            return null;
        }

        @Override // org.apache.poi.ss.usermodel.FormulaEvaluator
        public void notifyDeleteCell(Cell cell) {
        }

        @Override // org.apache.poi.ss.usermodel.FormulaEvaluator
        public void notifySetFormula(Cell cell) {
        }

        @Override // org.apache.poi.ss.usermodel.FormulaEvaluator
        public void notifyUpdateCell(Cell cell) {
        }

        @Override // org.apache.poi.ss.usermodel.FormulaEvaluator
        public void setDebugEvaluationOutputForNextEval(boolean z) {
        }

        @Override // org.apache.poi.ss.usermodel.FormulaEvaluator
        public void setIgnoreMissingWorkbooks(boolean z) {
        }

        @Override // org.apache.poi.ss.usermodel.FormulaEvaluator
        public void setupReferencedWorkbooks(Map<String, FormulaEvaluator> map) {
        }
    };
    private static final FontRenderContext fontRenderContext = new FontRenderContext((AffineTransform) null, true, true);
    private static final boolean ignoreMissingFontSystem = Boolean.parseBoolean(System.getProperty("org.apache.poi.ss.ignoreMissingFontSystem"));

    public static boolean canComputeColumnWidth(Font font) {
        AttributedString attributedString = new AttributedString("1w");
        copyAttributes(font, attributedString, 0, 2);
        return new TextLayout(attributedString.getIterator(), fontRenderContext).getBounds().getWidth() > 0.0d;
    }

    private static void copyAttributes(Font font, AttributedString attributedString, int i, int i2) {
        attributedString.addAttribute(TextAttribute.FAMILY, font.getFontName(), i, i2);
        attributedString.addAttribute(TextAttribute.SIZE, Float.valueOf(font.getFontHeightInPoints()));
        if (font.getBold()) {
            attributedString.addAttribute(TextAttribute.WEIGHT, TextAttribute.WEIGHT_BOLD, i, i2);
        }
        if (font.getItalic()) {
            attributedString.addAttribute(TextAttribute.POSTURE, TextAttribute.POSTURE_OBLIQUE, i, i2);
        }
        if (font.getUnderline() == 1) {
            attributedString.addAttribute(TextAttribute.UNDERLINE, TextAttribute.UNDERLINE_ON, i, i2);
        }
    }

    public static Cell getCell(Sheet sheet, int i, int i2) {
        Row row = sheet.getRow(i);
        if (row != null) {
            return row.getCell(i2);
        }
        return null;
    }

    public static double getCellWidth(Cell cell, int i, DataFormatter dataFormatter, boolean z) {
        return getCellWidth(cell, i, dataFormatter, z, cell.getSheet().getMergedRegions());
    }

    public static Cell getCellWithMerges(Sheet sheet, int i, int i2) {
        Row row;
        Cell cell = getCell(sheet, i, i2);
        if (cell != null) {
            return cell;
        }
        for (CellRangeAddress cellRangeAddress : sheet.getMergedRegions()) {
            if (cellRangeAddress.isInRange(i, i2) && (row = sheet.getRow(cellRangeAddress.getFirstRow())) != null) {
                return row.getCell(cellRangeAddress.getFirstColumn());
            }
        }
        return null;
    }

    public static double getColumnWidth(Sheet sheet, int i, boolean z) {
        return getColumnWidth(sheet, i, z, sheet.getFirstRowNum(), sheet.getLastRowNum());
    }

    private static double getColumnWidthForRow(Row row, int i, int i2, DataFormatter dataFormatter, boolean z, List<CellRangeAddress> list) {
        Cell cell;
        if (row == null || (cell = row.getCell(i)) == null) {
            return -1.0d;
        }
        return getCellWidth(cell, i2, dataFormatter, z, list);
    }

    @Internal
    public static int getDefaultCharWidth(Workbook workbook) {
        Font fontAt = workbook.getFontAt(0);
        AttributedString attributedString = new AttributedString(String.valueOf(defaultChar));
        copyAttributes(fontAt, attributedString, 0, 1);
        try {
            return (int) new TextLayout(attributedString.getIterator(), fontRenderContext).getAdvance();
        } catch (InternalError | NoClassDefFoundError | UnsatisfiedLinkError e) {
            if (ignoreMissingFontSystem) {
                return 5;
            }
            throw e;
        }
    }

    public static double getColumnWidth(Sheet sheet, int i, boolean z, int i2, int i3) {
        DataFormatter dataFormatter = new DataFormatter();
        int defaultCharWidth = getDefaultCharWidth(sheet.getWorkbook());
        List<CellRangeAddress> mergedRegions = sheet.getMergedRegions();
        double d = -1.0d;
        while (i2 <= i3) {
            Row row = sheet.getRow(i2);
            if (row != null) {
                d = Math.max(d, getColumnWidthForRow(row, i, defaultCharWidth, dataFormatter, z, mergedRegions));
            }
            i2++;
        }
        return d;
    }

    public static double getCellWidth(Cell cell, int i, DataFormatter dataFormatter, boolean z, List<CellRangeAddress> list) {
        String valueOf;
        Workbook workbook = cell.getSheet().getWorkbook();
        Row row = cell.getRow();
        int columnIndex = cell.getColumnIndex();
        int i2 = 1;
        for (CellRangeAddress cellRangeAddress : list) {
            if (cellRangeAddress.isInRange(row.getRowNum(), columnIndex)) {
                if (!z) {
                    return -1.0d;
                }
                cell = row.getCell(cellRangeAddress.getFirstColumn());
                i2 = (cellRangeAddress.getLastColumn() + 1) - cellRangeAddress.getFirstColumn();
            }
        }
        CellStyle cellStyle = cell.getCellStyle();
        CellType cellType = cell.getCellType();
        if (cellType == CellType.FORMULA) {
            cellType = cell.getCachedFormulaResultType();
        }
        Font fontAt = workbook.getFontAt(cellStyle.getFontIndex());
        double d = -1.0d;
        if (cellType == CellType.STRING) {
            RichTextString richStringCellValue = cell.getRichStringCellValue();
            if (richStringCellValue == null || richStringCellValue.getString() == null) {
                return -1.0d;
            }
            for (String str : richStringCellValue.getString().split("\\n")) {
                String str2 = str + defaultChar;
                AttributedString attributedString = new AttributedString(str2);
                copyAttributes(fontAt, attributedString, 0, str2.length());
                d = getCellWidth(i, i2, cellStyle, d, attributedString);
            }
            return d;
        }
        if (cellType == CellType.NUMERIC) {
            try {
                valueOf = dataFormatter.formatCellValue(cell, dummyEvaluator);
            } catch (Exception unused) {
                valueOf = String.valueOf(cell.getNumericCellValue());
            }
        } else {
            valueOf = cellType == CellType.BOOLEAN ? String.valueOf(cell.getBooleanCellValue()).toUpperCase(Locale.ROOT) : null;
        }
        if (valueOf == null) {
            return -1.0d;
        }
        String str3 = valueOf + defaultChar;
        AttributedString attributedString2 = new AttributedString(str3);
        copyAttributes(fontAt, attributedString2, 0, str3.length());
        return getCellWidth(i, i2, cellStyle, -1.0d, attributedString2);
    }

    private static double getCellWidth(int i, int i2, CellStyle cellStyle, double d, AttributedString attributedString) {
        Rectangle2D bounds;
        TextLayout textLayout = new TextLayout(attributedString.getIterator(), fontRenderContext);
        if (cellStyle.getRotation() != 0) {
            AffineTransform affineTransform = new AffineTransform();
            affineTransform.concatenate(AffineTransform.getRotateInstance(((cellStyle.getRotation() * 2.0d) * 3.141592653589793d) / 360.0d));
            affineTransform.concatenate(AffineTransform.getScaleInstance(1.0d, 2.0d));
            bounds = textLayout.getOutline(affineTransform).getBounds();
        } else {
            bounds = textLayout.getBounds();
        }
        return Math.max(d, (((bounds.getX() + bounds.getWidth()) / i2) / i) + cellStyle.getIndention());
    }
}
