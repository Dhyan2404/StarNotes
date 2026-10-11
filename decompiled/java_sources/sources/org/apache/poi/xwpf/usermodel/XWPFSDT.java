package org.apache.poi.xwpf.usermodel;

import java.io.IOException;
import org.apache.poi.common.XmlBeanUtils;
import org.apache.xmlbeans.XmlObject;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtBlock;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtRow;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtRun;

/* loaded from: classes13.dex */
public class XWPFSDT extends XWPFAbstractSDT implements IBodyElement, IRunBody, ISDTContents, IRunElement {
    private XWPFSDTContent content;
    private XmlObject xmlObject;

    public XWPFSDT(CTSdtRun cTSdtRun, IBody iBody) {
        super(cTSdtRun.getSdtPr(), iBody);
        this.xmlObject = cTSdtRun;
        this.content = new XWPFSDTContent(cTSdtRun.getSdtContent(), iBody, this);
        readDocument();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        XmlBeanUtils.freeMemory(this.xmlObject);
        XmlBeanUtils.close(this.content);
        this.xmlObject = null;
        this.content = null;
    }

    @Override // org.apache.poi.xwpf.usermodel.XWPFAbstractSDT
    public ISDTContent getContent() {
        return this.content;
    }

    @Override // org.apache.poi.xwpf.usermodel.IBodyElement
    public void readDocument() {
        this.content.readDocument();
    }

    public XWPFSDT(CTSdtBlock cTSdtBlock, IBody iBody) {
        super(cTSdtBlock.getSdtPr(), iBody);
        this.xmlObject = cTSdtBlock;
        this.content = new XWPFSDTContent(cTSdtBlock.getSdtContent(), iBody, this);
        readDocument();
    }

    public XWPFSDT(CTSdtRow cTSdtRow, IBody iBody) {
        super(cTSdtRow.getSdtPr(), iBody);
        this.content = new XWPFSDTContent(cTSdtRow.getSdtContent(), iBody, this);
        readDocument();
    }
}
