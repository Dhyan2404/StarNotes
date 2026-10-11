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
public class SfExternalInviteWarnDetails {
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

        public SfExternalInviteWarnDetails build() {
            return new SfExternalInviteWarnDetails(this.targetAssetIndex, this.originalFolderName, this.newSharingPermission, this.previousSharingPermission);
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

    /* renamed from: com.dropbox.core.v2.teamlog.SfExternalInviteWarnDetails$a */
    /* loaded from: classes4.dex */
    public static class C4006a extends StructSerializer<SfExternalInviteWarnDetails> {

        /* renamed from: b */
        public static final C4006a f20282b = new C4006a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SfExternalInviteWarnDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            SfExternalInviteWarnDetails sfExternalInviteWarnDetails = new SfExternalInviteWarnDetails(l.longValue(), str2, str3, str4);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sfExternalInviteWarnDetails, sfExternalInviteWarnDetails.toStringMultiline());
            return sfExternalInviteWarnDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SfExternalInviteWarnDetails sfExternalInviteWarnDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("target_asset_index");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(sfExternalInviteWarnDetails.targetAssetIndex), jsonGenerator);
            jsonGenerator.writeFieldName("original_folder_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) sfExternalInviteWarnDetails.originalFolderName, jsonGenerator);
            if (sfExternalInviteWarnDetails.newSharingPermission != null) {
                jsonGenerator.writeFieldName("new_sharing_permission");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) sfExternalInviteWarnDetails.newSharingPermission, jsonGenerator);
            }
            if (sfExternalInviteWarnDetails.previousSharingPermission != null) {
                jsonGenerator.writeFieldName("previous_sharing_permission");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) sfExternalInviteWarnDetails.previousSharingPermission, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SfExternalInviteWarnDetails(long j, String str, String str2, String str3) {
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
        SfExternalInviteWarnDetails sfExternalInviteWarnDetails = (SfExternalInviteWarnDetails) obj;
        if (this.targetAssetIndex == sfExternalInviteWarnDetails.targetAssetIndex && (((str = this.originalFolderName) == (str2 = sfExternalInviteWarnDetails.originalFolderName) || str.equals(str2)) && ((str3 = this.newSharingPermission) == (str4 = sfExternalInviteWarnDetails.newSharingPermission) || (str3 != null && str3.equals(str4))))) {
            String str5 = this.previousSharingPermission;
            String str6 = sfExternalInviteWarnDetails.previousSharingPermission;
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
        return C4006a.f20282b.serialize((C4006a) this, false);
    }

    public String toStringMultiline() {
        return C4006a.f20282b.serialize((C4006a) this, true);
    }

    public SfExternalInviteWarnDetails(long j, String str) {
        this(j, str, null, null);
    }
}
