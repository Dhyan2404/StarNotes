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
public class SfTeamInviteChangeRoleDetails {
    protected final String newSharingPermission;
    protected final String originalFolderName;
    protected final String previousSharingPermission;
    protected final long targetAssetIndex;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected String newSharingPermission;
        protected final String originalFolderName;
        protected String previousSharingPermission;
        protected final long targetAssetIndex;

        public Builder(long j, String str) {
            this.targetAssetIndex = j;
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'originalFolderName' is null");
            }
            this.originalFolderName = str;
            this.newSharingPermission = null;
            this.previousSharingPermission = null;
        }

        public SfTeamInviteChangeRoleDetails build() {
            return new SfTeamInviteChangeRoleDetails(this.targetAssetIndex, this.originalFolderName, this.newSharingPermission, this.previousSharingPermission);
        }

        public Builder withNewSharingPermission(String str) {
            this.newSharingPermission = str;
            return this;
        }

        public Builder withPreviousSharingPermission(String str) {
            this.previousSharingPermission = str;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.SfTeamInviteChangeRoleDetails$a */
    /* loaded from: classes4.dex */
    public static class C4018a extends StructSerializer<SfTeamInviteChangeRoleDetails> {

        /* renamed from: b */
        public static final C4018a f20294b = new C4018a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SfTeamInviteChangeRoleDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                } else if ("new_sharing_permission".equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("previous_sharing_permission".equals(currentName)) {
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
            SfTeamInviteChangeRoleDetails sfTeamInviteChangeRoleDetails = new SfTeamInviteChangeRoleDetails(l.longValue(), str2, str3, str4);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sfTeamInviteChangeRoleDetails, sfTeamInviteChangeRoleDetails.toStringMultiline());
            return sfTeamInviteChangeRoleDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SfTeamInviteChangeRoleDetails sfTeamInviteChangeRoleDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("target_asset_index");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(sfTeamInviteChangeRoleDetails.targetAssetIndex), jsonGenerator);
            jsonGenerator.writeFieldName("original_folder_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) sfTeamInviteChangeRoleDetails.originalFolderName, jsonGenerator);
            if (sfTeamInviteChangeRoleDetails.newSharingPermission != null) {
                jsonGenerator.writeFieldName("new_sharing_permission");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) sfTeamInviteChangeRoleDetails.newSharingPermission, jsonGenerator);
            }
            if (sfTeamInviteChangeRoleDetails.previousSharingPermission != null) {
                jsonGenerator.writeFieldName("previous_sharing_permission");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) sfTeamInviteChangeRoleDetails.previousSharingPermission, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SfTeamInviteChangeRoleDetails(long j, String str, String str2, String str3) {
        this.targetAssetIndex = j;
        if (str != null) {
            this.originalFolderName = str;
            this.newSharingPermission = str2;
            this.previousSharingPermission = str3;
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
        SfTeamInviteChangeRoleDetails sfTeamInviteChangeRoleDetails = (SfTeamInviteChangeRoleDetails) obj;
        if (this.targetAssetIndex == sfTeamInviteChangeRoleDetails.targetAssetIndex && (((str = this.originalFolderName) == (str2 = sfTeamInviteChangeRoleDetails.originalFolderName) || str.equals(str2)) && ((str3 = this.newSharingPermission) == (str4 = sfTeamInviteChangeRoleDetails.newSharingPermission) || (str3 != null && str3.equals(str4))))) {
            String str5 = this.previousSharingPermission;
            String str6 = sfTeamInviteChangeRoleDetails.previousSharingPermission;
            if (str5 == str6) {
                return true;
            }
            if (str5 != null && str5.equals(str6)) {
                return true;
            }
        }
        return false;
    }

    public String getNewSharingPermission() {
        return this.newSharingPermission;
    }

    public String getOriginalFolderName() {
        return this.originalFolderName;
    }

    public String getPreviousSharingPermission() {
        return this.previousSharingPermission;
    }

    public long getTargetAssetIndex() {
        return this.targetAssetIndex;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.targetAssetIndex), this.originalFolderName, this.newSharingPermission, this.previousSharingPermission});
    }

    public String toString() {
        return C4018a.f20294b.serialize((C4018a) this, false);
    }

    public String toStringMultiline() {
        return C4018a.f20294b.serialize((C4018a) this, true);
    }

    public SfTeamInviteChangeRoleDetails(long j, String str) {
        this(j, str, null, null);
    }
}
