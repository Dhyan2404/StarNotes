package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.SharedLinkVisibility;
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
public class SharedLinkChangeVisibilityDetails {
    protected final SharedLinkVisibility newValue;
    protected final SharedLinkVisibility previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.SharedLinkChangeVisibilityDetails$a */
    /* loaded from: classes4.dex */
    public static class C4104a extends StructSerializer<SharedLinkChangeVisibilityDetails> {

        /* renamed from: b */
        public static final C4104a f20380b = new C4104a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedLinkChangeVisibilityDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            SharedLinkVisibility sharedLinkVisibility = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            SharedLinkVisibility sharedLinkVisibility2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    sharedLinkVisibility = SharedLinkVisibility.C4139b.f20415b.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    sharedLinkVisibility2 = (SharedLinkVisibility) StoneSerializers.nullable(SharedLinkVisibility.C4139b.f20415b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (sharedLinkVisibility == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            SharedLinkChangeVisibilityDetails sharedLinkChangeVisibilityDetails = new SharedLinkChangeVisibilityDetails(sharedLinkVisibility, sharedLinkVisibility2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedLinkChangeVisibilityDetails, sharedLinkChangeVisibilityDetails.toStringMultiline());
            return sharedLinkChangeVisibilityDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedLinkChangeVisibilityDetails sharedLinkChangeVisibilityDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            SharedLinkVisibility.C4139b c4139b = SharedLinkVisibility.C4139b.f20415b;
            c4139b.serialize(sharedLinkChangeVisibilityDetails.newValue, jsonGenerator);
            if (sharedLinkChangeVisibilityDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(c4139b).serialize((StoneSerializer) sharedLinkChangeVisibilityDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedLinkChangeVisibilityDetails(SharedLinkVisibility sharedLinkVisibility, SharedLinkVisibility sharedLinkVisibility2) {
        if (sharedLinkVisibility != null) {
            this.newValue = sharedLinkVisibility;
            this.previousValue = sharedLinkVisibility2;
            return;
        }
        throw new IllegalArgumentException("Required value for 'newValue' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SharedLinkChangeVisibilityDetails sharedLinkChangeVisibilityDetails = (SharedLinkChangeVisibilityDetails) obj;
        SharedLinkVisibility sharedLinkVisibility = this.newValue;
        SharedLinkVisibility sharedLinkVisibility2 = sharedLinkChangeVisibilityDetails.newValue;
        if (sharedLinkVisibility == sharedLinkVisibility2 || sharedLinkVisibility.equals(sharedLinkVisibility2)) {
            SharedLinkVisibility sharedLinkVisibility3 = this.previousValue;
            SharedLinkVisibility sharedLinkVisibility4 = sharedLinkChangeVisibilityDetails.previousValue;
            if (sharedLinkVisibility3 == sharedLinkVisibility4) {
                return true;
            }
            if (sharedLinkVisibility3 != null && sharedLinkVisibility3.equals(sharedLinkVisibility4)) {
                return true;
            }
        }
        return false;
    }

    public SharedLinkVisibility getNewValue() {
        return this.newValue;
    }

    public SharedLinkVisibility getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C4104a.f20380b.serialize((C4104a) this, false);
    }

    public String toStringMultiline() {
        return C4104a.f20380b.serialize((C4104a) this, true);
    }

    public SharedLinkChangeVisibilityDetails(SharedLinkVisibility sharedLinkVisibility) {
        this(sharedLinkVisibility, null);
    }
}
