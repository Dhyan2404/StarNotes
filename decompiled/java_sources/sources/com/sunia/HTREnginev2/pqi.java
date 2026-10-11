package com.sunia.HTREnginev2;

import javax.xml.validation.TypeInfoProvider;
import org.w3c.dom.TypeInfo;

/* loaded from: classes13.dex */
public class pqi extends TypeInfoProvider {
    @Override // javax.xml.validation.TypeInfoProvider
    public TypeInfo getAttributeTypeInfo(int i) {
        return null;
    }

    @Override // javax.xml.validation.TypeInfoProvider
    public TypeInfo getElementTypeInfo() {
        return null;
    }

    @Override // javax.xml.validation.TypeInfoProvider
    public boolean isIdAttribute(int i) {
        return false;
    }

    @Override // javax.xml.validation.TypeInfoProvider
    public boolean isSpecified(int i) {
        return false;
    }

    public TypeInfo getAttributeTypeInfo(String str) {
        return null;
    }

    public TypeInfo getAttributeTypeInfo(String str, String str2) {
        return null;
    }
}
