package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTMailMerge extends XmlObject {
    public static final DocumentFactory<CTMailMerge> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTMailMerge> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctmailmerge1631type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDecimalNumber addNewActiveRecord();

    CTString addNewAddressFieldName();

    CTDecimalNumber addNewCheckErrors();

    CTString addNewConnectString();

    CTRel addNewDataSource();

    CTMailMergeDataType addNewDataType();

    CTMailMergeDest addNewDestination();

    CTOnOff addNewDoNotSuppressBlankLines();

    CTRel addNewHeaderSource();

    CTOnOff addNewLinkToQuery();

    CTOnOff addNewMailAsAttachment();

    CTString addNewMailSubject();

    CTMailMergeDocType addNewMainDocumentType();

    CTOdso addNewOdso();

    CTString addNewQuery();

    CTOnOff addNewViewMergedData();

    CTDecimalNumber getActiveRecord();

    CTString getAddressFieldName();

    CTDecimalNumber getCheckErrors();

    CTString getConnectString();

    CTRel getDataSource();

    CTMailMergeDataType getDataType();

    CTMailMergeDest getDestination();

    CTOnOff getDoNotSuppressBlankLines();

    CTRel getHeaderSource();

    CTOnOff getLinkToQuery();

    CTOnOff getMailAsAttachment();

    CTString getMailSubject();

    CTMailMergeDocType getMainDocumentType();

    CTOdso getOdso();

    CTString getQuery();

    CTOnOff getViewMergedData();

    boolean isSetActiveRecord();

    boolean isSetAddressFieldName();

    boolean isSetCheckErrors();

    boolean isSetConnectString();

    boolean isSetDataSource();

    boolean isSetDestination();

    boolean isSetDoNotSuppressBlankLines();

    boolean isSetHeaderSource();

    boolean isSetLinkToQuery();

    boolean isSetMailAsAttachment();

    boolean isSetMailSubject();

    boolean isSetOdso();

    boolean isSetQuery();

    boolean isSetViewMergedData();

    void setActiveRecord(CTDecimalNumber cTDecimalNumber);

    void setAddressFieldName(CTString cTString);

    void setCheckErrors(CTDecimalNumber cTDecimalNumber);

    void setConnectString(CTString cTString);

    void setDataSource(CTRel cTRel);

    void setDataType(CTMailMergeDataType cTMailMergeDataType);

    void setDestination(CTMailMergeDest cTMailMergeDest);

    void setDoNotSuppressBlankLines(CTOnOff cTOnOff);

    void setHeaderSource(CTRel cTRel);

    void setLinkToQuery(CTOnOff cTOnOff);

    void setMailAsAttachment(CTOnOff cTOnOff);

    void setMailSubject(CTString cTString);

    void setMainDocumentType(CTMailMergeDocType cTMailMergeDocType);

    void setOdso(CTOdso cTOdso);

    void setQuery(CTString cTString);

    void setViewMergedData(CTOnOff cTOnOff);

    void unsetActiveRecord();

    void unsetAddressFieldName();

    void unsetCheckErrors();

    void unsetConnectString();

    void unsetDataSource();

    void unsetDestination();

    void unsetDoNotSuppressBlankLines();

    void unsetHeaderSource();

    void unsetLinkToQuery();

    void unsetMailAsAttachment();

    void unsetMailSubject();

    void unsetOdso();

    void unsetQuery();

    void unsetViewMergedData();
}
