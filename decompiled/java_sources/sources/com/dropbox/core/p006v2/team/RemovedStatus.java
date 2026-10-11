package com.dropbox.core.p006v2.team;

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
public class RemovedStatus {
    protected final boolean isDisconnected;
    protected final boolean isRecoverable;

    /* renamed from: com.dropbox.core.v2.team.RemovedStatus$a */
    /* loaded from: classes4.dex */
    public static class C3190a extends StructSerializer<RemovedStatus> {

        /* renamed from: b */
        public static final C3190a f18426b = new C3190a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RemovedStatus deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Boolean bool = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            Boolean bool2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("is_recoverable".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("is_disconnected".equals(currentName)) {
                    bool2 = StoneSerializers.boolean_().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"is_recoverable\" missing.");
            }
            if (bool2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"is_disconnected\" missing.");
            }
            RemovedStatus removedStatus = new RemovedStatus(bool.booleanValue(), bool2.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(removedStatus, removedStatus.toStringMultiline());
            return removedStatus;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RemovedStatus removedStatus, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("is_recoverable");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(removedStatus.isRecoverable), jsonGenerator);
            jsonGenerator.writeFieldName("is_disconnected");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(removedStatus.isDisconnected), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public RemovedStatus(boolean z, boolean z2) {
        this.isRecoverable = z;
        this.isDisconnected = z2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        RemovedStatus removedStatus = (RemovedStatus) obj;
        return this.isRecoverable == removedStatus.isRecoverable && this.isDisconnected == removedStatus.isDisconnected;
    }

    public boolean getIsDisconnected() {
        return this.isDisconnected;
    }

    public boolean getIsRecoverable() {
        return this.isRecoverable;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.isRecoverable), Boolean.valueOf(this.isDisconnected)});
    }

    public String toString() {
        return C3190a.f18426b.serialize((C3190a) this, false);
    }

    public String toStringMultiline() {
        return C3190a.f18426b.serialize((C3190a) this, true);
    }
}
