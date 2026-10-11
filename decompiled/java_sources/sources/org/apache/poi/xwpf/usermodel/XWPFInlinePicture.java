package org.apache.poi.xwpf.usermodel;

import org.apache.poi.common.XmlBeanUtils;
import org.apache.poi.p114wp.usermodel.Position;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTInline;

/* loaded from: classes13.dex */
public class XWPFInlinePicture extends XWPFPicturePart {
    private CTInline ctInline;

    public XWPFInlinePicture(XWPFPicture xWPFPicture, CTInline cTInline) {
        super(xWPFPicture);
        this.ctInline = cTInline;
        this.position = Position.BOTTOM;
    }

    @Override // org.apache.poi.xwpf.usermodel.XWPFPicturePart, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        XmlBeanUtils.freeMemory(this.ctInline);
    }
}
