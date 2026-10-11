package com.sun.org.apache.xalan.internal.processor;

import com.sun.org.apache.xalan.internal.templates.Stylesheet;
import com.sun.org.apache.xalan.internal.templates.WhiteSpaceInfo;
import com.sun.org.apache.xpath.internal.XPath;
import java.util.Vector;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public class ProcessorStripSpace extends ProcessorPreserveSpace {
    static final long serialVersionUID = -5594493198637899591L;

    @Override // com.sun.org.apache.xalan.internal.processor.ProcessorPreserveSpace, com.sun.org.apache.xalan.internal.processor.XSLTElementProcessor
    public void startElement(StylesheetHandler stylesheetHandler, String str, String str2, String str3, Attributes attributes) throws SAXException {
        Stylesheet stylesheet = stylesheetHandler.getStylesheet();
        WhitespaceInfoPaths whitespaceInfoPaths = new WhitespaceInfoPaths(stylesheet);
        setPropertiesFromAttributes(stylesheetHandler, str3, attributes, whitespaceInfoPaths);
        Vector elements = whitespaceInfoPaths.getElements();
        for (int i = 0; i < elements.size(); i++) {
            WhiteSpaceInfo whiteSpaceInfo = new WhiteSpaceInfo((XPath) elements.elementAt(i), true, stylesheet);
            whiteSpaceInfo.setUid(stylesheetHandler.nextUid());
            stylesheet.setStripSpaces(whiteSpaceInfo);
        }
        whitespaceInfoPaths.clearElements();
    }
}
