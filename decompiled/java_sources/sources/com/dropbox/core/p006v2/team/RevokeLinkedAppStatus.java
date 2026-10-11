package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.RevokeLinkedAppError;
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
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class RevokeLinkedAppStatus {
    protected final RevokeLinkedAppError errorType;
    protected final boolean success;

    /* renamed from: com.dropbox.core.v2.team.RevokeLinkedAppStatus$a */
    /* loaded from: classes4.dex */
    public static class C3209a extends StructSerializer<RevokeLinkedAppStatus> {

        /* renamed from: b */
        public static final C3209a f18461b = new C3209a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RevokeLinkedAppStatus deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            RevokeLinkedAppError revokeLinkedAppError = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if (FirebaseAnalytics.Param.SUCCESS.equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("error_type".equals(currentName)) {
                    revokeLinkedAppError = (RevokeLinkedAppError) StoneSerializers.nullable(RevokeLinkedAppError.C3208b.f18460b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"success\" missing.");
            }
            RevokeLinkedAppStatus revokeLinkedAppStatus = new RevokeLinkedAppStatus(bool.booleanValue(), revokeLinkedAppError);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(revokeLinkedAppStatus, revokeLinkedAppStatus.toStringMultiline());
            return revokeLinkedAppStatus;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RevokeLinkedAppStatus revokeLinkedAppStatus, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName(FirebaseAnalytics.Param.SUCCESS);
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(revokeLinkedAppStatus.success), jsonGenerator);
            if (revokeLinkedAppStatus.errorType != null) {
                jsonGenerator.writeFieldName("error_type");
                StoneSerializers.nullable(RevokeLinkedAppError.C3208b.f18460b).serialize((StoneSerializer) revokeLinkedAppStatus.errorType, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public RevokeLinkedAppStatus(boolean z, RevokeLinkedAppError revokeLinkedAppError) {
        this.success = z;
        this.errorType = revokeLinkedAppError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        RevokeLinkedAppStatus revokeLinkedAppStatus = (RevokeLinkedAppStatus) obj;
        if (this.success == revokeLinkedAppStatus.success) {
            RevokeLinkedAppError revokeLinkedAppError = this.errorType;
            RevokeLinkedAppError revokeLinkedAppError2 = revokeLinkedAppStatus.errorType;
            if (revokeLinkedAppError == revokeLinkedAppError2) {
                return true;
            }
            if (revokeLinkedAppError != null && revokeLinkedAppError.equals(revokeLinkedAppError2)) {
                return true;
            }
        }
        return false;
    }

    public RevokeLinkedAppError getErrorType() {
        return this.errorType;
    }

    public boolean getSuccess() {
        return this.success;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.success), this.errorType});
    }

    public String toString() {
        return C3209a.f18461b.serialize((C3209a) this, false);
    }

    public String toStringMultiline() {
        return C3209a.f18461b.serialize((C3209a) this, true);
    }

    public RevokeLinkedAppStatus(boolean z) {
        this(z, null);
    }
}
