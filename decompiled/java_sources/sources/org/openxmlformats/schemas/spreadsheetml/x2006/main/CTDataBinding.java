package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTDataBinding extends XmlObject {
    public static final DocumentFactory<CTDataBinding> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDataBinding> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdatabindingc09atype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getConnectionID();

    long getDataBindingLoadMode();

    String getDataBindingName();

    boolean getFileBinding();

    String getFileBindingName();

    boolean isSetConnectionID();

    boolean isSetDataBindingName();

    boolean isSetFileBinding();

    boolean isSetFileBindingName();

    void setConnectionID(long j);

    void setDataBindingLoadMode(long j);

    void setDataBindingName(String str);

    void setFileBinding(boolean z);

    void setFileBindingName(String str);

    void unsetConnectionID();

    void unsetDataBindingName();

    void unsetFileBinding();

    void unsetFileBindingName();

    XmlUnsignedInt xgetConnectionID();

    XmlUnsignedInt xgetDataBindingLoadMode();

    XmlString xgetDataBindingName();

    XmlBoolean xgetFileBinding();

    XmlString xgetFileBindingName();

    void xsetConnectionID(XmlUnsignedInt xmlUnsignedInt);

    void xsetDataBindingLoadMode(XmlUnsignedInt xmlUnsignedInt);

    void xsetDataBindingName(XmlString xmlString);

    void xsetFileBinding(XmlBoolean xmlBoolean);

    void xsetFileBindingName(XmlString xmlString);
}
