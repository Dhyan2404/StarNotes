package org.apache.poi.poifs.filesystem;

/* loaded from: classes12.dex */
public class DocumentDescriptor {
    private int hashcode;
    private String name;
    private POIFSDocumentPath path;

    public DocumentDescriptor(POIFSDocumentPath pOIFSDocumentPath, String str) {
        if (pOIFSDocumentPath == null) {
            throw new NullPointerException("path must not be null");
        }
        if (str == null) {
            throw new NullPointerException("name must not be null");
        }
        if (str.length() == 0) {
            throw new IllegalArgumentException("name cannot be empty");
        }
        this.path = pOIFSDocumentPath;
        this.name = str;
    }

    public boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        if (this != obj) {
            DocumentDescriptor documentDescriptor = (DocumentDescriptor) obj;
            if (!this.path.equals(documentDescriptor.path) || !this.name.equals(documentDescriptor.name)) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        if (this.hashcode == 0) {
            this.hashcode = this.path.hashCode() ^ this.name.hashCode();
        }
        return this.hashcode;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder((this.path.length() + 1) * 40);
        for (int i = 0; i < this.path.length(); i++) {
            sb.append(this.path.getComponent(i));
            sb.append("/");
        }
        sb.append(this.name);
        return sb.toString();
    }
}
