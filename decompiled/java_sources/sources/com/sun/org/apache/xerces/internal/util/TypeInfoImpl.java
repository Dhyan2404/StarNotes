package com.sun.org.apache.xerces.internal.util;

import com.sun.org.apache.xerces.internal.p056xs.XSTypeDefinition;
import java.util.Hashtable;
import org.w3c.dom.TypeInfo;

/* loaded from: classes10.dex */
public class TypeInfoImpl implements TypeInfo {
    private static final Hashtable dtdCache = new Hashtable();
    private static final String dtdNamespaceURI = "http://www.w3.org/TR/REC-xml";
    private final String typeName;
    private final String typeNamespace;

    static {
        String[] strArr = {"CDATA", "ID", "IDREF", "IDREFS", "NMTOKEN", "NMTOKENS", "ENTITY", "ENTITIES", "NOTATION"};
        for (int i = 0; i < 9; i++) {
            Hashtable hashtable = dtdCache;
            String str = strArr[i];
            hashtable.put(str, new TypeInfoImpl("http://www.w3.org/TR/REC-xml", str));
        }
    }

    public TypeInfoImpl() {
        this.typeNamespace = null;
        this.typeName = null;
    }

    public static TypeInfo getDTDTypeInfo(String str) {
        TypeInfo typeInfo = (TypeInfo) dtdCache.get(str);
        if (typeInfo != null) {
            return typeInfo;
        }
        throw new IllegalArgumentException("Unknown DTD datatype " + str);
    }

    @Override // org.w3c.dom.TypeInfo
    public String getTypeName() {
        return this.typeName;
    }

    @Override // org.w3c.dom.TypeInfo
    public String getTypeNamespace() {
        return this.typeNamespace;
    }

    @Override // org.w3c.dom.TypeInfo
    public boolean isDerivedFrom(String str, String str2, int i) {
        return false;
    }

    public TypeInfoImpl(String str, String str2) {
        this.typeNamespace = str;
        this.typeName = str2;
    }

    public TypeInfoImpl(XSTypeDefinition xSTypeDefinition) {
        this(xSTypeDefinition.getNamespace(), xSTypeDefinition.getName());
    }
}
