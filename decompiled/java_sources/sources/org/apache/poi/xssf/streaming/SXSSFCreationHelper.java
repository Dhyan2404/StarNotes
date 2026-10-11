package org.apache.poi.xssf.streaming;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.common.usermodel.HyperlinkType;
import org.apache.poi.ss.usermodel.ClientAnchor;
import org.apache.poi.ss.usermodel.CreationHelper;
import org.apache.poi.ss.usermodel.DataFormat;
import org.apache.poi.ss.usermodel.ExtendedColor;
import org.apache.poi.ss.usermodel.Hyperlink;
import org.apache.poi.ss.util.AreaReference;
import org.apache.poi.ss.util.CellReference;
import org.apache.poi.util.Internal;
import org.apache.poi.xssf.usermodel.XSSFCreationHelper;
import org.apache.poi.xssf.usermodel.XSSFRichTextString;

/* loaded from: classes13.dex */
public class SXSSFCreationHelper implements CreationHelper {
    private static final Logger LOG = LogManager.getLogger((Class<?>) SXSSFCreationHelper.class);
    private final XSSFCreationHelper helper;

    /* renamed from: wb */
    private final SXSSFWorkbook f111827wb;

    @Internal
    public SXSSFCreationHelper(SXSSFWorkbook sXSSFWorkbook) {
        this.helper = new XSSFCreationHelper(sXSSFWorkbook.getXSSFWorkbook());
        this.f111827wb = sXSSFWorkbook;
    }

    @Override // org.apache.poi.ss.usermodel.CreationHelper
    public AreaReference createAreaReference(String str) {
        return new AreaReference(str, this.f111827wb.getSpreadsheetVersion());
    }

    @Override // org.apache.poi.ss.usermodel.CreationHelper
    public ClientAnchor createClientAnchor() {
        return this.helper.createClientAnchor();
    }

    @Override // org.apache.poi.ss.usermodel.CreationHelper
    public DataFormat createDataFormat() {
        return this.helper.createDataFormat();
    }

    @Override // org.apache.poi.ss.usermodel.CreationHelper
    public ExtendedColor createExtendedColor() {
        return this.helper.createExtendedColor();
    }

    @Override // org.apache.poi.ss.usermodel.CreationHelper
    public Hyperlink createHyperlink(HyperlinkType hyperlinkType) {
        return this.helper.createHyperlink(hyperlinkType);
    }

    @Override // org.apache.poi.ss.usermodel.CreationHelper
    public AreaReference createAreaReference(CellReference cellReference, CellReference cellReference2) {
        return new AreaReference(cellReference, cellReference2, this.f111827wb.getSpreadsheetVersion());
    }

    @Override // org.apache.poi.ss.usermodel.CreationHelper
    public SXSSFFormulaEvaluator createFormulaEvaluator() {
        return new SXSSFFormulaEvaluator(this.f111827wb);
    }

    @Override // org.apache.poi.ss.usermodel.CreationHelper
    public XSSFRichTextString createRichTextString(String str) {
        return new XSSFRichTextString(str);
    }
}
