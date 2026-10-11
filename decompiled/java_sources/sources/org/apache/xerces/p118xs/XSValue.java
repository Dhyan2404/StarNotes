package org.apache.xerces.p118xs;

/* loaded from: classes13.dex */
public interface XSValue {
    Object getActualValue();

    short getActualValueType();

    ShortList getListValueTypes();

    XSSimpleTypeDefinition getMemberTypeDefinition();

    XSObjectList getMemberTypeDefinitions();

    String getNormalizedValue();

    XSSimpleTypeDefinition getTypeDefinition();
}
