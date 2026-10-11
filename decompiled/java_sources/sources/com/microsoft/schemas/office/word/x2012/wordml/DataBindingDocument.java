package com.microsoft.schemas.office.word.x2012.wordml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDataBinding;

/* loaded from: classes7.dex */
public interface DataBindingDocument extends XmlObject {
    public static final DocumentFactory<DataBindingDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<DataBindingDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "databindingee89doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDataBinding addNewDataBinding();

    CTDataBinding getDataBinding();

    void setDataBinding(CTDataBinding cTDataBinding);
}
