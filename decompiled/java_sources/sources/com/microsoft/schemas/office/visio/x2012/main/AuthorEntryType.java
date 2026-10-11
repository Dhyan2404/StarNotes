package com.microsoft.schemas.office.visio.x2012.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface AuthorEntryType extends XmlObject {
    public static final DocumentFactory<AuthorEntryType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<AuthorEntryType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "authorentrytype53a4type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getID();

    String getInitials();

    String getName();

    String getResolutionID();

    boolean isSetInitials();

    boolean isSetName();

    boolean isSetResolutionID();

    void setID(long j);

    void setInitials(String str);

    void setName(String str);

    void setResolutionID(String str);

    void unsetInitials();

    void unsetName();

    void unsetResolutionID();

    XmlUnsignedInt xgetID();

    XmlString xgetInitials();

    XmlString xgetName();

    XmlString xgetResolutionID();

    void xsetID(XmlUnsignedInt xmlUnsignedInt);

    void xsetInitials(XmlString xmlString);

    void xsetName(XmlString xmlString);

    void xsetResolutionID(XmlString xmlString);
}
