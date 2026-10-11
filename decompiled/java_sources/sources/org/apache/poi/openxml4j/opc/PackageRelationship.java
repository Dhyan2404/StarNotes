package org.apache.poi.openxml4j.opc;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.Objects;

/* loaded from: classes12.dex */
public final class PackageRelationship {
    public static final String ID_ATTRIBUTE_NAME = "Id";
    public static final String RELATIONSHIPS_TAG_NAME = "Relationships";
    public static final String RELATIONSHIP_TAG_NAME = "Relationship";
    public static final String TARGET_ATTRIBUTE_NAME = "Target";
    public static final String TARGET_MODE_ATTRIBUTE_NAME = "TargetMode";
    public static final String TYPE_ATTRIBUTE_NAME = "Type";
    private static URI containerRelationshipPart;
    private final OPCPackage container;

    /* renamed from: id */
    private final String f111453id;
    private final String relationshipType;
    private final PackagePart source;
    private final TargetMode targetMode;
    private final URI targetUri;

    static {
        try {
            containerRelationshipPart = new URI("/_rels/.rels");
        } catch (URISyntaxException unused) {
        }
    }

    public PackageRelationship(OPCPackage oPCPackage, PackagePart packagePart, URI uri, TargetMode targetMode, String str, String str2) {
        if (oPCPackage == null) {
            throw new IllegalArgumentException("pkg");
        }
        if (uri == null) {
            throw new IllegalArgumentException("targetUri");
        }
        if (str == null) {
            throw new IllegalArgumentException("relationshipType");
        }
        if (str2 == null) {
            throw new IllegalArgumentException("id");
        }
        this.container = oPCPackage;
        this.source = packagePart;
        this.targetUri = uri;
        this.targetMode = targetMode;
        this.relationshipType = str;
        this.f111453id = str2;
    }

    public static URI getContainerPartRelationship() {
        return containerRelationshipPart;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PackageRelationship)) {
            return false;
        }
        PackageRelationship packageRelationship = (PackageRelationship) obj;
        if (!this.f111453id.equals(packageRelationship.f111453id) || !this.relationshipType.equals(packageRelationship.relationshipType)) {
            return false;
        }
        PackagePart packagePart = packageRelationship.source;
        return (packagePart == null || packagePart.equals(this.source)) && this.targetMode == packageRelationship.targetMode && this.targetUri.equals(packageRelationship.targetUri);
    }

    public String getId() {
        return this.f111453id;
    }

    public OPCPackage getPackage() {
        return this.container;
    }

    public String getRelationshipType() {
        return this.relationshipType;
    }

    public PackagePart getSource() {
        return this.source;
    }

    public URI getSourceURI() {
        PackagePart packagePart = this.source;
        return packagePart == null ? PackagingURIHelper.PACKAGE_ROOT_URI : packagePart._partName.getURI();
    }

    public TargetMode getTargetMode() {
        return this.targetMode;
    }

    public URI getTargetURI() {
        if (this.targetMode != TargetMode.EXTERNAL && !this.targetUri.toASCIIString().startsWith("/")) {
            return PackagingURIHelper.resolvePartUri(getSourceURI(), this.targetUri);
        }
        return this.targetUri;
    }

    public int hashCode() {
        return Objects.hash(this.f111453id, this.relationshipType, this.source, this.targetMode, this.targetUri);
    }

    public String toString() {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder();
        sb.append("id=");
        sb.append(this.f111453id);
        sb.append(" - container=");
        sb.append(this.container);
        sb.append(" - relationshipType=");
        sb.append(this.relationshipType);
        if (this.source == null) {
            str = " - source=null";
        } else {
            str = " - source=" + getSourceURI().toASCIIString();
        }
        sb.append(str);
        sb.append(" - target=");
        sb.append(getTargetURI().toASCIIString());
        if (this.targetMode == null) {
            str2 = ",targetMode=null";
        } else {
            str2 = ",targetMode=" + this.targetMode;
        }
        sb.append(str2);
        return sb.toString();
    }
}
