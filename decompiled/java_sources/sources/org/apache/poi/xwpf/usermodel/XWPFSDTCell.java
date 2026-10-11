package org.apache.poi.xwpf.usermodel;

import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtCell;

/* loaded from: classes13.dex */
public class XWPFSDTCell extends XWPFAbstractSDT implements ICell {
    private final XWPFSDTContentCell cellContent;

    public XWPFSDTCell(CTSdtCell cTSdtCell, XWPFTableRow xWPFTableRow, IBody iBody) {
        super(cTSdtCell.getSdtPr(), iBody);
        this.cellContent = new XWPFSDTContentCell(cTSdtCell.getSdtContent(), xWPFTableRow, iBody);
    }

    @Override // org.apache.poi.xwpf.usermodel.XWPFAbstractSDT
    public ISDTContent getContent() {
        return this.cellContent;
    }
}
