package org.apache.poi.openxml4j.opc.internal;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
import org.apache.poi.ooxml.util.DocumentHelper;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.openxml4j.exceptions.InvalidOperationException;
import org.apache.poi.openxml4j.exceptions.OpenXML4JRuntimeException;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.openxml4j.opc.PackagePartName;
import org.apache.poi.openxml4j.opc.PackagingURIHelper;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

/* loaded from: classes12.dex */
public abstract class ContentTypeManager {
    public static final String CONTENT_TYPES_PART_NAME = "[Content_Types].xml";
    private static final String CONTENT_TYPE_ATTRIBUTE_NAME = "ContentType";
    private static final String DEFAULT_TAG_NAME = "Default";
    private static final String EXTENSION_ATTRIBUTE_NAME = "Extension";
    private static final String OVERRIDE_TAG_NAME = "Override";
    private static final String PART_NAME_ATTRIBUTE_NAME = "PartName";
    public static final String TYPES_NAMESPACE_URI = "http://schemas.openxmlformats.org/package/2006/content-types";
    private static final String TYPES_TAG_NAME = "Types";
    protected OPCPackage container;
    private TreeMap<String, String> defaultContentType = new TreeMap<>();
    private TreeMap<PackagePartName, String> overrideContentType;

    public ContentTypeManager(InputStream inputStream, OPCPackage oPCPackage) throws InvalidFormatException {
        this.container = oPCPackage;
        if (inputStream != null) {
            try {
                parseContentTypesFile(inputStream);
            } catch (InvalidFormatException e) {
                InvalidFormatException invalidFormatException = new InvalidFormatException("Can't read content types part !");
                invalidFormatException.initCause(e);
                throw invalidFormatException;
            }
        }
    }

    private void addDefaultContentType(String str, String str2) {
        this.defaultContentType.put(str.toLowerCase(Locale.ROOT), str2);
    }

    private void addOverrideContentType(PackagePartName packagePartName, String str) {
        if (this.overrideContentType == null) {
            this.overrideContentType = new TreeMap<>();
        }
        this.overrideContentType.put(packagePartName, str);
    }

    private void appendDefaultType(Element element, Map.Entry<String, String> entry) {
        Element createElementNS = element.getOwnerDocument().createElementNS("http://schemas.openxmlformats.org/package/2006/content-types", DEFAULT_TAG_NAME);
        createElementNS.setAttribute(EXTENSION_ATTRIBUTE_NAME, entry.getKey());
        createElementNS.setAttribute(CONTENT_TYPE_ATTRIBUTE_NAME, entry.getValue());
        element.appendChild(createElementNS);
    }

    private void appendSpecificTypes(Element element, Map.Entry<PackagePartName, String> entry) {
        Element createElementNS = element.getOwnerDocument().createElementNS("http://schemas.openxmlformats.org/package/2006/content-types", OVERRIDE_TAG_NAME);
        createElementNS.setAttribute(PART_NAME_ATTRIBUTE_NAME, entry.getKey().getName());
        createElementNS.setAttribute(CONTENT_TYPE_ATTRIBUTE_NAME, entry.getValue());
        element.appendChild(createElementNS);
    }

    private void parseContentTypesFile(InputStream inputStream) throws InvalidFormatException {
        try {
            Document readDocument = DocumentHelper.readDocument(inputStream);
            NodeList elementsByTagNameNS = readDocument.getDocumentElement().getElementsByTagNameNS("http://schemas.openxmlformats.org/package/2006/content-types", DEFAULT_TAG_NAME);
            int length = elementsByTagNameNS.getLength();
            for (int i = 0; i < length; i++) {
                Element element = (Element) elementsByTagNameNS.item(i);
                addDefaultContentType(element.getAttribute(EXTENSION_ATTRIBUTE_NAME), element.getAttribute(CONTENT_TYPE_ATTRIBUTE_NAME));
            }
            NodeList elementsByTagNameNS2 = readDocument.getDocumentElement().getElementsByTagNameNS("http://schemas.openxmlformats.org/package/2006/content-types", OVERRIDE_TAG_NAME);
            int length2 = elementsByTagNameNS2.getLength();
            for (int i2 = 0; i2 < length2; i2++) {
                Element element2 = (Element) elementsByTagNameNS2.item(i2);
                addOverrideContentType(PackagingURIHelper.createPartName(new URI(element2.getAttribute(PART_NAME_ATTRIBUTE_NAME))), element2.getAttribute(CONTENT_TYPE_ATTRIBUTE_NAME));
            }
        } catch (IOException | URISyntaxException | SAXException e) {
            throw new InvalidFormatException(e.getMessage());
        }
    }

    public void addContentType(PackagePartName packagePartName, String str) {
        boolean containsValue = this.defaultContentType.containsValue(str);
        String lowerCase = packagePartName.getExtension().toLowerCase(Locale.ROOT);
        if (lowerCase.length() == 0 || ((this.defaultContentType.containsKey(lowerCase) && !containsValue) || (!this.defaultContentType.containsKey(lowerCase) && containsValue))) {
            addOverrideContentType(packagePartName, str);
        } else {
            if (containsValue) {
                return;
            }
            addDefaultContentType(lowerCase, str);
        }
    }

    public void clearAll() {
        this.defaultContentType.clear();
        TreeMap<PackagePartName, String> treeMap = this.overrideContentType;
        if (treeMap != null) {
            treeMap.clear();
        }
    }

    public void clearOverrideContentTypes() {
        TreeMap<PackagePartName, String> treeMap = this.overrideContentType;
        if (treeMap != null) {
            treeMap.clear();
        }
    }

    public String getContentType(PackagePartName packagePartName) {
        if (packagePartName == null) {
            throw new IllegalArgumentException("partName");
        }
        TreeMap<PackagePartName, String> treeMap = this.overrideContentType;
        if (treeMap != null && treeMap.containsKey(packagePartName)) {
            return this.overrideContentType.get(packagePartName);
        }
        String lowerCase = packagePartName.getExtension().toLowerCase(Locale.ROOT);
        if (this.defaultContentType.containsKey(lowerCase)) {
            return this.defaultContentType.get(lowerCase);
        }
        OPCPackage oPCPackage = this.container;
        if (oPCPackage == null || oPCPackage.getPart(packagePartName) == null) {
            return null;
        }
        throw new OpenXML4JRuntimeException("Rule M2.4 exception : Part '" + packagePartName + "' not found - this error should NEVER happen!\nCheck that your code is closing the open resources in the correct order prior to filing a bug report.\nIf you can provide the triggering file, then please raise a bug at https://bz.apache.org/bugzilla/enter_bug.cgi?product=POI and attach the file that triggers it, thanks!");
    }

    public boolean isContentTypeRegister(String str) {
        TreeMap<PackagePartName, String> treeMap;
        if (str != null) {
            return this.defaultContentType.containsValue(str) || ((treeMap = this.overrideContentType) != null && treeMap.containsValue(str));
        }
        throw new IllegalArgumentException(CouchFieldKey.KEY_CONTENT_TYPE);
    }

    public void removeContentType(PackagePartName packagePartName) throws InvalidOperationException {
        if (packagePartName == null) {
            throw new IllegalArgumentException("partName");
        }
        TreeMap<PackagePartName, String> treeMap = this.overrideContentType;
        if (treeMap != null && treeMap.get(packagePartName) != null) {
            this.overrideContentType.remove(packagePartName);
            return;
        }
        String extension = packagePartName.getExtension();
        OPCPackage oPCPackage = this.container;
        boolean z = true;
        if (oPCPackage != null) {
            try {
                Iterator<PackagePart> it2 = oPCPackage.getParts().iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    PackagePart next = it2.next();
                    if (!next.getPartName().equals(packagePartName) && next.getPartName().getExtension().equalsIgnoreCase(extension)) {
                        z = false;
                        break;
                    }
                }
            } catch (InvalidFormatException e) {
                throw new InvalidOperationException(e.getMessage());
            }
        }
        if (z) {
            this.defaultContentType.remove(extension);
        }
        OPCPackage oPCPackage2 = this.container;
        if (oPCPackage2 != null) {
            try {
                Iterator<PackagePart> it3 = oPCPackage2.getParts().iterator();
                while (it3.hasNext()) {
                    PackagePart next2 = it3.next();
                    if (!next2.getPartName().equals(packagePartName) && getContentType(next2.getPartName()) == null) {
                        throw new InvalidOperationException("Rule M2.4 is not respected: Nor a default element or override element is associated with the part: " + next2.getPartName().getName());
                    }
                }
            } catch (InvalidFormatException e2) {
                throw new InvalidOperationException(e2.getMessage());
            }
        }
    }

    public boolean save(OutputStream outputStream) {
        Document createDocument = DocumentHelper.createDocument();
        Element createElementNS = createDocument.createElementNS("http://schemas.openxmlformats.org/package/2006/content-types", TYPES_TAG_NAME);
        createDocument.appendChild(createElementNS);
        Iterator<Map.Entry<String, String>> it2 = this.defaultContentType.entrySet().iterator();
        while (it2.hasNext()) {
            appendDefaultType(createElementNS, it2.next());
        }
        TreeMap<PackagePartName, String> treeMap = this.overrideContentType;
        if (treeMap != null) {
            Iterator<Map.Entry<PackagePartName, String>> it3 = treeMap.entrySet().iterator();
            while (it3.hasNext()) {
                appendSpecificTypes(createElementNS, it3.next());
            }
        }
        createDocument.normalize();
        return saveImpl(createDocument, outputStream);
    }

    public abstract boolean saveImpl(Document document, OutputStream outputStream);
}
