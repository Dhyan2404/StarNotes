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
public class SfTeamJoinFromOobLinkDetails {
    protected final String originalFolderName;
    protected final String sharingPermission;
    protected final long targetAssetIndex;
    protected final String tokenKey;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected final String originalFolderName;
        protected String sharingPermission;
        protected final long targetAssetIndex;
        protected String tokenKey;

        public Builder(long j, String str) {
            this.targetAssetIndex = j;
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'originalFolderName' is null");
            }
            this.originalFolderName = str;
            this.tokenKey = null;
            this.sharingPermission = null;
        }

        public SfTeamJoinFromOobLinkDetails build() {
            return new SfTeamJoinFromOobLinkDetails(this.targetAssetIndex, this.originalFolderName, this.tokenKey, this.sharingPermission);
        }

        public Builder withSharingPermission(String str) {
            this.sharingPermission = str;
            return this;
        }

        public Builder withTokenKey(String str) {
            this.tokenKey = str;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.SfTeamJoinFromOobLinkDetails$a */
    /* loaded from: classes4.dex */
    public static class C4023a extends StructSerializer<SfTeamJoinFromOobLinkDetails> {

        /* renamed from: b */
        public static final C4023a f20299b = new C4023a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SfTeamJoinFromOobLinkDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Long l = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            String str2 = null;
            String str3 = null;
            String str4 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("target_asset_index".equals(currentName)) {
                    l = StoneSerializers.uInt64().deserialize(jsonParser);
                } else if ("original_folder_name".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("token_key".equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("sharing_permission".equals(currentName)) {
                    str4 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (l == null) {
                throw new JsonParseException(jsonParser, "Required field \"target_asset_index\" missing.");
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"original_folder_name\" missing.");
            }
            SfTeamJoinFromOobLinkDetails sfTeamJoinFromOobLinkDetails = new SfTeamJoinFromOobLinkDetails(l.longValue(), str2, str3, str4);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sfTeamJoinFromOobLinkDetails, sfTeamJoinFromOobLinkDetails.toStringMultiline());
            return sfTeamJoinFromOobLinkDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SfTeamJoinFromOobLinkDetails sfTeamJoinFromOobLinkDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("target_asset_index");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(sfTeamJoinFromOobLinkDetails.targetAssetIndex), jsonGenerator);
            jsonGenerator.writeFieldName("original_folder_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) sfTeamJoinFromOobLinkDetails.originalFolderName, jsonGenerator);
            if (sfTeamJoinFromOobLinkDetails.tokenKey != null) {
                jsonGenerator.writeFieldName("token_key");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) sfTeamJoinFromOobLinkDetails.tokenKey, jsonGenerator);
            }
            if (sfTeamJoinFromOobLinkDetails.sharingPermission != null) {
                jsonGenerator.writeFieldName("sharing_permission");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) sfTeamJoinFromOobLinkDetails.sharingPermission, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SfTeamJoinFromOobLinkDetails(long j, String str, String str2, String str3) {
        this.targetAssetIndex = j;
        if (str != null) {
            this.originalFolderName = str;
            this.tokenKey = str2;
            this.sharingPermission = str3;
            return;
        }
        throw new IllegalArgumentException("Required value for 'originalFolderName' is null");
    }

    public static Builder newBuilder(long j, String str) {
        return new Builder(j, str);
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
        SfTeamJoinFromOobLinkDetails sfTeamJoinFromOobLinkDetails = (SfTeamJoinFromOobLinkDetails) obj;
        if (this.targetAssetIndex == sfTeamJoinFromOobLinkDetails.targetAssetIndex && (((str = this.originalFolderName) == (str2 = sfTeamJoinFromOobLinkDetails.originalFolderName) || str.equals(str2)) && ((str3 = this.tokenKey) == (str4 = sfTeamJoinFromOobLinkDetails.tokenKey) || (str3 != null && str3.equals(str4))))) {
            String str5 = this.sharingPermission;
            String str6 = sfTeamJoinFromOobLinkDetails.sharingPermission;
            if (str5 == str6) {
                return true;
            }
            if (str5 != null && str5.equals(str6)) {
                return true;
            }
        }
        return false;
    }

    public String getOriginalFolderName() {
        return this.originalFolderName;
    }

    public String getSharingPermission() {
        return this.sharingPermission;
    }

    public long getTargetAssetIndex() {
        return this.targetAssetIndex;
    }

    public String getTokenKey() {
        return this.tokenKey;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.targetAssetIndex), this.originalFolderName, this.tokenKey, this.sharingPermission});
    }

    public String toString() {
        return C4023a.f20299b.serialize((C4023a) this, false);
    }

    public String toStringMultiline() {
        return C4023a.f20299b.serialize((C4023a) this, true);
    }

    public SfTeamJoinFromOobLinkDetails(long j, String str) {
        this(j, str, null, null);
    }
}
