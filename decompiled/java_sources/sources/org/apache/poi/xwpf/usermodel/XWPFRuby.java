package org.apache.poi.xwpf.usermodel;

import java.io.IOException;
import org.apache.poi.common.XmlBeanUtils;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRuby;

/* loaded from: classes13.dex */
public class XWPFRuby implements IRunPart {
    private CTRuby ruby;

    public XWPFRuby(CTRuby cTRuby) {
        this.ruby = cTRuby;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        XmlBeanUtils.freeMemory(this.ruby);
        this.ruby = null;
    }

    @Override // org.apache.poi.xwpf.usermodel.IRunPart
    public String getText() {
        return null;
    }
}
