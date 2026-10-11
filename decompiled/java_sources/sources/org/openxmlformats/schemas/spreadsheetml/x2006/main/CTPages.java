package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTPages extends XmlObject {
    public static final DocumentFactory<CTPages> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPages> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctpages27e3type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTPCDSCPage addNewPage();

    long getCount();

    CTPCDSCPage getPageArray(int i);

    CTPCDSCPage[] getPageArray();

    List<CTPCDSCPage> getPageList();

    CTPCDSCPage insertNewPage(int i);

    boolean isSetCount();

    void removePage(int i);

    void setCount(long j);

    void setPageArray(int i, CTPCDSCPage cTPCDSCPage);

    void setPageArray(CTPCDSCPage[] cTPCDSCPageArr);

    int sizeOfPageArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}
