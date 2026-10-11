package org.apache.poi.xssf.usermodel.helpers;

import java.util.Iterator;
import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.poi.ss.formula.FormulaParser;
import org.apache.poi.ss.formula.FormulaRenderer;
import org.apache.poi.ss.formula.FormulaType;
import org.apache.poi.ss.formula.ptg.Ptg;
import org.apache.poi.ss.formula.ptg.Pxg;
import org.apache.poi.ss.formula.ptg.Pxg3D;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFChart;
import org.apache.poi.xssf.usermodel.XSSFDrawing;
import org.apache.poi.xssf.usermodel.XSSFEvaluationWorkbook;
import org.apache.poi.xssf.usermodel.XSSFName;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellFormula;

/* loaded from: classes13.dex */
public final class XSSFFormulaUtils {
    private final XSSFEvaluationWorkbook _fpwb;
    private final XSSFWorkbook _wb;

    public XSSFFormulaUtils(XSSFWorkbook xSSFWorkbook) {
        this._wb = xSSFWorkbook;
        this._fpwb = XSSFEvaluationWorkbook.create(xSSFWorkbook);
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0032, code lost:
    
        if (r0.contains(r5 + "'!") != false) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void updateDomSheetReference(org.w3c.dom.Node r4, java.lang.String r5, java.lang.String r6) {
        /*
            r3 = this;
            java.lang.String r0 = r4.getNodeValue()
            if (r0 == 0) goto L4c
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r5)
            java.lang.String r2 = "!"
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            boolean r1 = r0.contains(r1)
            if (r1 != 0) goto L34
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r5)
            java.lang.String r2 = "'!"
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            boolean r1 = r0.contains(r1)
            if (r1 == 0) goto L4c
        L34:
            org.apache.poi.xssf.usermodel.XSSFWorkbook r1 = r3._wb
            org.apache.poi.xssf.usermodel.XSSFName r1 = r1.createName()
            r1.setRefersToFormula(r0)
            r3.updateName(r1, r5, r6)
            java.lang.String r0 = r1.getRefersToFormula()
            r4.setNodeValue(r0)
            org.apache.poi.xssf.usermodel.XSSFWorkbook r0 = r3._wb
            r0.removeName(r1)
        L4c:
            org.w3c.dom.NodeList r4 = r4.getChildNodes()
            r0 = 0
        L51:
            int r1 = r4.getLength()
            if (r0 >= r1) goto L61
            org.w3c.dom.Node r1 = r4.item(r0)
            r3.updateDomSheetReference(r1, r5, r6)
            int r0 = r0 + 1
            goto L51
        L61:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.xssf.usermodel.helpers.XSSFFormulaUtils.updateDomSheetReference(org.w3c.dom.Node, java.lang.String, java.lang.String):void");
    }

    private void updateFormula(XSSFCell xSSFCell, String str, String str2) {
        String stringValue;
        CTCellFormula f = xSSFCell.getCTCell().getF();
        if (f == null || (stringValue = f.getStringValue()) == null || stringValue.length() <= 0) {
            return;
        }
        Ptg[] parse = FormulaParser.parse(stringValue, this._fpwb, FormulaType.CELL, this._wb.getSheetIndex(xSSFCell.getSheet()), xSSFCell.getRowIndex());
        for (Ptg ptg : parse) {
            updatePtg(ptg, str, str2);
        }
        String formulaString = FormulaRenderer.toFormulaString(this._fpwb, parse);
        if (stringValue.equals(formulaString)) {
            return;
        }
        f.setStringValue(formulaString);
    }

    private void updateName(XSSFName xSSFName, String str, String str2) {
        String refersToFormula = xSSFName.getRefersToFormula();
        if (refersToFormula != null) {
            Ptg[] parse = FormulaParser.parse(refersToFormula, this._fpwb, FormulaType.NAMEDRANGE, xSSFName.getSheetIndex(), -1);
            for (Ptg ptg : parse) {
                updatePtg(ptg, str, str2);
            }
            String formulaString = FormulaRenderer.toFormulaString(this._fpwb, parse);
            if (refersToFormula.equals(formulaString)) {
                return;
            }
            xSSFName.setRefersToFormula(formulaString);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void updatePtg(Ptg ptg, String str, String str2) {
        if (ptg instanceof Pxg) {
            Pxg pxg = (Pxg) ptg;
            if (pxg.getExternalWorkbookNumber() < 1) {
                if (pxg.getSheetName() != null && pxg.getSheetName().equals(str)) {
                    pxg.setSheetName(str2);
                }
                if (pxg instanceof Pxg3D) {
                    Pxg3D pxg3D = (Pxg3D) pxg;
                    if (pxg3D.getLastSheetName() == null || !pxg3D.getLastSheetName().equals(str)) {
                        return;
                    }
                    pxg3D.setLastSheetName(str2);
                }
            }
        }
    }

    public void updateSheetName(int i, String str, String str2) {
        for (XSSFName xSSFName : this._wb.getAllNames()) {
            if (xSSFName.getSheetIndex() == -1 || xSSFName.getSheetIndex() == i) {
                updateName(xSSFName, str, str2);
            }
        }
        Iterator<Sheet> it2 = this._wb.iterator();
        while (it2.hasNext()) {
            Iterator<Row> it3 = it2.next().iterator();
            while (it3.hasNext()) {
                for (Cell cell : it3.next()) {
                    if (cell.getCellType() == CellType.FORMULA) {
                        updateFormula((XSSFCell) cell, str, str2);
                    }
                }
            }
        }
        for (POIXMLDocumentPart pOIXMLDocumentPart : this._wb.getSheetAt(i).getRelations()) {
            if (pOIXMLDocumentPart instanceof XSSFDrawing) {
                Iterator<XSSFChart> it4 = ((XSSFDrawing) pOIXMLDocumentPart).getCharts().iterator();
                while (it4.hasNext()) {
                    updateDomSheetReference(it4.next().getCTChartSpace().getDomNode(), str, str2);
                }
            }
        }
    }
}
