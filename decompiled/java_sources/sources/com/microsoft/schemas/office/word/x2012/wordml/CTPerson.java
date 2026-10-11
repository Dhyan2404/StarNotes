package com.microsoft.schemas.office.word.x2012.wordml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STString;

/* loaded from: classes7.dex */
public interface CTPerson extends XmlObject {
    public static final DocumentFactory<CTPerson> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPerson> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctperson9431type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTPresenceInfo addNewPresenceInfo();

    String getAuthor();

    CTPresenceInfo getPresenceInfo();

    boolean isSetPresenceInfo();

    void setAuthor(String str);

    void setPresenceInfo(CTPresenceInfo cTPresenceInfo);

    void unsetPresenceInfo();

    STString xgetAuthor();

    void xsetAuthor(STString sTString);
}
