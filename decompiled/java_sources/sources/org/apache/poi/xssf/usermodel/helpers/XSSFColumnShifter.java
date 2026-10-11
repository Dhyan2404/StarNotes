package org.apache.poi.xssf.usermodel.helpers;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.ss.formula.FormulaShifter;
import org.apache.poi.ss.usermodel.helpers.ColumnShifter;
import org.apache.poi.xssf.usermodel.XSSFSheet;

/* loaded from: classes13.dex */
public final class XSSFColumnShifter extends ColumnShifter {
    private static final Logger LOG = LogManager.getLogger((Class<?>) XSSFColumnShifter.class);

    public XSSFColumnShifter(XSSFSheet xSSFSheet) {
        super(xSSFSheet);
    }

    @Override // org.apache.poi.ss.usermodel.helpers.BaseRowColShifter
    public void updateConditionalFormatting(FormulaShifter formulaShifter) {
        XSSFRowColShifter.updateConditionalFormatting(this.sheet, formulaShifter);
    }

    @Override // org.apache.poi.ss.usermodel.helpers.BaseRowColShifter
    public void updateFormulas(FormulaShifter formulaShifter) {
        XSSFRowColShifter.updateFormulas(this.sheet, formulaShifter);
    }

    @Override // org.apache.poi.ss.usermodel.helpers.BaseRowColShifter
    public void updateHyperlinks(FormulaShifter formulaShifter) {
        XSSFRowColShifter.updateHyperlinks(this.sheet, formulaShifter);
    }

    @Override // org.apache.poi.ss.usermodel.helpers.BaseRowColShifter
    public void updateNamedRanges(FormulaShifter formulaShifter) {
        XSSFRowColShifter.updateNamedRanges(this.sheet, formulaShifter);
    }
}
