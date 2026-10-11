package com.sun.org.apache.xalan.internal.templates;

import com.caverock.androidsvg.SVGParser;
import com.sun.org.apache.xalan.internal.res.XSLMessages;
import com.sun.org.apache.xml.internal.serializer.OutputPropertiesFactory;
import com.sun.org.apache.xml.internal.serializer.OutputPropertyUtils;
import com.sun.org.apache.xml.internal.utils.FastStringBuffer;
import com.sun.org.apache.xml.internal.utils.QName;
import java.util.Enumeration;
import java.util.Properties;
import java.util.Vector;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class OutputProperties extends ElemTemplateElement implements Cloneable {
    static final long serialVersionUID = -6975274363881785488L;
    private Properties m_properties;

    public OutputProperties() {
        this("xml");
    }

    public static Properties getDefaultMethodProperties(String str) {
        return OutputPropertiesFactory.getDefaultMethodProperties(str);
    }

    public static boolean isLegalPropertyKey(String str) {
        return str.equals("cdata-section-elements") || str.equals("doctype-public") || str.equals("doctype-system") || str.equals("encoding") || str.equals("indent") || str.equals("media-type") || str.equals("method") || str.equals("omit-xml-declaration") || str.equals("standalone") || str.equals("version") || (str.length() > 0 && str.charAt(0) == '{' && str.lastIndexOf(123) == 0 && str.indexOf(125) > 0 && str.lastIndexOf(125) == str.indexOf(125));
    }

    public Object clone() {
        try {
            OutputProperties outputProperties = (OutputProperties) super.clone();
            outputProperties.m_properties = (Properties) outputProperties.m_properties.clone();
            return outputProperties;
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void compose(StylesheetRoot stylesheetRoot) throws TransformerException {
        super.compose(stylesheetRoot);
    }

    public void copyFrom(Properties properties) {
        copyFrom(properties, true);
    }

    public boolean getBooleanProperty(QName qName) {
        return getBooleanProperty(qName.toNamespacedString());
    }

    public int getIntProperty(QName qName) {
        return getIntProperty(qName.toNamespacedString());
    }

    public Properties getProperties() {
        return this.m_properties;
    }

    public String getProperty(QName qName) {
        return this.m_properties.getProperty(qName.toNamespacedString());
    }

    public Vector getQNameProperties(QName qName) {
        return getQNameProperties(qName.toNamespacedString());
    }

    public QName getQNameProperty(QName qName) {
        return getQNameProperty(qName.toNamespacedString());
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void recompose(StylesheetRoot stylesheetRoot) throws TransformerException {
        stylesheetRoot.recomposeOutput(this);
    }

    public void setBooleanProperty(QName qName, boolean z) {
        this.m_properties.put(qName.toNamespacedString(), z ? "yes" : SVGParser.f16048t);
    }

    public void setIntProperty(QName qName, int i) {
        setIntProperty(qName.toNamespacedString(), i);
    }

    public void setMethodDefaults(String str) {
        String property = this.m_properties.getProperty("method");
        if (property == null || !property.equals(str) || property.equals("xml")) {
            Properties properties = this.m_properties;
            this.m_properties = new Properties(OutputPropertiesFactory.getDefaultMethodProperties(str));
            copyFrom(properties, false);
        }
    }

    public void setProperty(QName qName, String str) {
        setProperty(qName.toNamespacedString(), str);
    }

    public void setQNameProperties(QName qName, Vector vector) {
        setQNameProperties(qName.toNamespacedString(), vector);
    }

    public void setQNameProperty(QName qName, QName qName2) {
        setQNameProperty(qName.toNamespacedString(), qName2);
    }

    public OutputProperties(Properties properties) {
        this.m_properties = null;
        this.m_properties = new Properties(properties);
    }

    public void copyFrom(Properties properties, boolean z) {
        Enumeration keys = properties.keys();
        while (keys.hasMoreElements()) {
            String str = (String) keys.nextElement();
            if (isLegalPropertyKey(str)) {
                Object obj = this.m_properties.get(str);
                if (obj == null) {
                    String str2 = (String) properties.get(str);
                    if (z && str.equals("method")) {
                        setMethodDefaults(str2);
                    }
                    this.m_properties.put(str, str2);
                } else if (str.equals("cdata-section-elements")) {
                    this.m_properties.put(str, ((String) obj) + " " + ((String) properties.get(str)));
                }
            } else {
                throw new IllegalArgumentException(XSLMessages.createMessage("ER_OUTPUT_PROPERTY_NOT_RECOGNIZED", new Object[]{str}));
            }
        }
    }

    public boolean getBooleanProperty(String str) {
        return OutputPropertyUtils.getBooleanProperty(str, this.m_properties);
    }

    public int getIntProperty(String str) {
        return OutputPropertyUtils.getIntProperty(str, this.m_properties);
    }

    public String getProperty(String str) {
        if (str.startsWith(OutputPropertiesFactory.S_BUILTIN_OLD_EXTENSIONS_UNIVERSAL)) {
            str = OutputPropertiesFactory.S_BUILTIN_EXTENSIONS_UNIVERSAL + str.substring(OutputPropertiesFactory.S_BUILTIN_OLD_EXTENSIONS_UNIVERSAL_LEN);
        }
        return this.m_properties.getProperty(str);
    }

    public Vector getQNameProperties(String str) {
        return getQNameProperties(str, this.m_properties);
    }

    public QName getQNameProperty(String str) {
        return getQNameProperty(str, this.m_properties);
    }

    public void setBooleanProperty(String str, boolean z) {
        this.m_properties.put(str, z ? "yes" : SVGParser.f16048t);
    }

    public void setIntProperty(String str, int i) {
        this.m_properties.put(str, Integer.toString(i));
    }

    public void setProperty(String str, String str2) {
        if (str.equals("method")) {
            setMethodDefaults(str2);
        }
        if (str.startsWith(OutputPropertiesFactory.S_BUILTIN_OLD_EXTENSIONS_UNIVERSAL)) {
            str = OutputPropertiesFactory.S_BUILTIN_EXTENSIONS_UNIVERSAL + str.substring(OutputPropertiesFactory.S_BUILTIN_OLD_EXTENSIONS_UNIVERSAL_LEN);
        }
        this.m_properties.put(str, str2);
    }

    public void setQNameProperties(String str, Vector vector) {
        int size = vector.size();
        FastStringBuffer fastStringBuffer = new FastStringBuffer(9, 9);
        for (int i = 0; i < size; i++) {
            fastStringBuffer.append(((QName) vector.elementAt(i)).toNamespacedString());
            if (i < size - 1) {
                fastStringBuffer.append(' ');
            }
        }
        this.m_properties.put(str, fastStringBuffer.toString());
    }

    public void setQNameProperty(String str, QName qName) {
        setProperty(str, qName.toNamespacedString());
    }

    public static Vector getQNameProperties(String str, Properties properties) {
        String property = properties.getProperty(str);
        if (property == null) {
            return null;
        }
        Vector vector = new Vector();
        int length = property.length();
        FastStringBuffer fastStringBuffer = new FastStringBuffer();
        boolean z = false;
        for (int i = 0; i < length; i++) {
            char charAt = property.charAt(i);
            if (Character.isWhitespace(charAt)) {
                if (!z) {
                    if (fastStringBuffer.length() > 0) {
                        vector.addElement(QName.getQNameFromString(fastStringBuffer.toString()));
                        fastStringBuffer.reset();
                    }
                }
            } else if ('{' == charAt) {
                z = true;
            } else if ('}' == charAt) {
                z = false;
            }
            fastStringBuffer.append(charAt);
        }
        if (fastStringBuffer.length() > 0) {
            vector.addElement(QName.getQNameFromString(fastStringBuffer.toString()));
            fastStringBuffer.reset();
        }
        return vector;
    }

    public static QName getQNameProperty(String str, Properties properties) {
        String property = properties.getProperty(str);
        if (property != null) {
            return QName.getQNameFromString(property);
        }
        return null;
    }

    public OutputProperties(String str) {
        this.m_properties = null;
        this.m_properties = new Properties(OutputPropertiesFactory.getDefaultMethodProperties(str));
    }

    public void copyFrom(OutputProperties outputProperties) throws TransformerException {
        copyFrom(outputProperties.getProperties());
    }
}
