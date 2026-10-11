package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTPCDSCPage extends XmlObject {
    public static final DocumentFactory<CTPCDSCPage> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPCDSCPage> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctpcdscpage70aftype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTPageItem addNewPageItem();

    long getCount();

    CTPageItem getPageItemArray(int i);

    CTPageItem[] getPageItemArray();

    List<CTPageItem> getPageItemList();

    CTPageItem insertNewPageItem(int i);

    boolean isSetCount();

    void removePageItem(int i);

    void setCount(long j);

    void setPageItemArray(int i, CTPageItem cTPageItem);

    void setPageItemArray(CTPageItem[] cTPageItemArr);

    int sizeOfPageItemArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}
