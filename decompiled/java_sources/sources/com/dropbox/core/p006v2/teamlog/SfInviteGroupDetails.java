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
public class SfInviteGroupDetails {
    protected final long targetAssetIndex;

    /* renamed from: com.dropbox.core.v2.teamlog.SfInviteGroupDetails$a */
    /* loaded from: classes4.dex */
    public static class C4014a extends StructSerializer<SfInviteGroupDetails> {

        /* renamed from: b */
        public static final C4014a f20290b = new C4014a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SfInviteGroupDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("target_asset_index".equals(currentName)) {
                    l = StoneSerializers.uInt64().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (l == null) {
                throw new JsonParseException(jsonParser, "Required field \"target_asset_index\" missing.");
            }
            SfInviteGroupDetails sfInviteGroupDetails = new SfInviteGroupDetails(l.longValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sfInviteGroupDetails, sfInviteGroupDetails.toStringMultiline());
            return sfInviteGroupDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SfInviteGroupDetails sfInviteGroupDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("target_asset_index");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(sfInviteGroupDetails.targetAssetIndex), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SfInviteGroupDetails(long j) {
        this.targetAssetIndex = j;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj != null && obj.getClass().equals(getClass()) && this.targetAssetIndex == ((SfInviteGroupDetails) obj).targetAssetIndex;
    }

    public long getTargetAssetIndex() {
        return this.targetAssetIndex;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.targetAssetIndex)});
    }

    public String toString() {
        return C4014a.f20290b.serialize((C4014a) this, false);
    }

    public String toStringMultiline() {
        return C4014a.f20290b.serialize((C4014a) this, true);
    }
}
