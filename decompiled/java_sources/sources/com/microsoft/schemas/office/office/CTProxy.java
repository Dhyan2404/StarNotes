package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlInt;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalseBlank;

/* loaded from: classes7.dex */
public interface CTProxy extends XmlObject {
    public static final DocumentFactory<CTProxy> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTProxy> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctproxy7727type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    int getConnectloc();

    STTrueFalseBlank.Enum getEnd();

    String getIdref();

    STTrueFalseBlank.Enum getStart();

    boolean isSetConnectloc();

    boolean isSetEnd();

    boolean isSetIdref();

    boolean isSetStart();

    void setConnectloc(int i);

    void setEnd(STTrueFalseBlank.Enum r1);

    void setIdref(String str);

    void setStart(STTrueFalseBlank.Enum r1);

    void unsetConnectloc();

    void unsetEnd();

    void unsetIdref();

    void unsetStart();

    XmlInt xgetConnectloc();

    STTrueFalseBlank xgetEnd();

    XmlString xgetIdref();

    STTrueFalseBlank xgetStart();

    void xsetConnectloc(XmlInt xmlInt);

    void xsetEnd(STTrueFalseBlank sTTrueFalseBlank);

    void xsetIdref(XmlString xmlString);

    void xsetStart(STTrueFalseBlank sTTrueFalseBlank);
}
