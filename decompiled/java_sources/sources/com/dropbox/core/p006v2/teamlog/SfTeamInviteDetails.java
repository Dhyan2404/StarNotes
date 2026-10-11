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
public class SfTeamInviteDetails {
    protected final String originalFolderName;
    protected final String sharingPermission;
    protected final long targetAssetIndex;

    /* renamed from: com.dropbox.core.v2.teamlog.SfTeamInviteDetails$a */
    /* loaded from: classes4.dex */
    public static class C4020a extends StructSerializer<SfTeamInviteDetails> {

        /* renamed from: b */
        public static final C4020a f20296b = new C4020a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SfTeamInviteDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("target_asset_index".equals(currentName)) {
                    l = StoneSerializers.uInt64().deserialize(jsonParser);
                } else if ("original_folder_name".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("sharing_permission".equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
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
            SfTeamInviteDetails sfTeamInviteDetails = new SfTeamInviteDetails(l.longValue(), str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sfTeamInviteDetails, sfTeamInviteDetails.toStringMultiline());
            return sfTeamInviteDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SfTeamInviteDetails sfTeamInviteDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("target_asset_index");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(sfTeamInviteDetails.targetAssetIndex), jsonGenerator);
            jsonGenerator.writeFieldName("original_folder_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) sfTeamInviteDetails.originalFolderName, jsonGenerator);
            if (sfTeamInviteDetails.sharingPermission != null) {
                jsonGenerator.writeFieldName("sharing_permission");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) sfTeamInviteDetails.sharingPermission, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SfTeamInviteDetails(long j, String str, String str2) {
        this.targetAssetIndex = j;
        if (str != null) {
            this.originalFolderName = str;
            this.sharingPermission = str2;
            return;
        }
        throw new IllegalArgumentException("Required value for 'originalFolderName' is null");
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SfTeamInviteDetails sfTeamInviteDetails = (SfTeamInviteDetails) obj;
        if (this.targetAssetIndex == sfTeamInviteDetails.targetAssetIndex && ((str = this.originalFolderName) == (str2 = sfTeamInviteDetails.originalFolderName) || str.equals(str2))) {
            String str3 = this.sharingPermission;
            String str4 = sfTeamInviteDetails.sharingPermission;
            if (str3 == str4) {
                return true;
            }
            if (str3 != null && str3.equals(str4)) {
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

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.targetAssetIndex), this.originalFolderName, this.sharingPermission});
    }

    public String toString() {
        return C4020a.f20296b.serialize((C4020a) this, false);
    }

    public String toStringMultiline() {
        return C4020a.f20296b.serialize((C4020a) this, true);
    }

    public SfTeamInviteDetails(long j, String str) {
        this(j, str, null);
    }
}
