package com.sunia.HTREnginev2;

import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.poi.ooxml.POIXMLRelation;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

/* loaded from: classes13.dex */
public final /* synthetic */ class hoo implements POIXMLRelation.NoArgConstructor {
    @Override // org.apache.poi.ooxml.POIXMLRelation.NoArgConstructor
    public final POIXMLDocumentPart init() {
        return new XSSFWorkbook();
    }
}
