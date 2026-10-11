package org.apache.poi.xwpf.usermodel;

import java.io.IOException;
import org.apache.poi.common.XmlBeanUtils;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STBrType;

/* loaded from: classes13.dex */
public class XWPFBreak implements IRunPart {
    private BreakType breakType;

    public XWPFBreak(CTBr cTBr) {
        STBrType.Enum type = cTBr.getType();
        if (type == STBrType.COLUMN) {
            this.breakType = BreakType.COLUMN;
        } else if (type == STBrType.PAGE) {
            this.breakType = BreakType.PAGE;
        } else {
            this.breakType = BreakType.TEXT_WRAPPING;
        }
        XmlBeanUtils.freeMemory(cTBr);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    public BreakType getBreakType() {
        return this.breakType;
    }

    @Override // org.apache.poi.xwpf.usermodel.IRunPart
    public String getText() {
        return "\n";
    }
}
