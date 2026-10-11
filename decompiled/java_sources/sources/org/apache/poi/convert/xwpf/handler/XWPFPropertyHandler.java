package org.apache.poi.convert.xwpf.handler;

import com.onyx.android.sdk.base.utils.DateTimeUtil;
import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Optional;
import org.apache.poi.convert.HtmlDocumentFacade;
import org.apache.poi.convert.htmlgen.PropertyHandler;
import org.apache.poi.ooxml.POIXMLProperties;
import org.apache.poi.openxml4j.opc.internal.PackagePropertiesPart;
import org.mortbay.jetty.HttpStatus;
import org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty;
import org.openxmlformats.schemas.officeDocument.x2006.extendedProperties.CTProperties;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes12.dex */
public class XWPFPropertyHandler implements PropertyHandler {
    private XWPFContext context;
    private final DateFormat dateFormat = new SimpleDateFormat(DateTimeUtil.FORMAT_YYYYMMDD_HHMMSS);

    public XWPFPropertyHandler(XWPFContext xWPFContext) {
        this.context = xWPFContext;
    }

    private void readCoreProperties(POIXMLProperties pOIXMLProperties, Map<String, String> map) {
        PackagePropertiesPart underlyingProperties = pOIXMLProperties.getCoreProperties().getUnderlyingProperties();
        putIfPresent(map, "Category", underlyingProperties.getCategoryProperty());
        putIfPresent(map, "Category", underlyingProperties.getCategoryProperty());
        putIfPresent(map, "ContentStatus", underlyingProperties.getContentStatusProperty());
        putIfPresent(map, "ContentType", underlyingProperties.getContentTypeProperty());
        putDateIfPresent(map, HttpStatus.Created, underlyingProperties.getCreatedProperty());
        putIfPresent(map, "CreatedString", underlyingProperties.getCreatedPropertyString());
        putIfPresent(map, "Creator", underlyingProperties.getCreatorProperty());
        putIfPresent(map, "Description", underlyingProperties.getDescriptionProperty());
        putIfPresent(map, "Identifier", underlyingProperties.getIdentifierProperty());
        putIfPresent(map, "Keywords", underlyingProperties.getKeywordsProperty());
        putIfPresent(map, "Language", underlyingProperties.getLanguageProperty());
        putIfPresent(map, "LastModifiedBy", underlyingProperties.getLastModifiedByProperty());
        putDateIfPresent(map, "LastPrinted", underlyingProperties.getLastPrintedProperty());
        putIfPresent(map, "LastPrintedString", underlyingProperties.getLastPrintedPropertyString());
        putDateIfPresent(map, "Modified", underlyingProperties.getModifiedProperty());
        putIfPresent(map, "ModifiedString", underlyingProperties.getModifiedPropertyString());
        putIfPresent(map, "Revision", underlyingProperties.getRevisionProperty());
        putIfPresent(map, "Subject", underlyingProperties.getSubjectProperty());
        putIfPresent(map, "Version", underlyingProperties.getVersionProperty());
    }

    @Override // org.apache.poi.convert.htmlgen.PropertyHandler
    public void handleProperties() {
        POIXMLProperties properties = this.context.document.getProperties();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        readCoreProperties(properties, linkedHashMap);
        readExtendedProperties(properties, linkedHashMap);
        readCustomProperties(properties, linkedHashMap);
        Optional<String> titleProperty = properties.getCoreProperties().getUnderlyingProperties().getTitleProperty();
        HtmlDocumentFacade documentFacade = this.context.getDocumentFacade();
        if (titleProperty.isPresent()) {
            documentFacade.setTitle(titleProperty.get());
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            documentFacade.addMeta((String) entry.getKey(), (String) entry.getValue());
        }
    }

    public void putDateIfPresent(Map<String, String> map, String str, Optional<Date> optional) {
        if (optional.isPresent()) {
            putIfPresent(map, str, this.dateFormat.format(optional.get()));
        }
    }

    public void putIfPresent(Map<String, String> map, String str, boolean z) {
        putIfPresent(map, str, Boolean.toString(z));
    }

    public void readCustomProperties(POIXMLProperties pOIXMLProperties, Map<String, String> map) {
        String str;
        for (CTProperty cTProperty : pOIXMLProperties.getCustomProperties().getUnderlyingProperties().getPropertyList()) {
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
            map.put(cTProperty.getName(), str);
        }
    }

    public void readExtendedProperties(POIXMLProperties pOIXMLProperties, Map<String, String> map) {
        CTProperties underlyingProperties = pOIXMLProperties.getExtendedProperties().getUnderlyingProperties();
        putIfPresent(map, "Application", underlyingProperties.getApplication());
        putIfPresent(map, "AppVersion", underlyingProperties.getAppVersion());
        putIfPresent(map, "Characters", underlyingProperties.getCharacters());
        putIfPresent(map, "CharactersWithSpaces", underlyingProperties.getCharactersWithSpaces());
        putIfPresent(map, "Company", underlyingProperties.getCompany());
        putIfPresent(map, "HyperlinkBase", underlyingProperties.getHyperlinkBase());
        putIfPresent(map, "HyperlinksChanged", underlyingProperties.getHyperlinksChanged());
        putIfPresent(map, "Lines", underlyingProperties.getLines());
        putIfPresent(map, "LinksUpToDate", underlyingProperties.getLinksUpToDate());
        putIfPresent(map, "Manager", underlyingProperties.getManager());
        putIfPresent(map, "Pages", underlyingProperties.getPages());
        putIfPresent(map, "Paragraphs", underlyingProperties.getParagraphs());
        putIfPresent(map, "PresentationFormat", underlyingProperties.getPresentationFormat());
        putIfPresent(map, "Template", underlyingProperties.getTemplate());
        putIfPresent(map, "TotalTime", underlyingProperties.getTotalTime());
    }

    public void putIfPresent(Map<String, String> map, String str, int i) {
        putIfPresent(map, str, Integer.toString(i));
    }

    public void putIfPresent(Map<String, String> map, String str, Optional<String> optional) {
        if (optional.isPresent()) {
            putIfPresent(map, str, optional.get());
        }
    }

    public void putIfPresent(Map<String, String> map, String str, String str2) {
        if (str2 == null) {
            return;
        }
        map.put(str, str2);
    }
}
