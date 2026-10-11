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
public class SfAddGroupDetails {
    protected final String originalFolderName;
    protected final String sharingPermission;
    protected final long targetAssetIndex;
    protected final String teamName;

    /* renamed from: com.dropbox.core.v2.teamlog.SfAddGroupDetails$a */
    /* loaded from: classes4.dex */
    public static class C4002a extends StructSerializer<SfAddGroupDetails> {

        /* renamed from: b */
        public static final C4002a f20278b = new C4002a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SfAddGroupDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                } else if ("team_name".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
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
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"team_name\" missing.");
            }
            SfAddGroupDetails sfAddGroupDetails = new SfAddGroupDetails(l.longValue(), str2, str3, str4);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sfAddGroupDetails, sfAddGroupDetails.toStringMultiline());
            return sfAddGroupDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SfAddGroupDetails sfAddGroupDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("target_asset_index");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(sfAddGroupDetails.targetAssetIndex), jsonGenerator);
            jsonGenerator.writeFieldName("original_folder_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) sfAddGroupDetails.originalFolderName, jsonGenerator);
            jsonGenerator.writeFieldName("team_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) sfAddGroupDetails.teamName, jsonGenerator);
            if (sfAddGroupDetails.sharingPermission != null) {
                jsonGenerator.writeFieldName("sharing_permission");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) sfAddGroupDetails.sharingPermission, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SfAddGroupDetails(long j, String str, String str2, String str3) {
        this.targetAssetIndex = j;
        if (str != null) {
            this.originalFolderName = str;
            this.sharingPermission = str3;
            if (str2 != null) {
                this.teamName = str2;
                return;
            }
            throw new IllegalArgumentException("Required value for 'teamName' is null");
        }
        throw new IllegalArgumentException("Required value for 'originalFolderName' is null");
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
        SfAddGroupDetails sfAddGroupDetails = (SfAddGroupDetails) obj;
        if (this.targetAssetIndex == sfAddGroupDetails.targetAssetIndex && (((str = this.originalFolderName) == (str2 = sfAddGroupDetails.originalFolderName) || str.equals(str2)) && ((str3 = this.teamName) == (str4 = sfAddGroupDetails.teamName) || str3.equals(str4)))) {
            String str5 = this.sharingPermission;
            String str6 = sfAddGroupDetails.sharingPermission;
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

    public String getTeamName() {
        return this.teamName;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.targetAssetIndex), this.originalFolderName, this.sharingPermission, this.teamName});
    }

    public String toString() {
        return C4002a.f20278b.serialize((C4002a) this, false);
    }

    public String toStringMultiline() {
        return C4002a.f20278b.serialize((C4002a) this, true);
    }

    public SfAddGroupDetails(long j, String str, String str2) {
        this(j, str, str2, null);
    }
}
