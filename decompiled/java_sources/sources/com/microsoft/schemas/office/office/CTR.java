package com.microsoft.schemas.office.office;

import com.microsoft.schemas.office.office.STHow;
import com.microsoft.schemas.office.office.STRType;
import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface CTR extends XmlObject {
    public static final DocumentFactory<CTR> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTR> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctr0eabtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTProxy addNewProxy();

    STHow.Enum getHow();

    String getId();

    String getIdref();

    CTProxy getProxyArray(int i);

    CTProxy[] getProxyArray();

    List<CTProxy> getProxyList();

    STRType.Enum getType();

    CTProxy insertNewProxy(int i);

    boolean isSetHow();

    boolean isSetIdref();

    boolean isSetType();

    void removeProxy(int i);

    void setHow(STHow.Enum r1);

    void setId(String str);

    void setIdref(String str);

    void setProxyArray(int i, CTProxy cTProxy);

    void setProxyArray(CTProxy[] cTProxyArr);

    void setType(STRType.Enum r1);

    int sizeOfProxyArray();

    void unsetHow();

    void unsetIdref();

    void unsetType();

    STHow xgetHow();

    XmlString xgetId();

    XmlString xgetIdref();

    STRType xgetType();

    void xsetHow(STHow sTHow);

    void xsetId(XmlString xmlString);

    void xsetIdref(XmlString xmlString);

    void xsetType(STRType sTRType);
}
