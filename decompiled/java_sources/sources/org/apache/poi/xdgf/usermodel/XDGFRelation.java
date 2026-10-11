package org.apache.poi.xdgf.usermodel;

import java.util.HashMap;
import java.util.Map;
import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.poi.ooxml.POIXMLRelation;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.openxml4j.opc.PackageRelationshipTypes;
import org.apache.poi.xdgf.usermodel.XDGFMasterContents;
import org.apache.poi.xdgf.usermodel.XDGFMasters;
import org.apache.poi.xdgf.usermodel.XDGFPageContents;
import org.apache.poi.xdgf.usermodel.XDGFPages;

/* loaded from: classes13.dex */
public class XDGFRelation extends POIXMLRelation {
    private static final Map<String, XDGFRelation> _table = new HashMap();
    public static final XDGFRelation DOCUMENT = new XDGFRelation("application/vnd.ms-visio.drawing.main+xml", PackageRelationshipTypes.VISIO_CORE_DOCUMENT, "/visio/document.xml", null);
    public static final XDGFRelation MASTERS = new XDGFRelation("application/vnd.ms-visio.masters+xml", "http://schemas.microsoft.com/visio/2010/relationships/masters", "/visio/masters/masters.xml", new POIXMLRelation.PackagePartConstructor() { // from class: com.sunia.HTREnginev2.clo
        @Override // org.apache.poi.ooxml.POIXMLRelation.PackagePartConstructor
        public final POIXMLDocumentPart init(PackagePart packagePart) {
            return new XDGFMasters(packagePart);
        }
    });
    public static final XDGFRelation MASTER = new XDGFRelation("application/vnd.ms-visio.master+xml", "http://schemas.microsoft.com/visio/2010/relationships/master", "/visio/masters/master#.xml", new POIXMLRelation.PackagePartConstructor() { // from class: com.sunia.HTREnginev2.dlo
        @Override // org.apache.poi.ooxml.POIXMLRelation.PackagePartConstructor
        public final POIXMLDocumentPart init(PackagePart packagePart) {
            return new XDGFMasterContents(packagePart);
        }
    });
    public static final XDGFRelation IMAGES = new XDGFRelation(null, PackageRelationshipTypes.IMAGE_PART, null, null);
    public static final XDGFRelation PAGES = new XDGFRelation("application/vnd.ms-visio.pages+xml", "http://schemas.microsoft.com/visio/2010/relationships/pages", "/visio/pages/pages.xml", new POIXMLRelation.PackagePartConstructor() { // from class: com.sunia.HTREnginev2.elo
        @Override // org.apache.poi.ooxml.POIXMLRelation.PackagePartConstructor
        public final POIXMLDocumentPart init(PackagePart packagePart) {
            return new XDGFPages(packagePart);
        }
    });
    public static final XDGFRelation PAGE = new XDGFRelation("application/vnd.ms-visio.page+xml", "http://schemas.microsoft.com/visio/2010/relationships/page", "/visio/pages/page#.xml", new POIXMLRelation.PackagePartConstructor() { // from class: com.sunia.HTREnginev2.flo
        @Override // org.apache.poi.ooxml.POIXMLRelation.PackagePartConstructor
        public final POIXMLDocumentPart init(PackagePart packagePart) {
            return new XDGFPageContents(packagePart);
        }
    });
    public static final XDGFRelation WINDOW = new XDGFRelation("application/vnd.ms-visio.windows+xml", "http://schemas.microsoft.com/visio/2010/relationships/windows", "/visio/windows.xml", null);

    private XDGFRelation(String str, String str2, String str3, POIXMLRelation.PackagePartConstructor packagePartConstructor) {
        super(str, str2, str3, null, packagePartConstructor, null);
        _table.put(str2, this);
    }

    public static XDGFRelation getInstance(String str) {
        return _table.get(str);
    }
}
