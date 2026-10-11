package org.apache.xerces.util;

import java.util.ArrayList;
import java.util.HashMap;
import org.apache.xerces.xni.parser.XMLComponentManager;
import org.apache.xerces.xni.parser.XMLConfigurationException;

/* loaded from: classes13.dex */
public class ParserConfigurationSettings implements XMLComponentManager {
    protected static final String PARSER_SETTINGS = "http://apache.org/xml/features/internal/parser-settings";
    protected HashMap fFeatures;
    protected XMLComponentManager fParentSettings;
    protected HashMap fProperties;
    protected ArrayList fRecognizedFeatures;
    protected ArrayList fRecognizedProperties;

    public ParserConfigurationSettings() {
        this(null);
    }

    public void addRecognizedFeatures(String[] strArr) {
        int length = strArr != null ? strArr.length : 0;
        for (int i = 0; i < length; i++) {
            String str = strArr[i];
            if (!this.fRecognizedFeatures.contains(str)) {
                this.fRecognizedFeatures.add(str);
            }
        }
    }

    public void addRecognizedProperties(String[] strArr) {
        int length = strArr != null ? strArr.length : 0;
        for (int i = 0; i < length; i++) {
            String str = strArr[i];
            if (!this.fRecognizedProperties.contains(str)) {
                this.fRecognizedProperties.add(str);
            }
        }
    }

    public void checkFeature(String str) throws XMLConfigurationException {
        if (this.fRecognizedFeatures.contains(str)) {
            return;
        }
        XMLComponentManager xMLComponentManager = this.fParentSettings;
        if (xMLComponentManager == null) {
            throw new XMLConfigurationException((short) 0, str);
        }
        xMLComponentManager.getFeature(str);
    }

    public void checkProperty(String str) throws XMLConfigurationException {
        if (this.fRecognizedProperties.contains(str)) {
            return;
        }
        XMLComponentManager xMLComponentManager = this.fParentSettings;
        if (xMLComponentManager == null) {
            throw new XMLConfigurationException((short) 0, str);
        }
        xMLComponentManager.getProperty(str);
    }

    @Override // org.apache.xerces.xni.parser.XMLComponentManager
    public boolean getFeature(String str) throws XMLConfigurationException {
        Boolean bool = (Boolean) this.fFeatures.get(str);
        if (bool != null) {
            return bool.booleanValue();
        }
        checkFeature(str);
        return false;
    }

    @Override // org.apache.xerces.xni.parser.XMLComponentManager
    public Object getProperty(String str) throws XMLConfigurationException {
        Object obj = this.fProperties.get(str);
        if (obj == null) {
            checkProperty(str);
        }
        return obj;
    }

    public void setFeature(String str, boolean z) throws XMLConfigurationException {
        checkFeature(str);
        this.fFeatures.put(str, z ? Boolean.TRUE : Boolean.FALSE);
    }

    public void setProperty(String str, Object obj) throws XMLConfigurationException {
        checkProperty(str);
        this.fProperties.put(str, obj);
    }

    public ParserConfigurationSettings(XMLComponentManager xMLComponentManager) {
        this.fRecognizedFeatures = new ArrayList();
        this.fRecognizedProperties = new ArrayList();
        this.fFeatures = new HashMap();
        this.fProperties = new HashMap();
        this.fParentSettings = xMLComponentManager;
    }
}
