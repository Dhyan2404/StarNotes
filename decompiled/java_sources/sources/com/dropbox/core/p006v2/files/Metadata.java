package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.DeletedMetadata;
import com.dropbox.core.p006v2.files.FileMetadata;
import com.dropbox.core.p006v2.files.FolderMetadata;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class Metadata {
    protected final String name;
    protected final String parentSharedFolderId;
    protected final String pathDisplay;
    protected final String pathLower;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected final String name;
        protected String parentSharedFolderId;
        protected String pathDisplay;
        protected String pathLower;

        public Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'name' is null");
            }
            this.name = str;
            this.pathLower = null;
            this.pathDisplay = null;
            this.parentSharedFolderId = null;
        }

        public Metadata build() {
            return new Metadata(this.name, this.pathLower, this.pathDisplay, this.parentSharedFolderId);
        }

        public Builder withParentSharedFolderId(String str) {
            if (str != null && !Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
                throw new IllegalArgumentException("String 'parentSharedFolderId' does not match pattern");
            }
            this.parentSharedFolderId = str;
            return this;
        }

        public Builder withPathDisplay(String str) {
            this.pathDisplay = str;
            return this;
        }

        public Builder withPathLower(String str) {
            this.pathLower = str;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.files.Metadata$a */
    /* loaded from: classes4.dex */
    public static class C2596a extends StructSerializer<Metadata> {

        /* renamed from: b */
        public static final C2596a f17264b = new C2596a();

        /* JADX WARN: Code restructure failed: missing block: B:4:0x0010, code lost:
        
            if ("".equals(r1) != false) goto L6;
         */
        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.dropbox.core.p006v2.files.Metadata deserialize(com.fasterxml.jackson.core.JsonParser r6, boolean r7) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                r5 = this;
                java.lang.String r5 = ""
                r0 = 0
                if (r7 != 0) goto L12
                com.dropbox.core.stone.StoneSerializer.expectStartObject(r6)
                java.lang.String r1 = com.dropbox.core.stone.CompositeSerializer.readTag(r6)
                boolean r2 = r5.equals(r1)
                if (r2 == 0) goto L13
            L12:
                r1 = r0
            L13:
                if (r1 != 0) goto L93
                r5 = r0
                r1 = r5
                r2 = r1
            L18:
                com.fasterxml.jackson.core.JsonToken r3 = r6.getCurrentToken()
                com.fasterxml.jackson.core.JsonToken r4 = com.fasterxml.jackson.core.JsonToken.FIELD_NAME
                if (r3 != r4) goto L83
                java.lang.String r3 = r6.getCurrentName()
                r6.nextToken()
                java.lang.String r4 = "name"
                boolean r4 = r4.equals(r3)
                if (r4 == 0) goto L3a
                com.dropbox.core.stone.StoneSerializer r0 = com.dropbox.core.stone.StoneSerializers.string()
                java.lang.Object r0 = r0.deserialize(r6)
                java.lang.String r0 = (java.lang.String) r0
                goto L18
            L3a:
                java.lang.String r4 = "path_lower"
                boolean r4 = r4.equals(r3)
                if (r4 == 0) goto L51
                com.dropbox.core.stone.StoneSerializer r5 = com.dropbox.core.stone.StoneSerializers.string()
                com.dropbox.core.stone.StoneSerializer r5 = com.dropbox.core.stone.StoneSerializers.nullable(r5)
                java.lang.Object r5 = r5.deserialize(r6)
                java.lang.String r5 = (java.lang.String) r5
                goto L18
            L51:
                java.lang.String r4 = "path_display"
                boolean r4 = r4.equals(r3)
                if (r4 == 0) goto L68
                com.dropbox.core.stone.StoneSerializer r1 = com.dropbox.core.stone.StoneSerializers.string()
                com.dropbox.core.stone.StoneSerializer r1 = com.dropbox.core.stone.StoneSerializers.nullable(r1)
                java.lang.Object r1 = r1.deserialize(r6)
                java.lang.String r1 = (java.lang.String) r1
                goto L18
            L68:
                java.lang.String r4 = "parent_shared_folder_id"
                boolean r3 = r4.equals(r3)
                if (r3 == 0) goto L7f
                com.dropbox.core.stone.StoneSerializer r2 = com.dropbox.core.stone.StoneSerializers.string()
                com.dropbox.core.stone.StoneSerializer r2 = com.dropbox.core.stone.StoneSerializers.nullable(r2)
                java.lang.Object r2 = r2.deserialize(r6)
                java.lang.String r2 = (java.lang.String) r2
                goto L18
            L7f:
                com.dropbox.core.stone.StoneSerializer.skipValue(r6)
                goto L18
            L83:
                if (r0 == 0) goto L8b
                com.dropbox.core.v2.files.Metadata r3 = new com.dropbox.core.v2.files.Metadata
                r3.<init>(r0, r5, r1, r2)
                goto Lcd
            L8b:
                com.fasterxml.jackson.core.JsonParseException r5 = new com.fasterxml.jackson.core.JsonParseException
                java.lang.String r7 = "Required field \"name\" missing."
                r5.<init>(r6, r7)
                throw r5
            L93:
                boolean r5 = r5.equals(r1)
                r0 = 1
                if (r5 == 0) goto La1
                com.dropbox.core.v2.files.Metadata$a r5 = com.dropbox.core.p006v2.files.Metadata.C2596a.f17264b
                com.dropbox.core.v2.files.Metadata r3 = r5.deserialize(r6, r0)
                goto Lcd
            La1:
                java.lang.String r5 = "file"
                boolean r5 = r5.equals(r1)
                if (r5 == 0) goto Lb0
                com.dropbox.core.v2.files.FileMetadata$a r5 = com.dropbox.core.p006v2.files.FileMetadata.C2543a.f17151b
                com.dropbox.core.v2.files.FileMetadata r3 = r5.deserialize(r6, r0)
                goto Lcd
            Lb0:
                java.lang.String r5 = "folder"
                boolean r5 = r5.equals(r1)
                if (r5 == 0) goto Lbf
                com.dropbox.core.v2.files.FolderMetadata$a r5 = com.dropbox.core.p006v2.files.FolderMetadata.C2548a.f17158b
                com.dropbox.core.v2.files.FolderMetadata r3 = r5.deserialize(r6, r0)
                goto Lcd
            Lbf:
                java.lang.String r5 = "deleted"
                boolean r5 = r5.equals(r1)
                if (r5 == 0) goto Lda
                com.dropbox.core.v2.files.DeletedMetadata$a r5 = com.dropbox.core.p006v2.files.DeletedMetadata.C2527a.f17118b
                com.dropbox.core.v2.files.DeletedMetadata r3 = r5.deserialize(r6, r0)
            Lcd:
                if (r7 != 0) goto Ld2
                com.dropbox.core.stone.StoneSerializer.expectEndObject(r6)
            Ld2:
                java.lang.String r5 = r3.toStringMultiline()
                com.dropbox.core.stone.StoneDeserializerLogger.log(r3, r5)
                return r3
            Lda:
                com.fasterxml.jackson.core.JsonParseException r5 = new com.fasterxml.jackson.core.JsonParseException
                java.lang.StringBuilder r7 = new java.lang.StringBuilder
                r7.<init>()
                java.lang.String r0 = "No subtype found that matches tag: \""
                r7.append(r0)
                r7.append(r1)
                java.lang.String r0 = "\""
                r7.append(r0)
                java.lang.String r7 = r7.toString()
                r5.<init>(r6, r7)
                throw r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p006v2.files.Metadata.C2596a.deserialize(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.files.Metadata");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(Metadata metadata, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (metadata instanceof FileMetadata) {
                FileMetadata.C2543a.f17151b.serialize((FileMetadata) metadata, jsonGenerator, z);
                return;
            }
            if (metadata instanceof FolderMetadata) {
                FolderMetadata.C2548a.f17158b.serialize((FolderMetadata) metadata, jsonGenerator, z);
                return;
            }
            if (metadata instanceof DeletedMetadata) {
                DeletedMetadata.C2527a.f17118b.serialize((DeletedMetadata) metadata, jsonGenerator, z);
                return;
            }
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("name");
            StoneSerializers.string().serialize((StoneSerializer<String>) metadata.name, jsonGenerator);
            if (metadata.pathLower != null) {
                jsonGenerator.writeFieldName("path_lower");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) metadata.pathLower, jsonGenerator);
            }
            if (metadata.pathDisplay != null) {
                jsonGenerator.writeFieldName("path_display");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) metadata.pathDisplay, jsonGenerator);
            }
            if (metadata.parentSharedFolderId != null) {
                jsonGenerator.writeFieldName("parent_shared_folder_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) metadata.parentSharedFolderId, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public Metadata(String str, String str2, String str3, String str4) {
        if (str != null) {
            this.name = str;
            this.pathLower = str2;
            this.pathDisplay = str3;
            if (str4 != null && !Pattern.matches("[-_0-9a-zA-Z:]+", str4)) {
                throw new IllegalArgumentException("String 'parentSharedFolderId' does not match pattern");
            }
            this.parentSharedFolderId = str4;
            return;
        }
        throw new IllegalArgumentException("Required value for 'name' is null");
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        String str3;
        String str4;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        Metadata metadata = (Metadata) obj;
        String str5 = this.name;
        String str6 = metadata.name;
        if ((str5 == str6 || str5.equals(str6)) && (((str = this.pathLower) == (str2 = metadata.pathLower) || (str != null && str.equals(str2))) && ((str3 = this.pathDisplay) == (str4 = metadata.pathDisplay) || (str3 != null && str3.equals(str4))))) {
            String str7 = this.parentSharedFolderId;
            String str8 = metadata.parentSharedFolderId;
            if (str7 == str8) {
                return true;
            }
            if (str7 != null && str7.equals(str8)) {
                return true;
            }
        }
        return false;
    }

    public String getName() {
        return this.name;
    }

    public String getParentSharedFolderId() {
        return this.parentSharedFolderId;
    }

    public String getPathDisplay() {
        return this.pathDisplay;
    }

    public String getPathLower() {
        return this.pathLower;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.name, this.pathLower, this.pathDisplay, this.parentSharedFolderId});
    }

    public String toString() {
        return C2596a.f17264b.serialize((C2596a) this, false);
    }

    public String toStringMultiline() {
        return C2596a.f17264b.serialize((C2596a) this, true);
    }

    public Metadata(String str) {
        this(str, null, null, null);
    }
}
