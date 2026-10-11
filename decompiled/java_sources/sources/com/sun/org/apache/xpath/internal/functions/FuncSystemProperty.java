package com.sun.org.apache.xpath.internal.functions;

import com.sun.org.apache.xml.internal.utils.WrappedRuntimeException;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.objects.XObject;
import com.sun.org.apache.xpath.internal.objects.XString;
import java.io.BufferedInputStream;
import java.util.Properties;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class FuncSystemProperty extends FunctionOneArg {
    static final String XSLT_PROPERTIES = "com/sun/org/apache/xalan/internal/res/XSLTInfo.properties";
    static final long serialVersionUID = 3694874980992204867L;

    @Override // com.sun.org.apache.xpath.internal.functions.Function, com.sun.org.apache.xpath.internal.Expression
    public XObject execute(XPathContext xPathContext) throws TransformerException {
        String str;
        String property;
        String str2 = this.m_arg0.execute(xPathContext).str();
        int indexOf = str2.indexOf(58);
        Properties properties = new Properties();
        loadPropertyFile("com/sun/org/apache/xalan/internal/res/XSLTInfo.properties", properties);
        str = "";
        if (indexOf > 0) {
            String namespaceForPrefix = xPathContext.getNamespaceContext().getNamespaceForPrefix(indexOf >= 0 ? str2.substring(0, indexOf) : "");
            String substring = indexOf < 0 ? str2 : str2.substring(indexOf + 1);
            if (namespaceForPrefix.startsWith("http://www.w3.org/XSL/Transform") || namespaceForPrefix.equals("http://www.w3.org/1999/XSL/Transform")) {
                property = properties.getProperty(substring);
                if (property == null) {
                    warn(xPathContext, "WG_PROPERTY_NOT_SUPPORTED", new Object[]{str2});
                    return XString.EMPTYSTRING;
                }
            } else {
                warn(xPathContext, "WG_DONT_DO_ANYTHING_WITH_NS", new Object[]{namespaceForPrefix, str2});
                try {
                    property = System.getProperty(substring);
                    if (property == null) {
                        return XString.EMPTYSTRING;
                    }
                } catch (SecurityException unused) {
                    this.warn(xPathContext, "WG_SECURITY_EXCEPTION", new Object[]{str2});
                    return XString.EMPTYSTRING;
                }
            }
            str = substring;
        } else {
            try {
                property = System.getProperty(str2);
                if (property == null) {
                    return XString.EMPTYSTRING;
                }
            } catch (SecurityException unused2) {
                this.warn(xPathContext, "WG_SECURITY_EXCEPTION", new Object[]{str2});
                return XString.EMPTYSTRING;
            }
        }
        if (!str.equals("version") || property.length() <= 0) {
            return new XString(property);
        }
        try {
            return new XString("1.0");
        } catch (Exception unused3) {
            return new XString(property);
        }
    }

    public void loadPropertyFile(String str, Properties properties) {
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(SecuritySupport.getInstance().getResourceAsStream(ObjectFactory.findClassLoader(), str));
            properties.load(bufferedInputStream);
            bufferedInputStream.close();
        } catch (Exception e) {
            throw new WrappedRuntimeException(e);
        }
    }
}
