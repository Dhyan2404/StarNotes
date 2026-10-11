package com.microsoft.schemas.office.visio.x2012.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface PublishSettingsType extends XmlObject {
    public static final DocumentFactory<PublishSettingsType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<PublishSettingsType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "publishsettingstype90d9type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    PublishedPageType addNewPublishedPage();

    RefreshableDataType addNewRefreshableData();

    PublishedPageType getPublishedPageArray(int i);

    PublishedPageType[] getPublishedPageArray();

    List<PublishedPageType> getPublishedPageList();

    RefreshableDataType getRefreshableDataArray(int i);

    RefreshableDataType[] getRefreshableDataArray();

    List<RefreshableDataType> getRefreshableDataList();

    PublishedPageType insertNewPublishedPage(int i);

    RefreshableDataType insertNewRefreshableData(int i);

    void removePublishedPage(int i);

    void removeRefreshableData(int i);

    void setPublishedPageArray(int i, PublishedPageType publishedPageType);

    void setPublishedPageArray(PublishedPageType[] publishedPageTypeArr);

    void setRefreshableDataArray(int i, RefreshableDataType refreshableDataType);

    void setRefreshableDataArray(RefreshableDataType[] refreshableDataTypeArr);

    int sizeOfPublishedPageArray();

    int sizeOfRefreshableDataArray();
}
