package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.Metadata;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import java.io.IOException;

/* loaded from: classes4.dex */
public class DeletedMetadata extends Metadata {

    /* loaded from: classes4.dex */
    public static class Builder extends Metadata.Builder {
        public Builder(String str) {
            super(str);
        }

        @Override // com.dropbox.core.v2.files.Metadata.Builder
        public DeletedMetadata build() {
            return new DeletedMetadata(this.name, this.pathLower, this.pathDisplay, this.parentSharedFolderId);
        }

        @Override // com.dropbox.core.v2.files.Metadata.Builder
        public Builder withParentSharedFolderId(String str) {
            super.withParentSharedFolderId(str);
            return this;
        }

        @Override // com.dropbox.core.v2.files.Metadata.Builder
        public Builder withPathDisplay(String str) {
            super.withPathDisplay(str);
            return this;
        }

        @Override // com.dropbox.core.v2.files.Metadata.Builder
        public Builder withPathLower(String str) {
            super.withPathLower(str);
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.files.DeletedMetadata$a */
    /* loaded from: classes4.dex */
    public static class C2527a extends StructSerializer<DeletedMetadata> {

        /* renamed from: b */
        public static final C2527a f17118b = new C2527a();

        /* JADX WARN: Code restructure failed: missing block: B:4:0x0010, code lost:
        
            if ("deleted".equals(r0) != false) goto L6;
         */
        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.dropbox.core.p006v2.files.DeletedMetadata deserialize(com.fasterxml.jackson.core.JsonParser r6, boolean r7) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                r5 = this;
                r5 = 0
                if (r7 != 0) goto L12
                com.dropbox.core.stone.StoneSerializer.expectStartObject(r6)
                java.lang.String r0 = com.dropbox.core.stone.CompositeSerializer.readTag(r6)
                java.lang.String r1 = "deleted"
                boolean r1 = r1.equals(r0)
                if (r1 == 0) goto L13
            L12:
                r0 = r5
            L13:
                if (r0 != 0) goto L9f
                r0 = r5
                r1 = r0
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
                com.dropbox.core.stone.StoneSerializer r5 = com.dropbox.core.stone.StoneSerializers.string()
                java.lang.Object r5 = r5.deserialize(r6)
                java.lang.String r5 = (java.lang.String) r5
                goto L18
            L3a:
                java.lang.String r4 = "path_lower"
                boolean r4 = r4.equals(r3)
                if (r4 == 0) goto L51
                com.dropbox.core.stone.StoneSerializer r0 = com.dropbox.core.stone.StoneSerializers.string()
                com.dropbox.core.stone.StoneSerializer r0 = com.dropbox.core.stone.StoneSerializers.nullable(r0)
                java.lang.Object r0 = r0.deserialize(r6)
                java.lang.String r0 = (java.lang.String) r0
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
                if (r5 == 0) goto L97
                com.dropbox.core.v2.files.DeletedMetadata r3 = new com.dropbox.core.v2.files.DeletedMetadata
                r3.<init>(r5, r0, r1, r2)
                if (r7 != 0) goto L8f
                com.dropbox.core.stone.StoneSerializer.expectEndObject(r6)
            L8f:
                java.lang.String r5 = r3.toStringMultiline()
                com.dropbox.core.stone.StoneDeserializerLogger.log(r3, r5)
                return r3
            L97:
                com.fasterxml.jackson.core.JsonParseException r5 = new com.fasterxml.jackson.core.JsonParseException
                java.lang.String r7 = "Required field \"name\" missing."
                r5.<init>(r6, r7)
                throw r5
            L9f:
                com.fasterxml.jackson.core.JsonParseException r5 = new com.fasterxml.jackson.core.JsonParseException
                java.lang.StringBuilder r7 = new java.lang.StringBuilder
                r7.<init>()
                java.lang.String r1 = "No subtype found that matches tag: \""
                r7.append(r1)
                r7.append(r0)
                java.lang.String r0 = "\""
                r7.append(r0)
                java.lang.String r7 = r7.toString()
                r5.<init>(r6, r7)
                throw r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p006v2.files.DeletedMetadata.C2527a.deserialize(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.files.DeletedMetadata");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DeletedMetadata deletedMetadata, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            writeTag("deleted", jsonGenerator);
            jsonGenerator.writeFieldName("name");
            StoneSerializers.string().serialize((StoneSerializer<String>) deletedMetadata.name, jsonGenerator);
            if (deletedMetadata.pathLower != null) {
                jsonGenerator.writeFieldName("path_lower");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) deletedMetadata.pathLower, jsonGenerator);
            }
            if (deletedMetadata.pathDisplay != null) {
                jsonGenerator.writeFieldName("path_display");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) deletedMetadata.pathDisplay, jsonGenerator);
            }
            if (deletedMetadata.parentSharedFolderId != null) {
                jsonGenerator.writeFieldName("parent_shared_folder_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) deletedMetadata.parentSharedFolderId, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public DeletedMetadata(String str, String str2, String str3, String str4) {
        super(str, str2, str3, str4);
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
    }

    @Override // com.dropbox.core.p006v2.files.Metadata
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
        DeletedMetadata deletedMetadata = (DeletedMetadata) obj;
        String str5 = this.name;
        String str6 = deletedMetadata.name;
        if ((str5 == str6 || str5.equals(str6)) && (((str = this.pathLower) == (str2 = deletedMetadata.pathLower) || (str != null && str.equals(str2))) && ((str3 = this.pathDisplay) == (str4 = deletedMetadata.pathDisplay) || (str3 != null && str3.equals(str4))))) {
            String str7 = this.parentSharedFolderId;
            String str8 = deletedMetadata.parentSharedFolderId;
            if (str7 == str8) {
                return true;
            }
            if (str7 != null && str7.equals(str8)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.dropbox.core.p006v2.files.Metadata
    public String getName() {
        return this.name;
    }

    @Override // com.dropbox.core.p006v2.files.Metadata
    public String getParentSharedFolderId() {
        return this.parentSharedFolderId;
    }

    @Override // com.dropbox.core.p006v2.files.Metadata
    public String getPathDisplay() {
        return this.pathDisplay;
    }

    @Override // com.dropbox.core.p006v2.files.Metadata
    public String getPathLower() {
        return this.pathLower;
    }

    @Override // com.dropbox.core.p006v2.files.Metadata
    public int hashCode() {
        return getClass().toString().hashCode();
    }

    @Override // com.dropbox.core.p006v2.files.Metadata
    public String toString() {
        return C2527a.f17118b.serialize((C2527a) this, false);
    }

    @Override // com.dropbox.core.p006v2.files.Metadata
    public String toStringMultiline() {
        return C2527a.f17118b.serialize((C2527a) this, true);
    }

    public DeletedMetadata(String str) {
        this(str, null, null, null);
    }
}
