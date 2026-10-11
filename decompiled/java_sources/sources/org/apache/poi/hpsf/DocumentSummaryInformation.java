package org.apache.poi.hpsf;

import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import org.apache.poi.hpsf.wellknown.PropertyIDMap;

/* loaded from: classes12.dex */
public class DocumentSummaryInformation extends PropertySet {
    public static final String DEFAULT_STREAM_NAME = "\u0005DocumentSummaryInformation";
    public static final ClassID[] FORMAT_ID = {ClassIDPredefined.DOC_SUMMARY.getClassID(), ClassIDPredefined.USER_PROPERTIES.getClassID()};

    public DocumentSummaryInformation() {
        getFirstSection().setFormatID(ClassIDPredefined.DOC_SUMMARY.getClassID());
    }

    private void ensureSection2() {
        if (getSectionCount() < 2) {
            Section section = new Section();
            section.setFormatID(ClassIDPredefined.USER_PROPERTIES.getClassID());
            addSection(section);
        }
    }

    private void notYetImplemented(String str) {
        throw new UnsupportedOperationException(str + " is not yet implemented.");
    }

    public int getApplicationVersion() {
        return getPropertyIntValue(23);
    }

    public int getByteCount() {
        return getPropertyIntValue(4);
    }

    public String getCategory() {
        return getPropertyStringValue(2);
    }

    public int getCharCountWithSpaces() {
        return getPropertyIntValue(17);
    }

    public String getCompany() {
        return getPropertyStringValue(15);
    }

    public String getContentStatus() {
        return getPropertyStringValue(27);
    }

    public String getContentType() {
        return getPropertyStringValue(26);
    }

    public CustomProperties getCustomProperties() {
        if (getSectionCount() < 2) {
            return null;
        }
        CustomProperties customProperties = new CustomProperties();
        Section section = getSections().get(1);
        Map<Long, String> dictionary = section.getDictionary();
        int i = 0;
        for (Property property : section.getProperties()) {
            long id = property.getID();
            if (id == 1) {
                customProperties.setCodepage(((Integer) property.getValue()).intValue());
            } else if (id > 1) {
                i++;
                CustomProperty customProperty = new CustomProperty(property, dictionary.get(Long.valueOf(id)));
                customProperties.put(customProperty.getName(), customProperty);
            }
        }
        if (customProperties.size() == i) {
            return customProperties;
        }
        customProperties.setPure(false);
        return customProperties;
    }

    public byte[] getDocparts() {
        notYetImplemented("Reading byte arrays");
        return (byte[]) getProperty(13);
    }

    public String getDocumentVersion() {
        return getPropertyStringValue(29);
    }

    public byte[] getHeadingPair() {
        notYetImplemented("Reading byte arrays ");
        return (byte[]) getProperty(12);
    }

    public int getHiddenCount() {
        return getPropertyIntValue(9);
    }

    public boolean getHyperlinksChanged() {
        return getPropertyBooleanValue(22);
    }

    public String getLanguage() {
        return getPropertyStringValue(28);
    }

    public int getLineCount() {
        return getPropertyIntValue(5);
    }

    public boolean getLinksDirty() {
        return getPropertyBooleanValue(16);
    }

    public int getMMClipCount() {
        return getPropertyIntValue(10);
    }

    public String getManager() {
        return getPropertyStringValue(14);
    }

    public int getNoteCount() {
        return getPropertyIntValue(8);
    }

    public int getParCount() {
        return getPropertyIntValue(6);
    }

    public String getPresentationFormat() {
        return getPropertyStringValue(3);
    }

    @Override // org.apache.poi.hpsf.PropertySet
    public PropertyIDMap getPropertySetIDMap() {
        return PropertyIDMap.getDocumentSummaryInformationProperties();
    }

    public boolean getScale() {
        return getPropertyBooleanValue(11);
    }

    public int getSlideCount() {
        return getPropertyIntValue(7);
    }

    public byte[] getVBADigitalSignature() {
        Object property = getProperty(24);
        if (property instanceof byte[]) {
            return (byte[]) property;
        }
        return null;
    }

    public void removeApplicationVersion() {
        remove1stProperty(23L);
    }

    public void removeByteCount() {
        remove1stProperty(4L);
    }

    public void removeCategory() {
        remove1stProperty(2L);
    }

    public void removeCharCountWithSpaces() {
        remove1stProperty(17L);
    }

    public void removeCompany() {
        remove1stProperty(15L);
    }

    public void removeContentStatus() {
        remove1stProperty(27L);
    }

    public void removeContentType() {
        remove1stProperty(26L);
    }

    public void removeCustomProperties() {
        if (getSectionCount() < 2) {
            throw new HPSFRuntimeException("Illegal internal format of Document SummaryInformation stream: second section is missing.");
        }
        LinkedList<Section> linkedList = new LinkedList(getSections());
        clearSections();
        int i = 0;
        for (Section section : linkedList) {
            int i2 = i + 1;
            if (i != 1) {
                addSection(section);
            }
            i = i2;
        }
    }

    public void removeDocparts() {
        remove1stProperty(13L);
    }

    public void removeDocumentVersion() {
        remove1stProperty(29L);
    }

    public void removeHeadingPair() {
        remove1stProperty(12L);
    }

    public void removeHiddenCount() {
        remove1stProperty(9L);
    }

    public void removeHyperlinksChanged() {
        remove1stProperty(22L);
    }

    public void removeLanguage() {
        remove1stProperty(28L);
    }

    public void removeLineCount() {
        remove1stProperty(5L);
    }

    public void removeLinksDirty() {
        remove1stProperty(16L);
    }

    public void removeMMClipCount() {
        remove1stProperty(10L);
    }

    public void removeManager() {
        remove1stProperty(14L);
    }

    public void removeNoteCount() {
        remove1stProperty(8L);
    }

    public void removeParCount() {
        remove1stProperty(6L);
    }

    public void removePresentationFormat() {
        remove1stProperty(3L);
    }

    public void removeScale() {
        remove1stProperty(11L);
    }

    public void removeSlideCount() {
        remove1stProperty(7L);
    }

    public void removeVBADigitalSignature() {
        remove1stProperty(24L);
    }

    public void setApplicationVersion(int i) {
        set1stProperty(23L, i);
    }

    public void setByteCount(int i) {
        set1stProperty(4L, i);
    }

    public void setCategory(String str) {
        getFirstSection().setProperty(2, str);
    }

    public void setCharCountWithSpaces(int i) {
        set1stProperty(17L, i);
    }

    public void setCompany(String str) {
        set1stProperty(15L, str);
    }

    public void setContentStatus(String str) {
        set1stProperty(27L, str);
    }

    public void setContentType(String str) {
        set1stProperty(26L, str);
    }

    public void setCustomProperties(CustomProperties customProperties) {
        ensureSection2();
        Section section = getSections().get(1);
        Map<Long, String> dictionary = customProperties.getDictionary();
        int codepage = customProperties.getCodepage();
        if (codepage < 0) {
            codepage = section.getCodepage();
        }
        if (codepage < 0) {
            codepage = 1252;
        }
        customProperties.setCodepage(codepage);
        section.setCodepage(codepage);
        section.setDictionary(dictionary);
        Iterator<CustomProperty> it2 = customProperties.properties().iterator();
        while (it2.hasNext()) {
            section.setProperty(it2.next());
        }
    }

    public void setDocparts(byte[] bArr) {
        notYetImplemented("Writing byte arrays");
    }

    public void setDocumentVersion(String str) {
        set1stProperty(29L, str);
    }

    public void setHeadingPair(byte[] bArr) {
        notYetImplemented("Writing byte arrays ");
    }

    public void setHiddenCount(int i) {
        set1stProperty(9L, i);
    }

    public void setHyperlinksChanged(boolean z) {
        set1stProperty(22L, z);
    }

    public void setLanguage(String str) {
        set1stProperty(28L, str);
    }

    public void setLineCount(int i) {
        set1stProperty(5L, i);
    }

    public void setLinksDirty(boolean z) {
        set1stProperty(16L, z);
    }

    public void setMMClipCount(int i) {
        set1stProperty(10L, i);
    }

    public void setManager(String str) {
        set1stProperty(14L, str);
    }

    public void setNoteCount(int i) {
        set1stProperty(8L, i);
    }

    public void setParCount(int i) {
        set1stProperty(6L, i);
    }

    public void setPresentationFormat(String str) {
        getFirstSection().setProperty(3, str);
    }

    public void setScale(boolean z) {
        set1stProperty(11L, z);
    }

    public void setSlideCount(int i) {
        set1stProperty(7L, i);
    }

    public void setVBADigitalSignature(byte[] bArr) {
        set1stProperty(24L, bArr);
    }

    public DocumentSummaryInformation(PropertySet propertySet) throws UnexpectedPropertySetTypeException {
        super(propertySet);
        if (isDocumentSummaryInformation()) {
            return;
        }
        throw new UnexpectedPropertySetTypeException("Not a " + getClass().getName());
    }

    public DocumentSummaryInformation(InputStream inputStream) throws NoPropertySetStreamException, IOException {
        super(inputStream);
    }
}
