package org.apache.poi.xssf.usermodel;

import org.apache.poi.ooxml.POIXMLFactory;
import org.apache.poi.ooxml.POIXMLRelation;

/* loaded from: classes13.dex */
public class XSSFFactory extends POIXMLFactory {
    private static final XSSFFactory inst = new XSSFFactory();

    public static XSSFFactory getInstance() {
        return inst;
    }

    @Override // org.apache.poi.ooxml.POIXMLFactory
    public POIXMLRelation getDescriptor(String str) {
        return XSSFRelation.getInstance(str);
    }
}
