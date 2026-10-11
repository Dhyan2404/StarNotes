package org.apache.xerces.dom3.as;

/* loaded from: classes13.dex */
public interface ASEntityDeclaration extends ASObject {
    public static final short EXTERNAL_ENTITY = 2;
    public static final short INTERNAL_ENTITY = 1;

    short getEntityType();

    String getEntityValue();

    String getPublicId();

    String getSystemId();

    void setEntityType(short s);

    void setEntityValue(String str);

    void setPublicId(String str);

    void setSystemId(String str);
}
