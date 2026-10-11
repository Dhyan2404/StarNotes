package com.dropbox.core.p006v2.clouddocs;

import com.dropbox.core.p006v2.clouddocs.UserInfo;
import com.dropbox.core.p006v2.clouddocs.UserPermissions;
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
import com.google.android.exoplayer2.offline.DefaultDownloadIndex;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class GetMetadataResult {
    protected final String fileId;
    protected final boolean isDeleted;
    protected final String mimeType;
    protected final String providerVersion;
    protected final String title;
    protected final UserInfo user;
    protected final UserPermissions userPermissions;
    protected final String version;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected String fileId = "\"\"";
        protected String title = "\"\"";
        protected String mimeType = "\"\"";
        protected String version = "\"\"";
        protected String providerVersion = "\"\"";
        protected UserInfo user = null;
        protected boolean isDeleted = false;
        protected UserPermissions userPermissions = null;

        public GetMetadataResult build() {
            return new GetMetadataResult(this.fileId, this.title, this.mimeType, this.version, this.providerVersion, this.user, this.isDeleted, this.userPermissions);
        }

        public Builder withFileId(String str) {
            if (str != null) {
                this.fileId = str;
            } else {
                this.fileId = "\"\"";
            }
            return this;
        }

        public Builder withIsDeleted(Boolean bool) {
            if (bool != null) {
                this.isDeleted = bool.booleanValue();
            } else {
                this.isDeleted = false;
            }
            return this;
        }

        public Builder withMimeType(String str) {
            if (str != null) {
                this.mimeType = str;
            } else {
                this.mimeType = "\"\"";
            }
            return this;
        }

        public Builder withProviderVersion(String str) {
            if (str != null) {
                this.providerVersion = str;
            } else {
                this.providerVersion = "\"\"";
            }
            return this;
        }

        public Builder withTitle(String str) {
            if (str != null) {
                this.title = str;
            } else {
                this.title = "\"\"";
            }
            return this;
        }

        public Builder withUser(UserInfo userInfo) {
            this.user = userInfo;
            return this;
        }

        public Builder withUserPermissions(UserPermissions userPermissions) {
            this.userPermissions = userPermissions;
            return this;
        }

        public Builder withVersion(String str) {
            if (str != null) {
                this.version = str;
            } else {
                this.version = "\"\"";
            }
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.clouddocs.GetMetadataResult$a */
    /* loaded from: classes4.dex */
    public static class C2395a extends StructSerializer<GetMetadataResult> {

        /* renamed from: b */
        public static final C2395a f16843b = new C2395a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GetMetadataResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            Boolean bool = Boolean.FALSE;
            UserInfo userInfo = null;
            UserPermissions userPermissions = null;
            String str2 = "\"\"";
            String str3 = str2;
            String str4 = str3;
            String str5 = str4;
            String str6 = str5;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("file_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("title".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else if (DefaultDownloadIndex.f24934i.equals(currentName)) {
                    str4 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("version".equals(currentName)) {
                    str5 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("provider_version".equals(currentName)) {
                    str6 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("user".equals(currentName)) {
                    userInfo = (UserInfo) StoneSerializers.nullableStruct(UserInfo.C2413a.f16874b).deserialize(jsonParser);
                } else if ("is_deleted".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("user_permissions".equals(currentName)) {
                    userPermissions = (UserPermissions) StoneSerializers.nullableStruct(UserPermissions.C2414a.f16875b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            GetMetadataResult getMetadataResult = new GetMetadataResult(str2, str3, str4, str5, str6, userInfo, bool.booleanValue(), userPermissions);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(getMetadataResult, getMetadataResult.toStringMultiline());
            return getMetadataResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GetMetadataResult getMetadataResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("file_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) getMetadataResult.fileId, jsonGenerator);
            jsonGenerator.writeFieldName("title");
            StoneSerializers.string().serialize((StoneSerializer<String>) getMetadataResult.title, jsonGenerator);
            jsonGenerator.writeFieldName(DefaultDownloadIndex.f24934i);
            StoneSerializers.string().serialize((StoneSerializer<String>) getMetadataResult.mimeType, jsonGenerator);
            jsonGenerator.writeFieldName("version");
            StoneSerializers.string().serialize((StoneSerializer<String>) getMetadataResult.version, jsonGenerator);
            jsonGenerator.writeFieldName("provider_version");
            StoneSerializers.string().serialize((StoneSerializer<String>) getMetadataResult.providerVersion, jsonGenerator);
            if (getMetadataResult.user != null) {
                jsonGenerator.writeFieldName("user");
                StoneSerializers.nullableStruct(UserInfo.C2413a.f16874b).serialize((StructSerializer) getMetadataResult.user, jsonGenerator);
            }
            jsonGenerator.writeFieldName("is_deleted");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(getMetadataResult.isDeleted), jsonGenerator);
            if (getMetadataResult.userPermissions != null) {
                jsonGenerator.writeFieldName("user_permissions");
                StoneSerializers.nullableStruct(UserPermissions.C2414a.f16875b).serialize((StructSerializer) getMetadataResult.userPermissions, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public GetMetadataResult(String str, String str2, String str3, String str4, String str5, UserInfo userInfo, boolean z, UserPermissions userPermissions) {
        if (str != null) {
            this.fileId = str;
            if (str2 != null) {
                this.title = str2;
                if (str3 != null) {
                    this.mimeType = str3;
                    if (str4 != null) {
                        this.version = str4;
                        if (str5 != null) {
                            this.providerVersion = str5;
                            this.user = userInfo;
                            this.isDeleted = z;
                            this.userPermissions = userPermissions;
                            return;
                        }
                        throw new IllegalArgumentException("Required value for 'providerVersion' is null");
                    }
                    throw new IllegalArgumentException("Required value for 'version' is null");
                }
                throw new IllegalArgumentException("Required value for 'mimeType' is null");
            }
            throw new IllegalArgumentException("Required value for 'title' is null");
        }
        throw new IllegalArgumentException("Required value for 'fileId' is null");
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        UserInfo userInfo;
        UserInfo userInfo2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        GetMetadataResult getMetadataResult = (GetMetadataResult) obj;
        String str9 = this.fileId;
        String str10 = getMetadataResult.fileId;
        if ((str9 == str10 || str9.equals(str10)) && (((str = this.title) == (str2 = getMetadataResult.title) || str.equals(str2)) && (((str3 = this.mimeType) == (str4 = getMetadataResult.mimeType) || str3.equals(str4)) && (((str5 = this.version) == (str6 = getMetadataResult.version) || str5.equals(str6)) && (((str7 = this.providerVersion) == (str8 = getMetadataResult.providerVersion) || str7.equals(str8)) && (((userInfo = this.user) == (userInfo2 = getMetadataResult.user) || (userInfo != null && userInfo.equals(userInfo2))) && this.isDeleted == getMetadataResult.isDeleted)))))) {
            UserPermissions userPermissions = this.userPermissions;
            UserPermissions userPermissions2 = getMetadataResult.userPermissions;
            if (userPermissions == userPermissions2) {
                return true;
            }
            if (userPermissions != null && userPermissions.equals(userPermissions2)) {
                return true;
            }
        }
        return false;
    }

    public String getFileId() {
        return this.fileId;
    }

    public boolean getIsDeleted() {
        return this.isDeleted;
    }

    public String getMimeType() {
        return this.mimeType;
    }

    public String getProviderVersion() {
        return this.providerVersion;
    }

    public String getTitle() {
        return this.title;
    }

    public UserInfo getUser() {
        return this.user;
    }

    public UserPermissions getUserPermissions() {
        return this.userPermissions;
    }

    public String getVersion() {
        return this.version;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.fileId, this.title, this.mimeType, this.version, this.providerVersion, this.user, Boolean.valueOf(this.isDeleted), this.userPermissions});
    }

    public String toString() {
        return C2395a.f16843b.serialize((C2395a) this, false);
    }

    public String toStringMultiline() {
        return C2395a.f16843b.serialize((C2395a) this, true);
    }

    public GetMetadataResult() {
        this("\"\"", "\"\"", "\"\"", "\"\"", "\"\"", null, false, null);
    }
}
