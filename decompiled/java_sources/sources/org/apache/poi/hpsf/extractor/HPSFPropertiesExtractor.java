package org.apache.poi.hpsf.extractor;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import org.apache.poi.POIDocument;
import org.apache.poi.extractor.POIOLE2TextExtractor;
import org.apache.poi.extractor.POITextExtractor;
import org.apache.poi.hpsf.CustomProperties;
import org.apache.poi.hpsf.DocumentSummaryInformation;
import org.apache.poi.hpsf.HPSFPropertiesOnlyDocument;
import org.apache.poi.hpsf.Property;
import org.apache.poi.hpsf.PropertySet;
import org.apache.poi.hpsf.wellknown.PropertyIDMap;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;

/* loaded from: classes12.dex */
public class HPSFPropertiesExtractor implements POIOLE2TextExtractor {
    private boolean doCloseFilesystem = true;
    private final POIDocument document;

    public HPSFPropertiesExtractor(POIOLE2TextExtractor pOIOLE2TextExtractor) {
        this.document = pOIOLE2TextExtractor.getDocument();
    }

    private static String getPropertiesText(PropertySet propertySet) {
        if (propertySet == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        PropertyIDMap propertySetIDMap = propertySet.getPropertySetIDMap();
        for (Property property : propertySet.getProperties()) {
            String l = Long.toString(property.getID());
            String str = propertySetIDMap == null ? null : propertySetIDMap.get((Object) Long.valueOf(property.getID()));
            if (str != null) {
                l = str.toString();
            }
            String propertyValueText = getPropertyValueText(property.getValue());
            sb.append(l);
            sb.append(CloudStorageConstants.OPERATION_EQUAL);
            sb.append(propertyValueText);
            sb.append("\n");
        }
        return sb.toString();
    }

    private static String getPropertyValueText(Object obj) {
        return obj == null ? "(not set)" : PropertySet.getPropertyStringValue(obj);
    }

    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    public String getDocumentSummaryInformationText() {
        POIDocument pOIDocument = this.document;
        if (pOIDocument == null) {
            return "";
        }
        DocumentSummaryInformation documentSummaryInformation = pOIDocument.getDocumentSummaryInformation();
        StringBuilder sb = new StringBuilder();
        sb.append(getPropertiesText(documentSummaryInformation));
        CustomProperties customProperties = documentSummaryInformation == null ? null : documentSummaryInformation.getCustomProperties();
        if (customProperties != null) {
            for (String str : customProperties.nameSet()) {
                String propertyValueText = getPropertyValueText(customProperties.get(str));
                sb.append(str);
                sb.append(CloudStorageConstants.OPERATION_EQUAL);
                sb.append(propertyValueText);
                sb.append("\n");
            }
        }
        return sb.toString();
    }

    @Override // org.apache.poi.extractor.POIOLE2TextExtractor, org.apache.poi.extractor.POITextExtractor
    public POITextExtractor getMetadataTextExtractor() {
        throw new IllegalStateException("You already have the Metadata Text Extractor, not recursing!");
    }

    public String getSummaryInformationText() {
        POIDocument pOIDocument = this.document;
        return pOIDocument == null ? "" : getPropertiesText(pOIDocument.getSummaryInformation());
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public String getText() {
        return getSummaryInformationText() + getDocumentSummaryInformationText();
    }

    public int hashCode() {
        return super.hashCode();
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public boolean isCloseFilesystem() {
        return this.doCloseFilesystem;
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public void setCloseFilesystem(boolean z) {
        this.doCloseFilesystem = z;
    }

    @Override // org.apache.poi.extractor.POIOLE2TextExtractor, org.apache.poi.extractor.POITextExtractor
    public POIDocument getDocument() {
        return this.document;
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public POIDocument getFilesystem() {
        return this.document;
    }

    public HPSFPropertiesExtractor(POIDocument pOIDocument) {
        this.document = pOIDocument;
    }

    public HPSFPropertiesExtractor(POIFSFileSystem pOIFSFileSystem) {
        this.document = new HPSFPropertiesOnlyDocument(pOIFSFileSystem);
    }
}
