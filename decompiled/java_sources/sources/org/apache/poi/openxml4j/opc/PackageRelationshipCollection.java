package org.apache.poi.openxml4j.opc;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.InputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Spliterator;
import java.util.TreeMap;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.ooxml.util.DocumentHelper;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.openxml4j.exceptions.InvalidOperationException;
import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

/* loaded from: classes12.dex */
public final class PackageRelationshipCollection implements Iterable<PackageRelationship> {
    private static final Logger LOG = LogManager.getLogger((Class<?>) PackageRelationshipCollection.class);
    private OPCPackage container;
    private HashMap<String, PackageRelationship> internalRelationshipsByTargetName;
    private int nextRelationshipId;
    private PackagePartName partName;
    private PackagePart relationshipPart;
    private final TreeMap<String, PackageRelationship> relationshipsByID;
    private final TreeMap<String, PackageRelationship> relationshipsByType;
    private PackagePart sourcePart;

    public PackageRelationshipCollection() {
        this.relationshipsByID = new TreeMap<>();
        this.relationshipsByType = new TreeMap<>();
        this.internalRelationshipsByTargetName = new HashMap<>();
        this.nextRelationshipId = -1;
    }

    private static PackagePartName getRelationshipPartName(PackagePart packagePart) throws InvalidOperationException {
        return PackagingURIHelper.getRelationshipPartName(packagePart == null ? PackagingURIHelper.PACKAGE_ROOT_PART_NAME : packagePart.getPartName());
    }

    public void addRelationship(PackageRelationship packageRelationship) {
        if (packageRelationship != null && packageRelationship.getId() != null && !packageRelationship.getId().isEmpty()) {
            this.relationshipsByID.put(packageRelationship.getId(), packageRelationship);
            this.relationshipsByType.put(packageRelationship.getRelationshipType(), packageRelationship);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("invalid relationship part/id: ");
        sb.append(packageRelationship == null ? "<null>" : packageRelationship.getId());
        sb.append(" for relationship: ");
        sb.append(packageRelationship);
        throw new IllegalArgumentException(sb.toString());
    }

    public void clear() {
        this.relationshipsByID.clear();
        this.relationshipsByType.clear();
        this.internalRelationshipsByTargetName.clear();
    }

    public PackageRelationship findExistingInternalRelation(PackagePart packagePart) {
        return this.internalRelationshipsByTargetName.get(packagePart.getPartName().getName());
    }

    public PackageRelationship getRelationship(int i) {
        if (i < 0 || i > this.relationshipsByID.values().size()) {
            throw new IllegalArgumentException(FirebaseAnalytics.Param.INDEX);
        }
        int i2 = 0;
        for (PackageRelationship packageRelationship : this.relationshipsByID.values()) {
            int i3 = i2 + 1;
            if (i == i2) {
                return packageRelationship;
            }
            i2 = i3;
        }
        return null;
    }

    public PackageRelationship getRelationshipByID(String str) {
        return this.relationshipsByID.get(str);
    }

    public PackageRelationshipCollection getRelationships(String str) {
        return new PackageRelationshipCollection(this, str);
    }

    public boolean isEmpty() {
        return this.relationshipsByID.isEmpty();
    }

    @Override // java.lang.Iterable
    public Iterator<PackageRelationship> iterator() {
        return this.relationshipsByID.values().iterator();
    }

    public void parseRelationshipsPart(PackagePart packagePart) throws InvalidFormatException {
        try {
            LOG.atDebug().log("Parsing relationship: {}", packagePart.getPartName());
            InputStream inputStream = packagePart.getInputStream();
            try {
                Document readDocument = DocumentHelper.readDocument(inputStream);
                if (inputStream != null) {
                    inputStream.close();
                }
                NodeList elementsByTagNameNS = readDocument.getDocumentElement().getElementsByTagNameNS(PackageNamespaces.RELATIONSHIPS, PackageRelationship.RELATIONSHIP_TAG_NAME);
                int length = elementsByTagNameNS.getLength();
                boolean z = false;
                for (int i = 0; i < length; i++) {
                    Element element = (Element) elementsByTagNameNS.item(i);
                    String attribute = element.getAttribute(PackageRelationship.ID_ATTRIBUTE_NAME);
                    String attribute2 = element.getAttribute("Type");
                    if (attribute2.equals(PackageRelationshipTypes.CORE_PROPERTIES)) {
                        if (z) {
                            throw new InvalidFormatException("OPC Compliance error [M4.1]: there is more than one core properties relationship in the package !");
                        }
                        z = true;
                    }
                    Attr attributeNode = element.getAttributeNode(PackageRelationship.TARGET_MODE_ATTRIBUTE_NAME);
                    TargetMode targetMode = TargetMode.INTERNAL;
                    if (attributeNode != null && !attributeNode.getValue().toLowerCase(Locale.ROOT).equals("internal")) {
                        targetMode = TargetMode.EXTERNAL;
                    }
                    URI uri = PackagingURIHelper.toURI("http://invalid.uri");
                    String attribute3 = element.getAttribute(PackageRelationship.TARGET_ATTRIBUTE_NAME);
                    try {
                        uri = PackagingURIHelper.toURI(attribute3);
                    } catch (URISyntaxException e) {
                        LOG.atError().withThrowable(e).log("Cannot convert {} in a valid relationship URI-> dummy-URI used", attribute3);
                    }
                    addRelationship(uri, targetMode, attribute2, attribute);
                }
            } finally {
            }
        } catch (Exception e2) {
            throw new InvalidFormatException("Failed to parse relationships", e2);
        }
    }

    public void removeRelationship(String str) {
        PackageRelationship packageRelationship = this.relationshipsByID.get(str);
        if (packageRelationship != null) {
            this.relationshipsByID.remove(packageRelationship.getId());
            this.relationshipsByType.values().remove(packageRelationship);
            this.internalRelationshipsByTargetName.values().remove(packageRelationship);
        }
    }

    public int size() {
        return this.relationshipsByID.size();
    }

    @Override // java.lang.Iterable
    public Spliterator<PackageRelationship> spliterator() {
        return this.relationshipsByID.values().spliterator();
    }

    public String toString() {
        String str;
        String str2;
        String str3;
        String str4 = this.relationshipsByID.size() + " relationship(s) = [";
        PackagePart packagePart = this.relationshipPart;
        if (packagePart == null || packagePart._partName == null) {
            str = str4 + "relationshipPart=null";
        } else {
            str = str4 + this.relationshipPart._partName;
        }
        PackagePart packagePart2 = this.sourcePart;
        if (packagePart2 == null || packagePart2._partName == null) {
            str2 = str + ",sourcePart=null";
        } else {
            str2 = str + "," + this.sourcePart._partName;
        }
        if (this.partName != null) {
            str3 = str2 + "," + this.partName;
        } else {
            str3 = str2 + ",uri=null)";
        }
        return str3 + IteratorUtils.f104924b;
    }

    public Iterator<PackageRelationship> iterator(String str) {
        ArrayList arrayList = new ArrayList();
        for (PackageRelationship packageRelationship : this.relationshipsByID.values()) {
            if (packageRelationship.getRelationshipType().equals(str)) {
                arrayList.add(packageRelationship);
            }
        }
        return arrayList.iterator();
    }

    public PackageRelationshipCollection(PackageRelationshipCollection packageRelationshipCollection, String str) {
        this();
        for (PackageRelationship packageRelationship : packageRelationshipCollection.relationshipsByID.values()) {
            if (str == null || packageRelationship.getRelationshipType().equals(str)) {
                addRelationship(packageRelationship);
            }
        }
    }

    public PackageRelationship addRelationship(URI uri, TargetMode targetMode, String str, String str2) {
        if (str2 == null || str2.length() == 0) {
            if (this.nextRelationshipId == -1) {
                this.nextRelationshipId = size() + 1;
            }
            do {
                StringBuilder sb = new StringBuilder();
                sb.append("rId");
                int i = this.nextRelationshipId;
                this.nextRelationshipId = i + 1;
                sb.append(i);
                str2 = sb.toString();
            } while (this.relationshipsByID.get(str2) != null);
        }
        PackageRelationship packageRelationship = new PackageRelationship(this.container, this.sourcePart, uri, targetMode, str, str2);
        addRelationship(packageRelationship);
        if (targetMode == TargetMode.INTERNAL) {
            this.internalRelationshipsByTargetName.put(uri.toASCIIString(), packageRelationship);
        }
        return packageRelationship;
    }

    public PackageRelationshipCollection(OPCPackage oPCPackage) throws InvalidFormatException {
        this(oPCPackage, (PackagePart) null);
    }

    public PackageRelationshipCollection(PackagePart packagePart) throws InvalidFormatException {
        this(packagePart._container, packagePart);
    }

    public PackageRelationshipCollection(OPCPackage oPCPackage, PackagePart packagePart) throws InvalidFormatException {
        this.relationshipsByID = new TreeMap<>();
        this.relationshipsByType = new TreeMap<>();
        this.internalRelationshipsByTargetName = new HashMap<>();
        this.nextRelationshipId = -1;
        if (oPCPackage != null) {
            if (packagePart != null && packagePart.isRelationshipPart()) {
                throw new IllegalArgumentException("part");
            }
            this.container = oPCPackage;
            this.sourcePart = packagePart;
            this.partName = getRelationshipPartName(packagePart);
            if (oPCPackage.getPackageAccess() == PackageAccess.WRITE || !oPCPackage.containPart(this.partName)) {
                return;
            }
            PackagePart part = oPCPackage.getPart(this.partName);
            this.relationshipPart = part;
            parseRelationshipsPart(part);
            return;
        }
        throw new IllegalArgumentException("container needs to be specified");
    }
}
