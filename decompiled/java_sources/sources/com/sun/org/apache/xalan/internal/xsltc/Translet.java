package com.sun.org.apache.xalan.internal.xsltc;

import com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
import com.sun.org.apache.xml.internal.serializer.SerializationHandler;

/* loaded from: classes10.dex */
public interface Translet {
    void addAuxiliaryClass(Class cls);

    Object addParameter(String str, Object obj);

    void buildKeys(DOM dom, DTMAxisIterator dTMAxisIterator, SerializationHandler serializationHandler, int i) throws TransletException;

    Class getAuxiliaryClass(String str);

    String[] getNamesArray();

    String[] getNamespaceArray();

    int[] getTypesArray();

    String[] getUrisArray();

    void transform(DOM dom, DTMAxisIterator dTMAxisIterator, SerializationHandler serializationHandler) throws TransletException;

    void transform(DOM dom, SerializationHandler serializationHandler) throws TransletException;

    void transform(DOM dom, SerializationHandler[] serializationHandlerArr) throws TransletException;
}
