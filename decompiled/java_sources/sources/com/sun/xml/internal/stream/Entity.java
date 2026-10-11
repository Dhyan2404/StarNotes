package com.sun.xml.internal.stream;

import com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier;
import java.io.InputStream;
import java.io.Reader;

/* loaded from: classes10.dex */
public abstract class Entity {
    public boolean inExternalSubset;
    public String name;

    /* loaded from: classes10.dex */
    public static class ScannedEntity extends Entity {
        public static final int DEFAULT_BUFFER_SIZE = 8192;
        public static final int DEFAULT_INTERNAL_BUFFER_SIZE = 1024;
        public static final int DEFAULT_XMLDECL_BUFFER_SIZE = 28;
        public int baseCharOffset;

        /* renamed from: ch */
        public char[] f64126ch;
        public int count;
        public String encoding;
        public XMLResourceIdentifier entityLocation;
        public int fLastCount;
        public int fTotalCountTillLastLoad;
        public boolean isExternal;
        public boolean literal;
        public boolean mayReadChunks;
        public int position;
        public Reader reader;
        public int startPosition;
        public InputStream stream;
        public String version;
        public int fBufferSize = 8192;
        public int lineNumber = 1;
        public int columnNumber = 1;
        boolean declaredEncoding = false;
        boolean externallySpecifiedEncoding = false;
        public String xmlVersion = "1.0";
        public boolean xmlDeclChunkRead = false;

        public ScannedEntity(String str, XMLResourceIdentifier xMLResourceIdentifier, InputStream inputStream, Reader reader, String str2, boolean z, boolean z2, boolean z3) {
            this.f64126ch = null;
            this.name = str;
            this.entityLocation = xMLResourceIdentifier;
            this.stream = inputStream;
            this.reader = reader;
            this.encoding = str2;
            this.literal = z;
            this.mayReadChunks = z2;
            this.isExternal = z3;
            this.f64126ch = new char[z3 ? 8192 : 1024];
        }

        public String getEncodingName() {
            return this.encoding;
        }

        public InputStream getEntityInputStream() {
            return this.stream;
        }

        public Reader getEntityReader() {
            return this.reader;
        }

        public String getEntityVersion() {
            return this.version;
        }

        public boolean isDeclaredEncoding() {
            return this.declaredEncoding;
        }

        public boolean isEncodingExternallySpecified() {
            return this.externallySpecifiedEncoding;
        }

        @Override // com.sun.xml.internal.stream.Entity
        public final boolean isExternal() {
            return this.isExternal;
        }

        @Override // com.sun.xml.internal.stream.Entity
        public final boolean isUnparsed() {
            return false;
        }

        public void setDeclaredEncoding(boolean z) {
            this.declaredEncoding = z;
        }

        public void setEncodingExternallySpecified(boolean z) {
            this.externallySpecifiedEncoding = z;
        }

        public void setEntityVersion(String str) {
            this.version = str;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("name=\"" + this.name + '\"');
            StringBuilder sb = new StringBuilder();
            sb.append(",ch=");
            sb.append(new String(this.f64126ch));
            stringBuffer.append(sb.toString());
            stringBuffer.append(",position=" + this.position);
            stringBuffer.append(",count=" + this.count);
            return stringBuffer.toString();
        }
    }

    public Entity() {
        clear();
    }

    public void clear() {
        this.name = null;
        this.inExternalSubset = false;
    }

    public boolean isEntityDeclInExternalSubset() {
        return this.inExternalSubset;
    }

    public abstract boolean isExternal();

    public abstract boolean isUnparsed();

    public void setValues(Entity entity) {
        this.name = entity.name;
        this.inExternalSubset = entity.inExternalSubset;
    }

    /* loaded from: classes10.dex */
    public static class ExternalEntity extends Entity {
        public XMLResourceIdentifier entityLocation;
        public String notation;

        public ExternalEntity() {
            clear();
        }

        @Override // com.sun.xml.internal.stream.Entity
        public void clear() {
            super.clear();
            this.entityLocation = null;
            this.notation = null;
        }

        @Override // com.sun.xml.internal.stream.Entity
        public final boolean isExternal() {
            return true;
        }

        @Override // com.sun.xml.internal.stream.Entity
        public final boolean isUnparsed() {
            return this.notation != null;
        }

        @Override // com.sun.xml.internal.stream.Entity
        public void setValues(Entity entity) {
            super.setValues(entity);
            this.entityLocation = null;
            this.notation = null;
        }

        public ExternalEntity(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, boolean z) {
            super(str, z);
            this.entityLocation = xMLResourceIdentifier;
            this.notation = str2;
        }

        public void setValues(ExternalEntity externalEntity) {
            super.setValues((Entity) externalEntity);
            this.entityLocation = externalEntity.entityLocation;
            this.notation = externalEntity.notation;
        }
    }

    /* loaded from: classes10.dex */
    public static class InternalEntity extends Entity {
        public String text;

        public InternalEntity() {
            clear();
        }

        @Override // com.sun.xml.internal.stream.Entity
        public void clear() {
            super.clear();
            this.text = null;
        }

        @Override // com.sun.xml.internal.stream.Entity
        public final boolean isExternal() {
            return false;
        }

        @Override // com.sun.xml.internal.stream.Entity
        public final boolean isUnparsed() {
            return false;
        }

        @Override // com.sun.xml.internal.stream.Entity
        public void setValues(Entity entity) {
            super.setValues(entity);
            this.text = null;
        }

        public InternalEntity(String str, String str2, boolean z) {
            super(str, z);
            this.text = str2;
        }

        public void setValues(InternalEntity internalEntity) {
            super.setValues((Entity) internalEntity);
            this.text = internalEntity.text;
        }
    }

    public Entity(String str, boolean z) {
        this.name = str;
        this.inExternalSubset = z;
    }
}
