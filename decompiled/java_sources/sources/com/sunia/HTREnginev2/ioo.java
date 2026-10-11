package com.sunia.HTREnginev2;

import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.poi.ooxml.POIXMLRelation;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

/* loaded from: classes13.dex */
public final /* synthetic */ class ioo implements POIXMLRelation.PackagePartConstructor {
    @Override // org.apache.poi.ooxml.POIXMLRelation.PackagePartConstructor
    public final POIXMLDocumentPart init(PackagePart packagePart) {
        return new XSSFWorkbook(packagePart);
    }
}
