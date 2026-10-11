package org.apache.poi.hssf.converter;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFDataFormatter;
import org.apache.poi.hssf.usermodel.HSSFRichTextString;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hwpf.converter.DefaultFontReplacer;
import org.apache.poi.hwpf.converter.FontReplacer;
import org.apache.poi.hwpf.converter.NumberFormatter;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.usermodel.CellType;
import org.w3c.dom.Document;

/* loaded from: classes12.dex */
public abstract class AbstractExcelConverter {
    private boolean outputHiddenColumns;
    private boolean outputHiddenRows;
    protected final HSSFDataFormatter _formatter = new HSSFDataFormatter();
    private FontReplacer fontReplacer = new DefaultFontReplacer();
    private boolean outputColumnHeaders = true;
    private boolean outputLeadingSpacesAsNonBreaking = true;
    private boolean outputRowNumbers = true;

    /* renamed from: org.apache.poi.hssf.converter.AbstractExcelConverter$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C194901 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType;

        static {
            int[] iArr = new int[CellType.values().length];
            $SwitchMap$org$apache$poi$ss$usermodel$CellType = iArr;
            try {
                iArr[CellType.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.NUMERIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.BOOLEAN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.FORMULA.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.BLANK.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public static int getColumnWidth(HSSFSheet hSSFSheet, int i) {
        return AbstractExcelUtils.getColumnWidthInPx(hSSFSheet.getColumnWidth(i));
    }

    public static int getDefaultColumnWidth(HSSFSheet hSSFSheet) {
        return AbstractExcelUtils.getColumnWidthInPx(hSSFSheet.getDefaultColumnWidth());
    }

    public String getColumnName(int i) {
        return NumberFormatter.getNumber(i + 1, 3);
    }

    public abstract Document getDocument();

    public FontReplacer getFontReplacer() {
        return this.fontReplacer;
    }

    public String getRowName(HSSFRow hSSFRow) {
        return String.valueOf(hSSFRow.getRowNum() + 1);
    }

    public boolean isOutputColumnHeaders() {
        return this.outputColumnHeaders;
    }

    public boolean isOutputHiddenColumns() {
        return this.outputHiddenColumns;
    }

    public boolean isOutputHiddenRows() {
        return this.outputHiddenRows;
    }

    public boolean isOutputLeadingSpacesAsNonBreaking() {
        return this.outputLeadingSpacesAsNonBreaking;
    }

    public boolean isOutputRowNumbers() {
        return this.outputRowNumbers;
    }

    public boolean isTextEmpty(HSSFCell hSSFCell) {
        int[] iArr = C194901.$SwitchMap$org$apache$poi$ss$usermodel$CellType;
        String str = "";
        switch (iArr[hSSFCell.getCellType().ordinal()]) {
            case 1:
                str = hSSFCell.getRichStringCellValue().getString();
                break;
            case 2:
                str = this._formatter.formatCellValue(hSSFCell);
                break;
            case 3:
                str = String.valueOf(hSSFCell.getBooleanCellValue());
                break;
            case 4:
                str = ErrorEval.getText(hSSFCell.getErrorCellValue());
                break;
            case 5:
                int i = iArr[hSSFCell.getCachedFormulaResultType().ordinal()];
                if (i == 1) {
                    HSSFRichTextString richStringCellValue = hSSFCell.getRichStringCellValue();
                    if (richStringCellValue != null && richStringCellValue.length() > 0) {
                        str = richStringCellValue.toString();
                        break;
                    } else {
                        return false;
                    }
                } else if (i == 2) {
                    HSSFCellStyle cellStyle = hSSFCell.getCellStyle();
                    str = this._formatter.formatRawCellContents(hSSFCell.getNumericCellValue(), cellStyle.getDataFormat(), cellStyle.getDataFormatString());
                    break;
                } else if (i == 3) {
                    str = String.valueOf(hSSFCell.getBooleanCellValue());
                    break;
                } else if (i == 4) {
                    str = ErrorEval.getText(hSSFCell.getErrorCellValue());
                    break;
                }
                break;
            case 6:
                break;
            default:
                return true;
        }
        return AbstractExcelUtils.isEmpty(str);
    }

    public void setFontReplacer(FontReplacer fontReplacer) {
        this.fontReplacer = fontReplacer;
    }

    public void setOutputColumnHeaders(boolean z) {
        this.outputColumnHeaders = z;
    }

    public void setOutputHiddenColumns(boolean z) {
        this.outputHiddenColumns = z;
    }

    public void setOutputHiddenRows(boolean z) {
        this.outputHiddenRows = z;
    }

    public void setOutputLeadingSpacesAsNonBreaking(boolean z) {
        this.outputLeadingSpacesAsNonBreaking = z;
    }

    public void setOutputRowNumbers(boolean z) {
        this.outputRowNumbers = z;
    }
}
