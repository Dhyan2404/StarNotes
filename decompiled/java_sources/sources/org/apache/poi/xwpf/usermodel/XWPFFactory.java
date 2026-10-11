package org.apache.poi.xwpf.usermodel;

import org.apache.poi.ooxml.POIXMLFactory;
import org.apache.poi.ooxml.POIXMLRelation;

/* loaded from: classes13.dex */
public final class XWPFFactory extends POIXMLFactory {
    private static final XWPFFactory inst = new XWPFFactory();

    private XWPFFactory() {
    }

    public static XWPFFactory getInstance() {
        return inst;
    }

    @Override // org.apache.poi.ooxml.POIXMLFactory
    public POIXMLRelation getDescriptor(String str) {
        return XWPFRelation.getInstance(str);
    }
}
