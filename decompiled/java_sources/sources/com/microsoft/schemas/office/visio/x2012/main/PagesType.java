package com.microsoft.schemas.office.visio.x2012.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface PagesType extends XmlObject {
    public static final DocumentFactory<PagesType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<PagesType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "pagestypef2e7type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    PageType addNewPage();

    PageType getPageArray(int i);

    PageType[] getPageArray();

    List<PageType> getPageList();

    PageType insertNewPage(int i);

    void removePage(int i);

    void setPageArray(int i, PageType pageType);

    void setPageArray(PageType[] pageTypeArr);

    int sizeOfPageArray();
}
