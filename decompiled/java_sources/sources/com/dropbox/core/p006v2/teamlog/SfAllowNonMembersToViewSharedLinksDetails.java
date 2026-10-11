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
public class SfAllowNonMembersToViewSharedLinksDetails {
    protected final String originalFolderName;
    protected final String sharedFolderType;
    protected final long targetAssetIndex;

    /* renamed from: com.dropbox.core.v2.teamlog.SfAllowNonMembersToViewSharedLinksDetails$a */
    /* loaded from: classes4.dex */
    public static class C4004a extends StructSerializer<SfAllowNonMembersToViewSharedLinksDetails> {

        /* renamed from: b */
        public static final C4004a f20280b = new C4004a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SfAllowNonMembersToViewSharedLinksDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                } else if ("shared_folder_type".equals(currentName)) {
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
            SfAllowNonMembersToViewSharedLinksDetails sfAllowNonMembersToViewSharedLinksDetails = new SfAllowNonMembersToViewSharedLinksDetails(l.longValue(), str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sfAllowNonMembersToViewSharedLinksDetails, sfAllowNonMembersToViewSharedLinksDetails.toStringMultiline());
            return sfAllowNonMembersToViewSharedLinksDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SfAllowNonMembersToViewSharedLinksDetails sfAllowNonMembersToViewSharedLinksDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("target_asset_index");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(sfAllowNonMembersToViewSharedLinksDetails.targetAssetIndex), jsonGenerator);
            jsonGenerator.writeFieldName("original_folder_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) sfAllowNonMembersToViewSharedLinksDetails.originalFolderName, jsonGenerator);
            if (sfAllowNonMembersToViewSharedLinksDetails.sharedFolderType != null) {
                jsonGenerator.writeFieldName("shared_folder_type");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) sfAllowNonMembersToViewSharedLinksDetails.sharedFolderType, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SfAllowNonMembersToViewSharedLinksDetails(long j, String str, String str2) {
        this.targetAssetIndex = j;
        if (str != null) {
            this.originalFolderName = str;
            this.sharedFolderType = str2;
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
        SfAllowNonMembersToViewSharedLinksDetails sfAllowNonMembersToViewSharedLinksDetails = (SfAllowNonMembersToViewSharedLinksDetails) obj;
        if (this.targetAssetIndex == sfAllowNonMembersToViewSharedLinksDetails.targetAssetIndex && ((str = this.originalFolderName) == (str2 = sfAllowNonMembersToViewSharedLinksDetails.originalFolderName) || str.equals(str2))) {
            String str3 = this.sharedFolderType;
            String str4 = sfAllowNonMembersToViewSharedLinksDetails.sharedFolderType;
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

    public String getSharedFolderType() {
        return this.sharedFolderType;
    }

    public long getTargetAssetIndex() {
        return this.targetAssetIndex;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.targetAssetIndex), this.originalFolderName, this.sharedFolderType});
    }

    public String toString() {
        return C4004a.f20280b.serialize((C4004a) this, false);
    }

    public String toStringMultiline() {
        return C4004a.f20280b.serialize((C4004a) this, true);
    }

    public SfAllowNonMembersToViewSharedLinksDetails(long j, String str) {
        this(j, str, null);
    }
}
