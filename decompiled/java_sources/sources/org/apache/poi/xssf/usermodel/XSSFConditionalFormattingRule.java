package org.apache.poi.xssf.usermodel;

import java.util.HashMap;
import java.util.Map;
import org.apache.poi.ss.usermodel.ConditionFilterData;
import org.apache.poi.ss.usermodel.ConditionFilterType;
import org.apache.poi.ss.usermodel.ConditionType;
import org.apache.poi.ss.usermodel.ConditionalFormattingRule;
import org.apache.poi.ss.usermodel.ConditionalFormattingThreshold;
import org.apache.poi.ss.usermodel.ExcelNumberFormat;
import org.apache.poi.ss.usermodel.IconMultiStateFormatting;
import org.apache.poi.xssf.model.StylesTable;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBorder;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCfRule;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCfvo;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColorScale;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataBar;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDxf;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFill;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIconSet;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTNumFmt;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STCfType;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STCfvoType;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STConditionalFormattingOperator;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STIconSetType;

/* loaded from: classes13.dex */
public class XSSFConditionalFormattingRule implements ConditionalFormattingRule {
    private static final Map<STCfType.Enum, ConditionFilterType> filterTypeLookup;
    private static final Map<STCfType.Enum, ConditionType> typeLookup;
    private final CTCfRule _cfRule;
    private final XSSFSheet _sh;

    static {
        HashMap hashMap = new HashMap();
        typeLookup = hashMap;
        HashMap hashMap2 = new HashMap();
        filterTypeLookup = hashMap2;
        hashMap.put(STCfType.CELL_IS, ConditionType.CELL_VALUE_IS);
        hashMap.put(STCfType.EXPRESSION, ConditionType.FORMULA);
        hashMap.put(STCfType.COLOR_SCALE, ConditionType.COLOR_SCALE);
        hashMap.put(STCfType.DATA_BAR, ConditionType.DATA_BAR);
        hashMap.put(STCfType.ICON_SET, ConditionType.ICON_SET);
        STCfType.Enum r2 = STCfType.TOP_10;
        ConditionType conditionType = ConditionType.FILTER;
        hashMap.put(r2, conditionType);
        STCfType.Enum r4 = STCfType.UNIQUE_VALUES;
        hashMap.put(r4, conditionType);
        STCfType.Enum r5 = STCfType.DUPLICATE_VALUES;
        hashMap.put(r5, conditionType);
        STCfType.Enum r6 = STCfType.CONTAINS_TEXT;
        hashMap.put(r6, conditionType);
        STCfType.Enum r7 = STCfType.NOT_CONTAINS_TEXT;
        hashMap.put(r7, conditionType);
        STCfType.Enum r8 = STCfType.BEGINS_WITH;
        hashMap.put(r8, conditionType);
        STCfType.Enum r9 = STCfType.ENDS_WITH;
        hashMap.put(r9, conditionType);
        STCfType.Enum r10 = STCfType.CONTAINS_BLANKS;
        hashMap.put(r10, conditionType);
        STCfType.Enum r11 = STCfType.NOT_CONTAINS_BLANKS;
        hashMap.put(r11, conditionType);
        STCfType.Enum r12 = STCfType.CONTAINS_ERRORS;
        hashMap.put(r12, conditionType);
        STCfType.Enum r13 = STCfType.NOT_CONTAINS_ERRORS;
        hashMap.put(r13, conditionType);
        STCfType.Enum r14 = STCfType.TIME_PERIOD;
        hashMap.put(r14, conditionType);
        STCfType.Enum r15 = STCfType.ABOVE_AVERAGE;
        hashMap.put(r15, conditionType);
        hashMap2.put(r2, ConditionFilterType.TOP_10);
        hashMap2.put(r4, ConditionFilterType.UNIQUE_VALUES);
        hashMap2.put(r5, ConditionFilterType.DUPLICATE_VALUES);
        hashMap2.put(r6, ConditionFilterType.CONTAINS_TEXT);
        hashMap2.put(r7, ConditionFilterType.NOT_CONTAINS_TEXT);
        hashMap2.put(r8, ConditionFilterType.BEGINS_WITH);
        hashMap2.put(r9, ConditionFilterType.ENDS_WITH);
        hashMap2.put(r10, ConditionFilterType.CONTAINS_BLANKS);
        hashMap2.put(r11, ConditionFilterType.NOT_CONTAINS_BLANKS);
        hashMap2.put(r12, ConditionFilterType.CONTAINS_ERRORS);
        hashMap2.put(r13, ConditionFilterType.NOT_CONTAINS_ERRORS);
        hashMap2.put(r14, ConditionFilterType.TIME_PERIOD);
        hashMap2.put(r15, ConditionFilterType.ABOVE_AVERAGE);
    }

    public XSSFConditionalFormattingRule(XSSFSheet xSSFSheet) {
        this._cfRule = CTCfRule.Factory.newInstance();
        this._sh = xSSFSheet;
    }

    public XSSFColorScaleFormatting createColorScaleFormatting() {
        if (this._cfRule.isSetColorScale() && this._cfRule.getType() == STCfType.COLOR_SCALE) {
            return getColorScaleFormatting();
        }
        this._cfRule.setType(STCfType.COLOR_SCALE);
        CTColorScale colorScale = this._cfRule.isSetColorScale() ? this._cfRule.getColorScale() : this._cfRule.addNewColorScale();
        if (colorScale.sizeOfCfvoArray() == 0) {
            colorScale.addNewCfvo().setType(STCfvoType.Enum.forString(ConditionalFormattingThreshold.RangeType.MIN.name));
            CTCfvo addNewCfvo = colorScale.addNewCfvo();
            addNewCfvo.setType(STCfvoType.Enum.forString(ConditionalFormattingThreshold.RangeType.PERCENTILE.name));
            addNewCfvo.setVal("50");
            colorScale.addNewCfvo().setType(STCfvoType.Enum.forString(ConditionalFormattingThreshold.RangeType.MAX.name));
            for (int i = 0; i < 3; i++) {
                colorScale.addNewColor();
            }
        }
        return new XSSFColorScaleFormatting(colorScale, this._sh.getWorkbook().getStylesSource().getIndexedColors());
    }

    public XSSFDataBarFormatting createDataBarFormatting(XSSFColor xSSFColor) {
        if (this._cfRule.isSetDataBar() && this._cfRule.getType() == STCfType.DATA_BAR) {
            return getDataBarFormatting();
        }
        this._cfRule.setType(STCfType.DATA_BAR);
        CTDataBar dataBar = this._cfRule.isSetDataBar() ? this._cfRule.getDataBar() : this._cfRule.addNewDataBar();
        dataBar.setColor(xSSFColor.getCTColor());
        dataBar.addNewCfvo().setType(STCfvoType.Enum.forString(ConditionalFormattingThreshold.RangeType.MIN.name));
        dataBar.addNewCfvo().setType(STCfvoType.Enum.forString(ConditionalFormattingThreshold.RangeType.MAX.name));
        return new XSSFDataBarFormatting(dataBar, this._sh.getWorkbook().getStylesSource().getIndexedColors());
    }

    public XSSFIconMultiStateFormatting createMultiStateFormatting(IconMultiStateFormatting.IconSet iconSet) {
        if (this._cfRule.isSetIconSet() && this._cfRule.getType() == STCfType.ICON_SET) {
            return getMultiStateFormatting();
        }
        this._cfRule.setType(STCfType.ICON_SET);
        boolean isSetIconSet = this._cfRule.isSetIconSet();
        CTCfRule cTCfRule = this._cfRule;
        CTIconSet iconSet2 = isSetIconSet ? cTCfRule.getIconSet() : cTCfRule.addNewIconSet();
        String str = iconSet.name;
        if (str != null) {
            iconSet2.setIconSet(STIconSetType.Enum.forString(str));
        }
        int i = 100 / iconSet.num;
        STCfvoType.Enum forString = STCfvoType.Enum.forString(ConditionalFormattingThreshold.RangeType.PERCENT.name);
        for (int i2 = 0; i2 < iconSet.num; i2++) {
            CTCfvo addNewCfvo = iconSet2.addNewCfvo();
            addNewCfvo.setType(forString);
            addNewCfvo.setVal(Integer.toString(i2 * i));
        }
        return new XSSFIconMultiStateFormatting(iconSet2);
    }

    public CTCfRule getCTCfRule() {
        return this._cfRule;
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormattingRule
    public byte getComparisonOperation() {
        STConditionalFormattingOperator.Enum operator = this._cfRule.getOperator();
        if (operator == null) {
            return (byte) 0;
        }
        switch (operator.intValue()) {
            case 1:
                return (byte) 6;
            case 2:
                return (byte) 8;
            case 3:
                return (byte) 3;
            case 4:
                return (byte) 4;
            case 5:
                return (byte) 7;
            case 6:
                return (byte) 5;
            case 7:
                return (byte) 1;
            case 8:
                return (byte) 2;
            default:
                return (byte) 0;
        }
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormattingRule
    public ConditionFilterType getConditionFilterType() {
        return filterTypeLookup.get(this._cfRule.getType());
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormattingRule
    public ConditionType getConditionType() {
        return typeLookup.get(this._cfRule.getType());
    }

    public CTDxf getDxf(boolean z) {
        StylesTable stylesSource = this._sh.getWorkbook().getStylesSource();
        CTDxf dxfAt = (stylesSource._getDXfsSize() <= 0 || !this._cfRule.isSetDxfId()) ? null : stylesSource.getDxfAt((int) this._cfRule.getDxfId());
        if (!z || dxfAt != null) {
            return dxfAt;
        }
        CTDxf newInstance = CTDxf.Factory.newInstance();
        this._cfRule.setDxfId(stylesSource.putDxf(newInstance) - 1);
        return newInstance;
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormattingRule
    public ConditionFilterData getFilterConfiguration() {
        return new XSSFConditionFilterData(this._cfRule);
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormattingRule
    public String getFormula1() {
        if (this._cfRule.sizeOfFormulaArray() > 0) {
            return this._cfRule.getFormulaArray(0);
        }
        return null;
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormattingRule
    public String getFormula2() {
        if (this._cfRule.sizeOfFormulaArray() == 2) {
            return this._cfRule.getFormulaArray(1);
        }
        return null;
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormattingRule, org.apache.poi.ss.usermodel.DifferentialStyleProvider
    public ExcelNumberFormat getNumberFormat() {
        CTDxf dxf = getDxf(false);
        if (dxf == null || !dxf.isSetNumFmt()) {
            return null;
        }
        CTNumFmt numFmt = dxf.getNumFmt();
        return new ExcelNumberFormat((int) numFmt.getNumFmtId(), numFmt.getFormatCode());
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormattingRule
    public int getPriority() {
        int priority = this._cfRule.getPriority();
        if (priority >= 1) {
            return priority;
        }
        return 0;
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormattingRule
    public boolean getStopIfTrue() {
        return this._cfRule.getStopIfTrue();
    }

    @Override // org.apache.poi.ss.usermodel.DifferentialStyleProvider
    public int getStripeSize() {
        return 0;
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormattingRule
    public String getText() {
        return this._cfRule.getText();
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormattingRule
    public XSSFBorderFormatting createBorderFormatting() {
        CTBorder border;
        CTDxf dxf = getDxf(true);
        if (!dxf.isSetBorder()) {
            border = dxf.addNewBorder();
        } else {
            border = dxf.getBorder();
        }
        return new XSSFBorderFormatting(border, this._sh.getWorkbook().getStylesSource().getIndexedColors());
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormattingRule
    public XSSFFontFormatting createFontFormatting() {
        CTFont font;
        CTDxf dxf = getDxf(true);
        if (!dxf.isSetFont()) {
            font = dxf.addNewFont();
        } else {
            font = dxf.getFont();
        }
        return new XSSFFontFormatting(font, this._sh.getWorkbook().getStylesSource().getIndexedColors());
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormattingRule
    public XSSFPatternFormatting createPatternFormatting() {
        CTFill fill;
        CTDxf dxf = getDxf(true);
        if (!dxf.isSetFill()) {
            fill = dxf.addNewFill();
        } else {
            fill = dxf.getFill();
        }
        return new XSSFPatternFormatting(fill, this._sh.getWorkbook().getStylesSource().getIndexedColors());
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormattingRule, org.apache.poi.ss.usermodel.DifferentialStyleProvider
    public XSSFBorderFormatting getBorderFormatting() {
        CTDxf dxf = getDxf(false);
        if (dxf == null || !dxf.isSetBorder()) {
            return null;
        }
        return new XSSFBorderFormatting(dxf.getBorder(), this._sh.getWorkbook().getStylesSource().getIndexedColors());
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormattingRule
    public XSSFColorScaleFormatting getColorScaleFormatting() {
        if (this._cfRule.isSetColorScale()) {
            return new XSSFColorScaleFormatting(this._cfRule.getColorScale(), this._sh.getWorkbook().getStylesSource().getIndexedColors());
        }
        return null;
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormattingRule
    public XSSFDataBarFormatting getDataBarFormatting() {
        if (this._cfRule.isSetDataBar()) {
            return new XSSFDataBarFormatting(this._cfRule.getDataBar(), this._sh.getWorkbook().getStylesSource().getIndexedColors());
        }
        return null;
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormattingRule, org.apache.poi.ss.usermodel.DifferentialStyleProvider
    public XSSFFontFormatting getFontFormatting() {
        CTDxf dxf = getDxf(false);
        if (dxf == null || !dxf.isSetFont()) {
            return null;
        }
        return new XSSFFontFormatting(dxf.getFont(), this._sh.getWorkbook().getStylesSource().getIndexedColors());
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormattingRule
    public XSSFIconMultiStateFormatting getMultiStateFormatting() {
        if (this._cfRule.isSetIconSet()) {
            return new XSSFIconMultiStateFormatting(this._cfRule.getIconSet());
        }
        return null;
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormattingRule, org.apache.poi.ss.usermodel.DifferentialStyleProvider
    public XSSFPatternFormatting getPatternFormatting() {
        CTDxf dxf = getDxf(false);
        if (dxf == null || !dxf.isSetFill()) {
            return null;
        }
        return new XSSFPatternFormatting(dxf.getFill(), this._sh.getWorkbook().getStylesSource().getIndexedColors());
    }

    public XSSFConditionalFormattingRule(XSSFSheet xSSFSheet, CTCfRule cTCfRule) {
        this._cfRule = cTCfRule;
        this._sh = xSSFSheet;
    }
}
