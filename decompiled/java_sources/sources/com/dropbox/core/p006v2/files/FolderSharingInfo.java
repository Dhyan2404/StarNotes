package com.dropbox.core.p006v2.files;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class FolderSharingInfo extends SharingInfo {
    protected final boolean noAccess;
    protected final String parentSharedFolderId;
    protected final String sharedFolderId;
    protected final boolean traverseOnly;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected final boolean readOnly;
        protected String parentSharedFolderId = null;
        protected String sharedFolderId = null;
        protected boolean traverseOnly = false;
        protected boolean noAccess = false;

        public Builder(boolean z) {
            this.readOnly = z;
        }

        public FolderSharingInfo build() {
            return new FolderSharingInfo(this.readOnly, this.parentSharedFolderId, this.sharedFolderId, this.traverseOnly, this.noAccess);
        }

        public Builder withNoAccess(Boolean bool) {
            if (bool != null) {
                this.noAccess = bool.booleanValue();
            } else {
                this.noAccess = false;
            }
            return this;
        }

        public Builder withParentSharedFolderId(String str) {
            if (str != null && !Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
                throw new IllegalArgumentException("String 'parentSharedFolderId' does not match pattern");
            }
            this.parentSharedFolderId = str;
            return this;
        }

        public Builder withSharedFolderId(String str) {
            if (str != null && !Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
                throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
            }
            this.sharedFolderId = str;
            return this;
        }

        public Builder withTraverseOnly(Boolean bool) {
            if (bool != null) {
                this.traverseOnly = bool.booleanValue();
            } else {
                this.traverseOnly = false;
            }
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.files.FolderSharingInfo$a */
    /* loaded from: classes4.dex */
    public static class C2549a extends StructSerializer<FolderSharingInfo> {

        /* renamed from: b */
        public static final C2549a f17159b = new C2549a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FolderSharingInfo deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Boolean bool = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            Boolean bool2 = Boolean.FALSE;
            String str2 = null;
            String str3 = null;
            Boolean bool3 = bool2;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("read_only".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("parent_shared_folder_id".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("shared_folder_id".equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("traverse_only".equals(currentName)) {
                    bool2 = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("no_access".equals(currentName)) {
                    bool3 = StoneSerializers.boolean_().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"read_only\" missing.");
            }
            FolderSharingInfo folderSharingInfo = new FolderSharingInfo(bool.booleanValue(), str2, str3, bool2.booleanValue(), bool3.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(folderSharingInfo, folderSharingInfo.toStringMultiline());
            return folderSharingInfo;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FolderSharingInfo folderSharingInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("read_only");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(folderSharingInfo.readOnly), jsonGenerator);
            if (folderSharingInfo.parentSharedFolderId != null) {
                jsonGenerator.writeFieldName("parent_shared_folder_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) folderSharingInfo.parentSharedFolderId, jsonGenerator);
            }
            if (folderSharingInfo.sharedFolderId != null) {
                jsonGenerator.writeFieldName("shared_folder_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) folderSharingInfo.sharedFolderId, jsonGenerator);
            }
            jsonGenerator.writeFieldName("traverse_only");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(folderSharingInfo.traverseOnly), jsonGenerator);
            jsonGenerator.writeFieldName("no_access");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(folderSharingInfo.noAccess), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public FolderSharingInfo(boolean z, String str, String str2, boolean z2, boolean z3) {
        super(z);
        if (str != null && !Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
            throw new IllegalArgumentException("String 'parentSharedFolderId' does not match pattern");
        }
        this.parentSharedFolderId = str;
        if (str2 != null && !Pattern.matches("[-_0-9a-zA-Z:]+", str2)) {
            throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
        }
        this.sharedFolderId = str2;
        this.traverseOnly = z2;
        this.noAccess = z3;
    }

    public static Builder newBuilder(boolean z) {
        return new Builder(z);
    }

    @Override // com.dropbox.core.p006v2.files.SharingInfo
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
        FolderSharingInfo folderSharingInfo = (FolderSharingInfo) obj;
        return this.readOnly == folderSharingInfo.readOnly && ((str = this.parentSharedFolderId) == (str2 = folderSharingInfo.parentSharedFolderId) || (str != null && str.equals(str2))) && (((str3 = this.sharedFolderId) == (str4 = folderSharingInfo.sharedFolderId) || (str3 != null && str3.equals(str4))) && this.traverseOnly == folderSharingInfo.traverseOnly && this.noAccess == folderSharingInfo.noAccess);
    }

    public boolean getNoAccess() {
        return this.noAccess;
    }

    public String getParentSharedFolderId() {
        return this.parentSharedFolderId;
    }

    @Override // com.dropbox.core.p006v2.files.SharingInfo
    public boolean getReadOnly() {
        return this.readOnly;
    }

    public String getSharedFolderId() {
        return this.sharedFolderId;
    }

    public boolean getTraverseOnly() {
        return this.traverseOnly;
    }

    @Override // com.dropbox.core.p006v2.files.SharingInfo
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.parentSharedFolderId, this.sharedFolderId, Boolean.valueOf(this.traverseOnly), Boolean.valueOf(this.noAccess)});
    }

    @Override // com.dropbox.core.p006v2.files.SharingInfo
    public String toString() {
        return C2549a.f17159b.serialize((C2549a) this, false);
    }

    @Override // com.dropbox.core.p006v2.files.SharingInfo
    public String toStringMultiline() {
        return C2549a.f17159b.serialize((C2549a) this, true);
    }

    public FolderSharingInfo(boolean z) {
        this(z, null, null, false, false);
    }
}
