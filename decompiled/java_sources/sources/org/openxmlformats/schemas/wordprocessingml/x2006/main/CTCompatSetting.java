package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STString;

/* loaded from: classes16.dex */
public interface CTCompatSetting extends XmlObject {
    public static final DocumentFactory<CTCompatSetting> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCompatSetting> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcompatsettingf724type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getName();

    String getUri();

    String getVal();

    boolean isSetName();

    boolean isSetUri();

    boolean isSetVal();

    void setName(String str);

    void setUri(String str);

    void setVal(String str);

    void unsetName();

    void unsetUri();

    void unsetVal();

    STString xgetName();

    STString xgetUri();

    STString xgetVal();

    void xsetName(STString sTString);

    void xsetUri(STString sTString);

    void xsetVal(STString sTString);
}
