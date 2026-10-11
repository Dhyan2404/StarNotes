package com.sun.imageio.plugins.tiff;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import javax.imageio.metadata.IIOMetadataFormat;

/* loaded from: classes9.dex */
public abstract class TIFFMetadataFormat implements IIOMetadataFormat {
    protected String resourceBaseName;
    protected String rootName;
    protected Map<String, TIFFElementInfo> elementInfoMap = new HashMap();
    protected Map<String, TIFFAttrInfo> attrInfoMap = new HashMap();

    private TIFFAttrInfo getAttrInfo(String str, String str2) {
        if (str == null) {
            throw new NullPointerException("elementName == null!");
        }
        if (str2 == null) {
            throw new NullPointerException("attrName == null!");
        }
        String str3 = str + "/" + str2;
        TIFFAttrInfo tIFFAttrInfo = this.attrInfoMap.get(str3);
        if (tIFFAttrInfo != null) {
            return tIFFAttrInfo;
        }
        throw new IllegalArgumentException("No such attribute: " + str3);
    }

    private TIFFElementInfo getElementInfo(String str) {
        if (str == null) {
            throw new NullPointerException("elementName == null!");
        }
        TIFFElementInfo tIFFElementInfo = this.elementInfoMap.get(str);
        if (tIFFElementInfo != null) {
            return tIFFElementInfo;
        }
        throw new IllegalArgumentException("No such element: " + str);
    }

    private String getResource(String str, Locale locale) {
        if (locale == null) {
            locale = Locale.getDefault();
        }
        try {
            return ResourceBundle.getBundle(this.resourceBaseName, locale, getClass().getClassLoader()).getString(str);
        } catch (MissingResourceException unused) {
            return null;
        }
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public int getAttributeDataType(String str, String str2) {
        return getAttrInfo(str, str2).dataType;
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public String getAttributeDefaultValue(String str, String str2) {
        return null;
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public String getAttributeDescription(String str, String str2, Locale locale) {
        String str3 = str + "/" + str2;
        if (this.attrInfoMap.containsKey(str3)) {
            return getResource(str3, locale);
        }
        throw new IllegalArgumentException("No such attribute: " + str3);
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public String[] getAttributeEnumerations(String str, String str2) {
        throw new IllegalArgumentException("The attribute is not an enumeration.");
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public int getAttributeListMaxLength(String str, String str2) {
        return getAttrInfo(str, str2).listMaxLength;
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public int getAttributeListMinLength(String str, String str2) {
        return getAttrInfo(str, str2).listMinLength;
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public String getAttributeMaxValue(String str, String str2) {
        throw new IllegalArgumentException("The attribute is not a range.");
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public String getAttributeMinValue(String str, String str2) {
        throw new IllegalArgumentException("The attribute is not a range.");
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public String[] getAttributeNames(String str) {
        return getElementInfo(str).attributeNames;
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public int getAttributeValueType(String str, String str2) {
        return getAttrInfo(str, str2).valueType;
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public String[] getChildNames(String str) {
        return getElementInfo(str).childNames;
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public int getChildPolicy(String str) {
        return getElementInfo(str).childPolicy;
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public String getElementDescription(String str, Locale locale) {
        if (this.elementInfoMap.containsKey(str)) {
            return getResource(str, locale);
        }
        throw new IllegalArgumentException("No such element: " + str);
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public int getElementMaxChildren(String str) {
        return getElementInfo(str).maxChildren;
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public int getElementMinChildren(String str) {
        return getElementInfo(str).minChildren;
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public int getObjectArrayMaxLength(String str) {
        TIFFElementInfo elementInfo = getElementInfo(str);
        if (elementInfo.objectValueType != 0) {
            return elementInfo.objectArrayMaxLength;
        }
        throw new IllegalArgumentException("Element cannot contain an object value: " + str);
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public int getObjectArrayMinLength(String str) {
        TIFFElementInfo elementInfo = getElementInfo(str);
        if (elementInfo.objectValueType != 0) {
            return elementInfo.objectArrayMinLength;
        }
        throw new IllegalArgumentException("Element cannot contain an object value: " + str);
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public Class<?> getObjectClass(String str) {
        TIFFElementInfo elementInfo = getElementInfo(str);
        if (elementInfo.objectValueType != 0) {
            return elementInfo.objectClass;
        }
        throw new IllegalArgumentException("Element cannot contain an object value: " + str);
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public Object getObjectDefaultValue(String str) {
        TIFFElementInfo elementInfo = getElementInfo(str);
        if (elementInfo.objectValueType != 0) {
            return elementInfo.objectDefaultValue;
        }
        throw new IllegalArgumentException("Element cannot contain an object value: " + str);
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public Object[] getObjectEnumerations(String str) {
        TIFFElementInfo elementInfo = getElementInfo(str);
        if (elementInfo.objectValueType != 0) {
            return elementInfo.objectEnumerations;
        }
        throw new IllegalArgumentException("Element cannot contain an object value: " + str);
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public Comparable<Object> getObjectMaxValue(String str) {
        TIFFElementInfo elementInfo = getElementInfo(str);
        if (elementInfo.objectValueType != 0) {
            return elementInfo.objectMaxValue;
        }
        throw new IllegalArgumentException("Element cannot contain an object value: " + str);
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public Comparable<Object> getObjectMinValue(String str) {
        TIFFElementInfo elementInfo = getElementInfo(str);
        if (elementInfo.objectValueType != 0) {
            return elementInfo.objectMinValue;
        }
        throw new IllegalArgumentException("Element cannot contain an object value: " + str);
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public int getObjectValueType(String str) {
        return getElementInfo(str).objectValueType;
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public String getRootName() {
        return this.rootName;
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public boolean isAttributeRequired(String str, String str2) {
        return getAttrInfo(str, str2).isRequired;
    }
}
