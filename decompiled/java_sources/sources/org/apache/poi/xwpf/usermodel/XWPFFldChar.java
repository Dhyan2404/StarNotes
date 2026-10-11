package org.apache.poi.xwpf.usermodel;

import java.io.IOException;
import org.apache.poi.common.XmlBeanUtils;
import org.apache.poi.convert.WordToHtmlUtils;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFldChar;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STFldCharType;

/* loaded from: classes13.dex */
public class XWPFFldChar implements IRunPart {
    private FldCharState fldCharState;

    public XWPFFldChar(CTFldChar cTFldChar) {
        init(cTFldChar);
    }

    private void init(CTFldChar cTFldChar) {
        STFldCharType.Enum fldCharType = cTFldChar.getFldCharType();
        if (!WordToHtmlUtils.isNull(fldCharType)) {
            int intValue = fldCharType.intValue();
            if (intValue == 1) {
                this.fldCharState = FldCharState.BEGIN;
            } else if (intValue == 2) {
                this.fldCharState = FldCharState.SEPARATE;
            } else if (intValue == 3) {
                this.fldCharState = FldCharState.END;
            }
        }
        XmlBeanUtils.freeMemory(cTFldChar);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    public FldCharState getFldCharState() {
        return this.fldCharState;
    }

    @Override // org.apache.poi.xwpf.usermodel.IRunPart
    public String getText() {
        return "CTFldChar";
    }
}
