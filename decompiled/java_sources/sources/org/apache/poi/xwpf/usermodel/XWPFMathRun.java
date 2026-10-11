package org.apache.poi.xwpf.usermodel;

import java.io.IOException;
import org.apache.poi.common.XmlBeanUtils;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathPara;

/* loaded from: classes13.dex */
public class XWPFMathRun implements IRunElement {
    private String mathString;

    public XWPFMathRun(CTOMathPara cTOMathPara) {
        this.mathString = cTOMathPara.toString();
        XmlBeanUtils.freeMemory(cTOMathPara);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    public String getMathString() {
        return this.mathString;
    }

    public XWPFMathRun(CTOMath cTOMath) {
        this.mathString = cTOMath.toString();
        XmlBeanUtils.freeMemory(cTOMath);
    }
}
