package com.sun.org.apache.xalan.internal.processor;

import com.sun.org.apache.xalan.internal.templates.ElemLiteralResult;
import com.sun.org.apache.xalan.internal.templates.ElemTemplateElement;
import com.sun.org.apache.xalan.internal.templates.Stylesheet;
import com.sun.org.apache.xalan.internal.templates.StylesheetRoot;
import com.sun.org.apache.xalan.internal.templates.XMLNSDecl;
import java.util.Vector;
import javax.xml.transform.TransformerConfigurationException;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class ProcessorLRE extends ProcessorTemplateElem {
    static final long serialVersionUID = -1490218021772101404L;

    private boolean declaredXSLNS(Stylesheet stylesheet) {
        Vector declaredPrefixes = stylesheet.getDeclaredPrefixes();
        int size = declaredPrefixes.size();
        for (int i = 0; i < size; i++) {
            if (((XMLNSDecl) declaredPrefixes.elementAt(i)).getURI().equals("http://www.w3.org/1999/XSL/Transform")) {
                return true;
            }
        }
        return false;
    }

    @Override // com.sun.org.apache.xalan.internal.processor.ProcessorTemplateElem, com.sun.org.apache.xalan.internal.processor.XSLTElementProcessor
    public void endElement(StylesheetHandler stylesheetHandler, String str, String str2, String str3) throws SAXException {
        ElemTemplateElement elemTemplateElement = stylesheetHandler.getElemTemplateElement();
        if ((elemTemplateElement instanceof ElemLiteralResult) && ((ElemLiteralResult) elemTemplateElement).getIsLiteralResultAsStylesheet()) {
            stylesheetHandler.popStylesheet();
        }
        super.endElement(stylesheetHandler, str, str2, str3);
    }

    public Stylesheet getStylesheetRoot(StylesheetHandler stylesheetHandler) throws TransformerConfigurationException {
        StylesheetRoot stylesheetRoot = new StylesheetRoot(stylesheetHandler.getSchema(), stylesheetHandler.getStylesheetProcessor().getErrorListener());
        if (stylesheetHandler.getStylesheetProcessor().isSecureProcessing()) {
            stylesheetRoot.setSecureProcessing(true);
        }
        return stylesheetRoot;
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x01fb A[Catch: TransformerException -> 0x022b, TryCatch #7 {TransformerException -> 0x022b, blocks: (B:3:0x0010, B:5:0x0016, B:7:0x0023, B:8:0x0027, B:10:0x0032, B:11:0x004e, B:13:0x006c, B:15:0x007c, B:17:0x0082, B:20:0x0098, B:22:0x00a2, B:24:0x00b1, B:26:0x00aa, B:32:0x00d0, B:33:0x012f, B:35:0x013d, B:37:0x0141, B:39:0x0172, B:91:0x014a, B:93:0x014e, B:96:0x0159, B:98:0x0161, B:45:0x017b, B:47:0x01a5, B:49:0x01be, B:52:0x01cf, B:53:0x01f6, B:55:0x01fb, B:57:0x01ff, B:59:0x0208, B:60:0x0227, B:66:0x01ea, B:69:0x01f3, B:78:0x018f, B:80:0x0198, B:82:0x019f, B:83:0x01a3, B:105:0x0103, B:107:0x010a, B:110:0x0111, B:111:0x0116, B:112:0x0117, B:113:0x0123, B:116:0x0125, B:117:0x012b, B:31:0x00cd), top: B:2:0x0010, inners: #2, #6 }] */
    @Override // com.sun.org.apache.xalan.internal.processor.ProcessorTemplateElem, com.sun.org.apache.xalan.internal.processor.XSLTElementProcessor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void startElement(com.sun.org.apache.xalan.internal.processor.StylesheetHandler r25, java.lang.String r26, java.lang.String r27, java.lang.String r28, org.xml.sax.Attributes r29) throws org.xml.sax.SAXException {
        /*
            Method dump skipped, instructions count: 562
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xalan.internal.processor.ProcessorLRE.startElement(com.sun.org.apache.xalan.internal.processor.StylesheetHandler, java.lang.String, java.lang.String, java.lang.String, org.xml.sax.Attributes):void");
    }
}
