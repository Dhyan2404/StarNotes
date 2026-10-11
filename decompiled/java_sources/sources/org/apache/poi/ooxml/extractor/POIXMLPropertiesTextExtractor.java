package org.apache.poi.ooxml.extractor;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.DateFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Optional;
import org.apache.poi.ooxml.POIXMLDocument;
import org.apache.poi.openxml4j.opc.internal.PackagePropertiesPart;
import org.apache.poi.util.LocaleUtil;
import org.mortbay.jetty.HttpStatus;
import org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty;
import org.openxmlformats.schemas.officeDocument.x2006.extendedProperties.CTProperties;

/* loaded from: classes12.dex */
public class POIXMLPropertiesTextExtractor implements POIXMLTextExtractor {
    private final DateFormat dateFormat;
    private boolean doCloseFilesystem;
    private final POIXMLDocument doc;

    public POIXMLPropertiesTextExtractor(POIXMLDocument pOIXMLDocument) {
        this.doCloseFilesystem = true;
        this.doc = pOIXMLDocument;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE MMM dd HH:mm:ss zzz yyyy", DateFormatSymbols.getInstance(Locale.ROOT));
        this.dateFormat = simpleDateFormat;
        simpleDateFormat.setTimeZone(LocaleUtil.TIMEZONE_UTC);
    }

    private void appendDateIfPresent(StringBuilder sb, String str, Optional<Date> optional) {
        if (optional.isPresent()) {
            appendIfPresent(sb, str, this.dateFormat.format(optional.get()));
        }
    }

    private void appendIfPresent(StringBuilder sb, String str, boolean z) {
        appendIfPresent(sb, str, Boolean.toString(z));
    }

    public String getCorePropertiesText() {
        POIXMLDocument document = getDocument();
        if (document == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder(64);
        PackagePropertiesPart underlyingProperties = document.getProperties().getCoreProperties().getUnderlyingProperties();
        appendIfPresent(sb, "Category", underlyingProperties.getCategoryProperty());
        appendIfPresent(sb, "ContentStatus", underlyingProperties.getContentStatusProperty());
        appendIfPresent(sb, "ContentType", underlyingProperties.getContentTypeProperty());
        appendDateIfPresent(sb, HttpStatus.Created, underlyingProperties.getCreatedProperty());
        appendIfPresent(sb, "CreatedString", underlyingProperties.getCreatedPropertyString());
        appendIfPresent(sb, "Creator", underlyingProperties.getCreatorProperty());
        appendIfPresent(sb, "Description", underlyingProperties.getDescriptionProperty());
        appendIfPresent(sb, "Identifier", underlyingProperties.getIdentifierProperty());
        appendIfPresent(sb, "Keywords", underlyingProperties.getKeywordsProperty());
        appendIfPresent(sb, "Language", underlyingProperties.getLanguageProperty());
        appendIfPresent(sb, "LastModifiedBy", underlyingProperties.getLastModifiedByProperty());
        appendDateIfPresent(sb, "LastPrinted", underlyingProperties.getLastPrintedProperty());
        appendIfPresent(sb, "LastPrintedString", underlyingProperties.getLastPrintedPropertyString());
        appendDateIfPresent(sb, "Modified", underlyingProperties.getModifiedProperty());
        appendIfPresent(sb, "ModifiedString", underlyingProperties.getModifiedPropertyString());
        appendIfPresent(sb, "Revision", underlyingProperties.getRevisionProperty());
        appendIfPresent(sb, "Subject", underlyingProperties.getSubjectProperty());
        appendIfPresent(sb, "Title", underlyingProperties.getTitleProperty());
        appendIfPresent(sb, "Version", underlyingProperties.getVersionProperty());
        return sb.toString();
    }

    public String getCustomPropertiesText() {
        String str;
        POIXMLDocument document = getDocument();
        if (document == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (CTProperty cTProperty : document.getProperties().getCustomProperties().getUnderlyingProperties().getPropertyList()) {
            if (cTProperty.isSetLpwstr()) {
                str = cTProperty.getLpwstr();
            } else if (cTProperty.isSetLpstr()) {
                str = cTProperty.getLpstr();
            } else if (cTProperty.isSetDate()) {
                str = cTProperty.getDate().toString();
            } else if (cTProperty.isSetFiletime()) {
                str = cTProperty.getFiletime().toString();
            } else if (cTProperty.isSetBool()) {
                str = Boolean.toString(cTProperty.getBool());
            } else if (cTProperty.isSetI1()) {
                str = Integer.toString(cTProperty.getI1());
            } else if (cTProperty.isSetI2()) {
                str = Integer.toString(cTProperty.getI2());
            } else if (cTProperty.isSetI4()) {
                str = Integer.toString(cTProperty.getI4());
            } else if (cTProperty.isSetI8()) {
                str = Long.toString(cTProperty.getI8());
            } else if (cTProperty.isSetInt()) {
                str = Integer.toString(cTProperty.getInt());
            } else if (cTProperty.isSetUi1()) {
                str = Integer.toString(cTProperty.getUi1());
            } else if (cTProperty.isSetUi2()) {
                str = Integer.toString(cTProperty.getUi2());
            } else if (cTProperty.isSetUi4()) {
                str = Long.toString(cTProperty.getUi4());
            } else if (cTProperty.isSetUi8()) {
                str = cTProperty.getUi8().toString();
            } else if (cTProperty.isSetUint()) {
                str = Long.toString(cTProperty.getUint());
            } else if (cTProperty.isSetR4()) {
                str = Float.toString(cTProperty.getR4());
            } else if (cTProperty.isSetR8()) {
                str = Double.toString(cTProperty.getR8());
            } else if (cTProperty.isSetDecimal()) {
                BigDecimal decimal = cTProperty.getDecimal();
                str = decimal == null ? null : decimal.toPlainString();
            } else {
                str = "(not implemented!)";
            }
            sb.append(cTProperty.getName());
            sb.append(CloudStorageConstants.OPERATION_EQUAL);
            sb.append(str);
            sb.append("\n");
        }
        return sb.toString();
    }

    public String getExtendedPropertiesText() {
        POIXMLDocument document = getDocument();
        if (document == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder(64);
        CTProperties underlyingProperties = document.getProperties().getExtendedProperties().getUnderlyingProperties();
        appendIfPresent(sb, "Application", underlyingProperties.getApplication());
        appendIfPresent(sb, "AppVersion", underlyingProperties.getAppVersion());
        appendIfPresent(sb, "Characters", underlyingProperties.getCharacters());
        appendIfPresent(sb, "CharactersWithSpaces", underlyingProperties.getCharactersWithSpaces());
        appendIfPresent(sb, "Company", underlyingProperties.getCompany());
        appendIfPresent(sb, "HyperlinkBase", underlyingProperties.getHyperlinkBase());
        appendIfPresent(sb, "HyperlinksChanged", underlyingProperties.getHyperlinksChanged());
        appendIfPresent(sb, "Lines", underlyingProperties.getLines());
        appendIfPresent(sb, "LinksUpToDate", underlyingProperties.getLinksUpToDate());
        appendIfPresent(sb, "Manager", underlyingProperties.getManager());
        appendIfPresent(sb, "Pages", underlyingProperties.getPages());
        appendIfPresent(sb, "Paragraphs", underlyingProperties.getParagraphs());
        appendIfPresent(sb, "PresentationFormat", underlyingProperties.getPresentationFormat());
        appendIfPresent(sb, "Template", underlyingProperties.getTemplate());
        appendIfPresent(sb, "TotalTime", underlyingProperties.getTotalTime());
        return sb.toString();
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public POIXMLDocument getFilesystem() {
        return null;
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public String getText() {
        try {
            return getCorePropertiesText() + getExtendedPropertiesText() + getCustomPropertiesText();
        } catch (Exception e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public boolean isCloseFilesystem() {
        return this.doCloseFilesystem;
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public void setCloseFilesystem(boolean z) {
        this.doCloseFilesystem = z;
    }

    private void appendIfPresent(StringBuilder sb, String str, int i) {
        appendIfPresent(sb, str, Integer.toString(i));
    }

    @Override // org.apache.poi.ooxml.extractor.POIXMLTextExtractor, org.apache.poi.extractor.POITextExtractor
    public POIXMLDocument getDocument() {
        return this.doc;
    }

    @Override // org.apache.poi.ooxml.extractor.POIXMLTextExtractor, org.apache.poi.extractor.POITextExtractor
    public POIXMLPropertiesTextExtractor getMetadataTextExtractor() {
        throw new IllegalStateException("You already have the Metadata Text Extractor, not recursing!");
    }

    private void appendIfPresent(StringBuilder sb, String str, Optional<String> optional) {
        if (optional.isPresent()) {
            appendIfPresent(sb, str, optional.get());
        }
    }

    private void appendIfPresent(StringBuilder sb, String str, String str2) {
        if (str2 == null) {
            return;
        }
        sb.append(str);
        sb.append(CloudStorageConstants.OPERATION_EQUAL);
        sb.append(str2);
        sb.append('\n');
    }

    public POIXMLPropertiesTextExtractor(POIXMLTextExtractor pOIXMLTextExtractor) {
        this(pOIXMLTextExtractor.getDocument());
    }
}
