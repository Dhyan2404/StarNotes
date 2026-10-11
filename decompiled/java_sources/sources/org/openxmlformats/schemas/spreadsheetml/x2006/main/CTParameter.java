package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlDouble;
import org.apache.xmlbeans.XmlInt;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STParameterType;

/* loaded from: classes15.dex */
public interface CTParameter extends XmlObject {
    public static final DocumentFactory<CTParameter> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTParameter> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctparameterbe08type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    boolean getBoolean();

    String getCell();

    double getDouble();

    int getInteger();

    String getName();

    STParameterType.Enum getParameterType();

    String getPrompt();

    boolean getRefreshOnChange();

    int getSqlType();

    String getString();

    boolean isSetBoolean();

    boolean isSetCell();

    boolean isSetDouble();

    boolean isSetInteger();

    boolean isSetName();

    boolean isSetParameterType();

    boolean isSetPrompt();

    boolean isSetRefreshOnChange();

    boolean isSetSqlType();

    boolean isSetString();

    void setBoolean(boolean z);

    void setCell(String str);

    void setDouble(double d);

    void setInteger(int i);

    void setName(String str);

    void setParameterType(STParameterType.Enum r1);

    void setPrompt(String str);

    void setRefreshOnChange(boolean z);

    void setSqlType(int i);

    void setString(String str);

    void unsetBoolean();

    void unsetCell();

    void unsetDouble();

    void unsetInteger();

    void unsetName();

    void unsetParameterType();

    void unsetPrompt();

    void unsetRefreshOnChange();

    void unsetSqlType();

    void unsetString();

    XmlBoolean xgetBoolean();

    STXstring xgetCell();

    XmlDouble xgetDouble();

    XmlInt xgetInteger();

    STXstring xgetName();

    STParameterType xgetParameterType();

    STXstring xgetPrompt();

    XmlBoolean xgetRefreshOnChange();

    XmlInt xgetSqlType();

    STXstring xgetString();

    void xsetBoolean(XmlBoolean xmlBoolean);

    void xsetCell(STXstring sTXstring);

    void xsetDouble(XmlDouble xmlDouble);

    void xsetInteger(XmlInt xmlInt);

    void xsetName(STXstring sTXstring);

    void xsetParameterType(STParameterType sTParameterType);

    void xsetPrompt(STXstring sTXstring);

    void xsetRefreshOnChange(XmlBoolean xmlBoolean);

    void xsetSqlType(XmlInt xmlInt);

    void xsetString(STXstring sTXstring);
}
