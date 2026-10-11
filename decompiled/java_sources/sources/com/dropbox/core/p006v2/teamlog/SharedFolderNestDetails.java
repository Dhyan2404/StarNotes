package com.dropbox.core.p006v2.teamlog;

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

/* loaded from: classes4.dex */
public class SharedFolderNestDetails {
    protected final String newNsPath;
    protected final String newParentNsId;
    protected final String previousNsPath;
    protected final String previousParentNsId;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected String previousParentNsId = null;
        protected String newParentNsId = null;
        protected String previousNsPath = null;
        protected String newNsPath = null;

        public SharedFolderNestDetails build() {
            return new SharedFolderNestDetails(this.previousParentNsId, this.newParentNsId, this.previousNsPath, this.newNsPath);
        }

        public Builder withNewNsPath(String str) {
            this.newNsPath = str;
            return this;
        }

        public Builder withNewParentNsId(String str) {
            this.newParentNsId = str;
            return this;
        }

        public Builder withPreviousNsPath(String str) {
            this.previousNsPath = str;
            return this;
        }

        public Builder withPreviousParentNsId(String str) {
            this.previousParentNsId = str;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.SharedFolderNestDetails$a */
    /* loaded from: classes4.dex */
    public static class C4092a extends StructSerializer<SharedFolderNestDetails> {

        /* renamed from: b */
        public static final C4092a f20368b = new C4092a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedFolderNestDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            String str2 = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            String str3 = null;
            String str4 = null;
            String str5 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("previous_parent_ns_id".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("new_parent_ns_id".equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("previous_ns_path".equals(currentName)) {
                    str4 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("new_ns_path".equals(currentName)) {
                    str5 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            SharedFolderNestDetails sharedFolderNestDetails = new SharedFolderNestDetails(str2, str3, str4, str5);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedFolderNestDetails, sharedFolderNestDetails.toStringMultiline());
            return sharedFolderNestDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedFolderNestDetails sharedFolderNestDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (sharedFolderNestDetails.previousParentNsId != null) {
                jsonGenerator.writeFieldName("previous_parent_ns_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) sharedFolderNestDetails.previousParentNsId, jsonGenerator);
            }
            if (sharedFolderNestDetails.newParentNsId != null) {
                jsonGenerator.writeFieldName("new_parent_ns_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) sharedFolderNestDetails.newParentNsId, jsonGenerator);
            }
            if (sharedFolderNestDetails.previousNsPath != null) {
                jsonGenerator.writeFieldName("previous_ns_path");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) sharedFolderNestDetails.previousNsPath, jsonGenerator);
            }
            if (sharedFolderNestDetails.newNsPath != null) {
                jsonGenerator.writeFieldName("new_ns_path");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) sharedFolderNestDetails.newNsPath, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedFolderNestDetails(String str, String str2, String str3, String str4) {
        this.previousParentNsId = str;
        this.newParentNsId = str2;
        this.previousNsPath = str3;
        this.newNsPath = str4;
    }

    public static Builder newBuilder() {
        return new Builder();
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
        SharedFolderNestDetails sharedFolderNestDetails = (SharedFolderNestDetails) obj;
        String str5 = this.previousParentNsId;
        String str6 = sharedFolderNestDetails.previousParentNsId;
        if ((str5 == str6 || (str5 != null && str5.equals(str6))) && (((str = this.newParentNsId) == (str2 = sharedFolderNestDetails.newParentNsId) || (str != null && str.equals(str2))) && ((str3 = this.previousNsPath) == (str4 = sharedFolderNestDetails.previousNsPath) || (str3 != null && str3.equals(str4))))) {
            String str7 = this.newNsPath;
            String str8 = sharedFolderNestDetails.newNsPath;
            if (str7 == str8) {
                return true;
            }
            if (str7 != null && str7.equals(str8)) {
                return true;
            }
        }
        return false;
    }

    public String getNewNsPath() {
        return this.newNsPath;
    }

    public String getNewParentNsId() {
        return this.newParentNsId;
    }

    public String getPreviousNsPath() {
        return this.previousNsPath;
    }

    public String getPreviousParentNsId() {
        return this.previousParentNsId;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.previousParentNsId, this.newParentNsId, this.previousNsPath, this.newNsPath});
    }

    public String toString() {
        return C4092a.f20368b.serialize((C4092a) this, false);
    }

    public String toStringMultiline() {
        return C4092a.f20368b.serialize((C4092a) this, true);
    }

    public SharedFolderNestDetails() {
        this(null, null, null, null);
    }
}
