package org.openxmlformats.schemas.drawingml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTHeaders extends XmlObject {
    public static final DocumentFactory<CTHeaders> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTHeaders> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctheaders1637type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    void addHeader(String str);

    XmlString addNewHeader();

    String getHeaderArray(int i);

    String[] getHeaderArray();

    List<String> getHeaderList();

    void insertHeader(int i, String str);

    XmlString insertNewHeader(int i);

    void removeHeader(int i);

    void setHeaderArray(int i, String str);

    void setHeaderArray(String[] strArr);

    int sizeOfHeaderArray();

    XmlString xgetHeaderArray(int i);

    XmlString[] xgetHeaderArray();

    List<XmlString> xgetHeaderList();

    void xsetHeaderArray(int i, XmlString xmlString);

    void xsetHeaderArray(XmlString[] xmlStringArr);
}
