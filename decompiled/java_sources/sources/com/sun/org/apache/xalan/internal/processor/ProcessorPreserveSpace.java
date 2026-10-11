package com.sun.org.apache.xalan.internal.processor;

import com.sun.org.apache.xalan.internal.templates.Stylesheet;
import com.sun.org.apache.xalan.internal.templates.WhiteSpaceInfo;
import com.sun.org.apache.xpath.internal.XPath;
import java.util.Vector;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public class ProcessorPreserveSpace extends XSLTElementProcessor {
    static final long serialVersionUID = -5552836470051177302L;

    @Override // com.sun.org.apache.xalan.internal.processor.XSLTElementProcessor
    public void startElement(StylesheetHandler stylesheetHandler, String str, String str2, String str3, Attributes attributes) throws SAXException {
        Stylesheet stylesheet = stylesheetHandler.getStylesheet();
        WhitespaceInfoPaths whitespaceInfoPaths = new WhitespaceInfoPaths(stylesheet);
        setPropertiesFromAttributes(stylesheetHandler, str3, attributes, whitespaceInfoPaths);
        Vector elements = whitespaceInfoPaths.getElements();
        for (int i = 0; i < elements.size(); i++) {
            WhiteSpaceInfo whiteSpaceInfo = new WhiteSpaceInfo((XPath) elements.elementAt(i), false, stylesheet);
            whiteSpaceInfo.setUid(stylesheetHandler.nextUid());
            stylesheet.setPreserveSpaces(whiteSpaceInfo);
        }
        whitespaceInfoPaths.clearElements();
    }
}
