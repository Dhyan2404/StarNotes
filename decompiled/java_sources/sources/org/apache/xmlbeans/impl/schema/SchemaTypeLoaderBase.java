package org.apache.xmlbeans.impl.schema;

import com.google.android.material.motion.MotionUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import javax.xml.namespace.QName;
import javax.xml.stream.XMLStreamReader;
import org.apache.xmlbeans.SchemaAttributeGroup;
import org.apache.xmlbeans.SchemaField;
import org.apache.xmlbeans.SchemaGlobalAttribute;
import org.apache.xmlbeans.SchemaGlobalElement;
import org.apache.xmlbeans.SchemaModelGroup;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SchemaTypeLoader;
import org.apache.xmlbeans.XmlBeans;
import org.apache.xmlbeans.XmlException;
import org.apache.xmlbeans.XmlFactoryHook;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlOptions;
import org.apache.xmlbeans.XmlSaxHandler;
import org.apache.xmlbeans.impl.common.QNameHelper;
import org.apache.xmlbeans.impl.store.Locale;
import org.apache.xmlbeans.impl.xpath.XPathFactory;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Node;

/* loaded from: classes13.dex */
public abstract class SchemaTypeLoaderBase implements SchemaTypeLoader {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final String USER_AGENT = "XMLBeans/" + XmlBeans.getVersion() + " (" + XmlBeans.getTitle() + MotionUtils.f31762d;

    private static String doCompilePath(String str, XmlOptions xmlOptions) {
        return XPathFactory.compilePath(str, xmlOptions);
    }

    private static String doCompileQuery(String str, XmlOptions xmlOptions) {
        return XPathFactory.compileQuery(str, xmlOptions);
    }

    public String compilePath(String str) {
        return compilePath(str, null);
    }

    public String compileQuery(String str) {
        return compileQuery(str, null);
    }

    @Override // org.apache.xmlbeans.SchemaTypeLoader
    public SchemaGlobalAttribute findAttribute(QName qName) {
        SchemaGlobalAttribute.Ref findAttributeRef = findAttributeRef(qName);
        if (findAttributeRef == null) {
            return null;
        }
        return findAttributeRef.get();
    }

    @Override // org.apache.xmlbeans.SchemaTypeLoader
    public SchemaAttributeGroup findAttributeGroup(QName qName) {
        SchemaAttributeGroup.Ref findAttributeGroupRef = findAttributeGroupRef(qName);
        if (findAttributeGroupRef == null) {
            return null;
        }
        return findAttributeGroupRef.get();
    }

    @Override // org.apache.xmlbeans.SchemaTypeLoader
    public SchemaType findAttributeType(QName qName) {
        SchemaType.Ref findAttributeTypeRef = findAttributeTypeRef(qName);
        if (findAttributeTypeRef == null) {
            return null;
        }
        return findAttributeTypeRef.get();
    }

    @Override // org.apache.xmlbeans.SchemaTypeLoader
    public SchemaType findDocumentType(QName qName) {
        SchemaType.Ref findDocumentTypeRef = findDocumentTypeRef(qName);
        if (findDocumentTypeRef == null) {
            return null;
        }
        return findDocumentTypeRef.get();
    }

    @Override // org.apache.xmlbeans.SchemaTypeLoader
    public SchemaGlobalElement findElement(QName qName) {
        SchemaGlobalElement.Ref findElementRef = findElementRef(qName);
        if (findElementRef == null) {
            return null;
        }
        return findElementRef.get();
    }

    @Override // org.apache.xmlbeans.SchemaTypeLoader
    public SchemaModelGroup findModelGroup(QName qName) {
        SchemaModelGroup.Ref findModelGroupRef = findModelGroupRef(qName);
        if (findModelGroupRef == null) {
            return null;
        }
        return findModelGroupRef.get();
    }

    @Override // org.apache.xmlbeans.SchemaTypeLoader
    public SchemaType findType(QName qName) {
        SchemaType.Ref findTypeRef = findTypeRef(qName);
        if (findTypeRef == null) {
            return null;
        }
        return findTypeRef.get();
    }

    @Override // org.apache.xmlbeans.SchemaTypeLoader
    public DOMImplementation newDomImplementation(XmlOptions xmlOptions) {
        return Locale.newDomImplementation(this, xmlOptions);
    }

    @Override // org.apache.xmlbeans.SchemaTypeLoader
    public XmlObject newInstance(SchemaType schemaType, XmlOptions xmlOptions) {
        XmlFactoryHook hook = XmlFactoryHook.ThreadContext.getHook();
        return hook != null ? hook.newInstance(this, schemaType, xmlOptions) : Locale.newInstance(this, schemaType, xmlOptions);
    }

    @Override // org.apache.xmlbeans.SchemaTypeLoader
    public XmlSaxHandler newXmlSaxHandler(SchemaType schemaType, XmlOptions xmlOptions) {
        XmlFactoryHook hook = XmlFactoryHook.ThreadContext.getHook();
        return hook != null ? hook.newXmlSaxHandler(this, schemaType, xmlOptions) : Locale.newSaxHandler(this, schemaType, xmlOptions);
    }

    @Override // org.apache.xmlbeans.SchemaTypeLoader
    public XmlObject parse(String str, SchemaType schemaType, XmlOptions xmlOptions) throws XmlException {
        XmlFactoryHook hook = XmlFactoryHook.ThreadContext.getHook();
        if (hook != null) {
            return hook.parse(this, str, schemaType, xmlOptions);
        }
        return Locale.parseToXmlObject(this, str, schemaType, xmlOptions);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:40:0x0089. Please report as an issue. */
    @Override // org.apache.xmlbeans.SchemaTypeLoader
    public SchemaType typeForSignature(String str) {
        String substring;
        int indexOf = str.indexOf(64);
        if (indexOf < 0) {
            indexOf = str.length();
            substring = "";
        } else {
            substring = str.substring(indexOf + 1);
        }
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < indexOf) {
            int indexOf2 = str.indexOf(58, i);
            int indexOf3 = str.indexOf(124, i);
            if (indexOf2 < 0) {
                indexOf2 = indexOf3;
            } else if (indexOf3 >= 0) {
                indexOf2 = Math.min(indexOf2, indexOf3);
            }
            if (indexOf2 < 0 || indexOf2 > indexOf) {
                indexOf2 = indexOf;
            }
            arrayList.add(str.substring(i, indexOf2));
            i = indexOf2 + 1;
        }
        SchemaType schemaType = null;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            String str2 = (String) arrayList.get(size);
            if (str2.length() < 1) {
                throw new IllegalArgumentException();
            }
            int i2 = (str2.length() < 2 || str2.charAt(1) != '=') ? 1 : 2;
            char charAt = str2.charAt(0);
            if (charAt == 'I') {
                if (schemaType == null) {
                    throw new IllegalArgumentException();
                }
                if (schemaType.getSimpleVariety() != 3) {
                    return null;
                }
                SchemaType[] anonymousTypes = schemaType.getAnonymousTypes();
                if (anonymousTypes.length != 1) {
                    return null;
                }
                schemaType = anonymousTypes[0];
            } else if (charAt != 'M') {
                if (charAt != 'Q') {
                    if (charAt != 'R') {
                        if (charAt != 'T') {
                            if (charAt != 'U') {
                                switch (charAt) {
                                    case 'A':
                                        break;
                                    case 'B':
                                        if (schemaType == null) {
                                            throw new IllegalArgumentException();
                                        }
                                        if (schemaType.getSimpleVariety() != 1) {
                                            return null;
                                        }
                                        SchemaType[] anonymousTypes2 = schemaType.getAnonymousTypes();
                                        if (anonymousTypes2.length != 1) {
                                            return null;
                                        }
                                        schemaType = anonymousTypes2[0];
                                        break;
                                    case 'C':
                                        break;
                                    case 'D':
                                        if (schemaType != null) {
                                            throw new IllegalArgumentException();
                                        }
                                        schemaType = findDocumentType(QNameHelper.forLNS(str2.substring(i2), substring));
                                        if (schemaType == null) {
                                            return null;
                                        }
                                        break;
                                    case 'E':
                                        break;
                                    default:
                                        throw new IllegalArgumentException();
                                }
                            }
                            if (schemaType != null) {
                                if (schemaType.getContentType() < 3) {
                                    return null;
                                }
                                SchemaType[] anonymousTypes3 = schemaType.getAnonymousTypes();
                                String substring2 = str2.substring(i2);
                                for (SchemaType schemaType2 : anonymousTypes3) {
                                    SchemaField containerField = schemaType2.getContainerField();
                                    if (containerField != null && !containerField.isAttribute() && containerField.getName().getLocalPart().equals(substring2)) {
                                        schemaType = schemaType2;
                                    }
                                }
                                return null;
                            }
                            SchemaGlobalElement findElement = findElement(QNameHelper.forLNS(str2.substring(i2), substring));
                            if (findElement == null) {
                                return null;
                            }
                            schemaType = findElement.getType();
                        } else {
                            if (schemaType != null) {
                                throw new IllegalArgumentException();
                            }
                            schemaType = findType(QNameHelper.forLNS(str2.substring(i2), substring));
                            if (schemaType == null) {
                                return null;
                            }
                        }
                    }
                    if (schemaType != null) {
                        throw new IllegalArgumentException();
                    }
                    schemaType = findAttributeType(QNameHelper.forLNS(str2.substring(i2), substring));
                    if (schemaType == null) {
                        return null;
                    }
                }
                if (schemaType != null) {
                    if (schemaType.isSimpleType()) {
                        return null;
                    }
                    SchemaType[] anonymousTypes4 = schemaType.getAnonymousTypes();
                    String substring3 = str2.substring(i2);
                    for (SchemaType schemaType22 : anonymousTypes4) {
                        SchemaField containerField2 = schemaType22.getContainerField();
                        if (containerField2 != null && containerField2.isAttribute() && containerField2.getName().getLocalPart().equals(substring3)) {
                            schemaType = schemaType22;
                        }
                    }
                    return null;
                }
                SchemaGlobalAttribute findAttribute = findAttribute(QNameHelper.forLNS(str2.substring(i2), substring));
                if (findAttribute == null) {
                    return null;
                }
                schemaType = findAttribute.getType();
            } else {
                if (schemaType == null) {
                    throw new IllegalArgumentException();
                }
                try {
                    int parseInt = Integer.parseInt(str2.substring(i2));
                    if (schemaType.getSimpleVariety() != 2) {
                        return null;
                    }
                    SchemaType[] anonymousTypes5 = schemaType.getAnonymousTypes();
                    if (anonymousTypes5.length <= parseInt) {
                        return null;
                    }
                    schemaType = anonymousTypes5[parseInt];
                } catch (Exception unused) {
                    throw new IllegalArgumentException();
                }
            }
        }
        return schemaType;
    }

    @Override // org.apache.xmlbeans.SchemaTypeLoader
    public String compilePath(String str, XmlOptions xmlOptions) {
        return doCompilePath(str, xmlOptions);
    }

    @Override // org.apache.xmlbeans.SchemaTypeLoader
    public String compileQuery(String str, XmlOptions xmlOptions) {
        return doCompileQuery(str, xmlOptions);
    }

    @Override // org.apache.xmlbeans.SchemaTypeLoader
    public XmlObject parse(XMLStreamReader xMLStreamReader, SchemaType schemaType, XmlOptions xmlOptions) throws XmlException {
        XmlFactoryHook hook = XmlFactoryHook.ThreadContext.getHook();
        if (hook != null) {
            return hook.parse(this, xMLStreamReader, schemaType, xmlOptions);
        }
        return Locale.parseToXmlObject(this, xMLStreamReader, schemaType, xmlOptions);
    }

    @Override // org.apache.xmlbeans.SchemaTypeLoader
    public XmlObject parse(File file, SchemaType schemaType, XmlOptions xmlOptions) throws XmlException, IOException {
        String uri = file.toURI().normalize().toString();
        if (xmlOptions == null) {
            xmlOptions = new XmlOptions();
            xmlOptions.setDocumentSourceName(uri);
        } else if (xmlOptions.getDocumentSourceName() == null) {
            XmlOptions xmlOptions2 = new XmlOptions(xmlOptions);
            xmlOptions2.setDocumentSourceName(uri);
            xmlOptions = xmlOptions2;
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            XmlObject parse = parse(fileInputStream, schemaType, xmlOptions);
            fileInputStream.close();
            return parse;
        } finally {
        }
    }

    @Override // org.apache.xmlbeans.SchemaTypeLoader
    public XmlObject parse(URL url, SchemaType schemaType, XmlOptions xmlOptions) throws XmlException, IOException {
        URLConnection openConnection;
        if (xmlOptions == null) {
            xmlOptions = new XmlOptions();
            xmlOptions.setDocumentSourceName(url.toString());
        } else if (xmlOptions.getDocumentSourceName() == null) {
            XmlOptions xmlOptions2 = new XmlOptions(xmlOptions);
            xmlOptions2.setDocumentSourceName(url.toString());
            xmlOptions = xmlOptions2;
        }
        int i = 0;
        boolean z = false;
        do {
            openConnection = url.openConnection();
            openConnection.addRequestProperty("User-Agent", USER_AGENT);
            openConnection.addRequestProperty("Accept", "application/xml, text/xml, */*");
            if (openConnection instanceof HttpURLConnection) {
                HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
                int responseCode = httpURLConnection.getResponseCode();
                boolean z2 = responseCode == 301 || responseCode == 302;
                if (z2 && i > 5) {
                    z2 = false;
                }
                if (z2) {
                    String headerField = httpURLConnection.getHeaderField("Location");
                    if (headerField == null) {
                        z = false;
                    } else {
                        url = new URL(headerField);
                        i++;
                    }
                }
                z = z2;
            }
        } while (z);
        InputStream inputStream = openConnection.getInputStream();
        try {
            XmlObject parse = parse(inputStream, schemaType, xmlOptions);
            if (inputStream != null) {
                inputStream.close();
            }
            return parse;
        } finally {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001c  */
    @Override // org.apache.xmlbeans.SchemaTypeLoader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.xmlbeans.XmlObject parse(java.io.InputStream r4, org.apache.xmlbeans.SchemaType r5, org.apache.xmlbeans.XmlOptions r6) throws org.apache.xmlbeans.XmlException, java.io.IOException {
        /*
            r3 = this;
            org.apache.xmlbeans.XmlFactoryHook r0 = org.apache.xmlbeans.XmlFactoryHook.ThreadContext.getHook()
            if (r6 == 0) goto L19
            boolean r1 = r6.isLoadMessageDigest()
            if (r1 == 0) goto L19
            java.lang.String r1 = "SHA"
            java.security.MessageDigest r1 = java.security.MessageDigest.getInstance(r1)     // Catch: java.security.NoSuchAlgorithmException -> L19
            java.security.DigestInputStream r2 = new java.security.DigestInputStream
            r2.<init>(r4, r1)
            r4 = r2
            goto L1a
        L19:
            r2 = 0
        L1a:
            if (r0 == 0) goto L21
            org.apache.xmlbeans.XmlObject r3 = r0.parse(r3, r4, r5, r6)
            return r3
        L21:
            org.apache.xmlbeans.XmlObject r3 = org.apache.xmlbeans.impl.store.Locale.parseToXmlObject(r3, r4, r5, r6)
            if (r2 == 0) goto L36
            org.apache.xmlbeans.XmlDocumentProperties r4 = r3.documentProperties()
            java.security.MessageDigest r5 = r2.getMessageDigest()
            byte[] r5 = r5.digest()
            r4.setMessageDigest(r5)
        L36:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.schema.SchemaTypeLoaderBase.parse(java.io.InputStream, org.apache.xmlbeans.SchemaType, org.apache.xmlbeans.XmlOptions):org.apache.xmlbeans.XmlObject");
    }

    @Override // org.apache.xmlbeans.SchemaTypeLoader
    public XmlObject parse(Reader reader, SchemaType schemaType, XmlOptions xmlOptions) throws XmlException, IOException {
        XmlFactoryHook hook = XmlFactoryHook.ThreadContext.getHook();
        if (hook != null) {
            return hook.parse(this, reader, schemaType, xmlOptions);
        }
        return Locale.parseToXmlObject(this, reader, schemaType, xmlOptions);
    }

    @Override // org.apache.xmlbeans.SchemaTypeLoader
    public XmlObject parse(Node node, SchemaType schemaType, XmlOptions xmlOptions) throws XmlException {
        XmlFactoryHook hook = XmlFactoryHook.ThreadContext.getHook();
        if (hook != null) {
            return hook.parse(this, node, schemaType, xmlOptions);
        }
        return Locale.parseToXmlObject(this, node, schemaType, xmlOptions);
    }
}
