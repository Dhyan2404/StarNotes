package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.SharedLinkAccessLevel;
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
public class SharedLinkCreateDetails {
    protected final SharedLinkAccessLevel sharedLinkAccessLevel;

    /* renamed from: com.dropbox.core.v2.teamlog.SharedLinkCreateDetails$a */
    /* loaded from: classes4.dex */
    public static class C4108a extends StructSerializer<SharedLinkCreateDetails> {

        /* renamed from: b */
        public static final C4108a f20384b = new C4108a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedLinkCreateDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            SharedLinkAccessLevel sharedLinkAccessLevel = null;
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
                if ("shared_link_access_level".equals(currentName)) {
                    sharedLinkAccessLevel = (SharedLinkAccessLevel) StoneSerializers.nullable(SharedLinkAccessLevel.C4099b.f20375b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            SharedLinkCreateDetails sharedLinkCreateDetails = new SharedLinkCreateDetails(sharedLinkAccessLevel);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedLinkCreateDetails, sharedLinkCreateDetails.toStringMultiline());
            return sharedLinkCreateDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedLinkCreateDetails sharedLinkCreateDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (sharedLinkCreateDetails.sharedLinkAccessLevel != null) {
                jsonGenerator.writeFieldName("shared_link_access_level");
                StoneSerializers.nullable(SharedLinkAccessLevel.C4099b.f20375b).serialize((StoneSerializer) sharedLinkCreateDetails.sharedLinkAccessLevel, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedLinkCreateDetails(SharedLinkAccessLevel sharedLinkAccessLevel) {
        this.sharedLinkAccessLevel = sharedLinkAccessLevel;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SharedLinkAccessLevel sharedLinkAccessLevel = this.sharedLinkAccessLevel;
        SharedLinkAccessLevel sharedLinkAccessLevel2 = ((SharedLinkCreateDetails) obj).sharedLinkAccessLevel;
        if (sharedLinkAccessLevel != sharedLinkAccessLevel2) {
            return sharedLinkAccessLevel != null && sharedLinkAccessLevel.equals(sharedLinkAccessLevel2);
        }
        return true;
    }

    public SharedLinkAccessLevel getSharedLinkAccessLevel() {
        return this.sharedLinkAccessLevel;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sharedLinkAccessLevel});
    }

    public String toString() {
        return C4108a.f20384b.serialize((C4108a) this, false);
    }

    public String toStringMultiline() {
        return C4108a.f20384b.serialize((C4108a) this, true);
    }

    public SharedLinkCreateDetails() {
        this(null);
    }
}
