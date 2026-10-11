package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STLang;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STString;

/* loaded from: classes16.dex */
public interface CTWritingStyle extends XmlObject {
    public static final DocumentFactory<CTWritingStyle> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTWritingStyle> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctwritingstyled853type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getAppName();

    Object getCheckStyle();

    String getDllVersion();

    String getLang();

    Object getNlCheck();

    String getVendorID();

    boolean isSetNlCheck();

    void setAppName(String str);

    void setCheckStyle(Object obj);

    void setDllVersion(String str);

    void setLang(String str);

    void setNlCheck(Object obj);

    void setVendorID(String str);

    void unsetNlCheck();

    STString xgetAppName();

    STOnOff xgetCheckStyle();

    STString xgetDllVersion();

    STLang xgetLang();

    STOnOff xgetNlCheck();

    STString xgetVendorID();

    void xsetAppName(STString sTString);

    void xsetCheckStyle(STOnOff sTOnOff);

    void xsetDllVersion(STString sTString);

    void xsetLang(STLang sTLang);

    void xsetNlCheck(STOnOff sTOnOff);

    void xsetVendorID(STString sTString);
}
