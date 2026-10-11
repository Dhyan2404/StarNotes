package org.apache.poi.xwpf.usermodel;

import java.io.IOException;
import org.apache.poi.common.XmlBeanUtils;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEmpty;

/* loaded from: classes13.dex */
public class XWPFEmpty implements IRunPart {
    private char emptyChar;

    public XWPFEmpty(char c) {
        this.emptyChar = c;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    @Override // org.apache.poi.xwpf.usermodel.IRunPart
    public String getText() {
        return String.valueOf(this.emptyChar);
    }

    public boolean isBr() {
        return this.emptyChar == '\n';
    }

    public boolean isTab() {
        return this.emptyChar == '\t';
    }

    public XWPFEmpty(CTEmpty cTEmpty) {
        String nodeName = cTEmpty.getDomNode().getNodeName();
        if (!"w:tab".equals(nodeName) && !"tab".equals(nodeName)) {
            if (!"w:br".equals(nodeName) && !"br".equals(nodeName)) {
                if (!"w:cr".equals(nodeName) && !"cr".equals(nodeName)) {
                    this.emptyChar = (char) 160;
                } else {
                    this.emptyChar = '\n';
                }
            } else {
                this.emptyChar = '\n';
            }
        } else {
            this.emptyChar = '\t';
        }
        XmlBeanUtils.freeMemory(cTEmpty);
    }
}
