package org.apache.poi.xwpf.usermodel;

import java.io.IOException;
import org.apache.poi.common.XmlBeanUtils;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTText;

/* loaded from: classes13.dex */
public class XWPFCTText implements IRunPart {
    private ReviseState reviseState;
    private String text;

    public XWPFCTText(CTText cTText) {
        this.reviseState = ReviseState.NORMAL;
        this.text = cTText.getStringValue();
        String nodeName = cTText.getDomNode().getNodeName();
        if ("w:instrText".equals(nodeName)) {
            this.reviseState = ReviseState.INSTR;
        } else if ("w:delText".equals(nodeName)) {
            this.reviseState = ReviseState.DELETE;
        }
        XmlBeanUtils.freeMemory(cTText);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    @Override // org.apache.poi.xwpf.usermodel.IRunPart
    public String getText() {
        return this.text;
    }

    public boolean isDelete() {
        return this.reviseState == ReviseState.DELETE;
    }

    public boolean isInstr() {
        return this.reviseState == ReviseState.INSTR;
    }

    public boolean isText() {
        return (isInstr() || isDelete()) ? false : true;
    }
}
