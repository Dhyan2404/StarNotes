package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.RevokeDeviceSessionError;
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
public class RevokeDeviceSessionStatus {
    protected final RevokeDeviceSessionError errorType;
    protected final boolean success;

    /* renamed from: com.dropbox.core.v2.team.RevokeDeviceSessionStatus$a */
    /* loaded from: classes4.dex */
    public static class C3202a extends StructSerializer<RevokeDeviceSessionStatus> {

        /* renamed from: b */
        public static final C3202a f18454b = new C3202a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RevokeDeviceSessionStatus deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            RevokeDeviceSessionError revokeDeviceSessionError = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if (FirebaseAnalytics.Param.SUCCESS.equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("error_type".equals(currentName)) {
                    revokeDeviceSessionError = (RevokeDeviceSessionError) StoneSerializers.nullable(RevokeDeviceSessionError.C3201b.f18453b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"success\" missing.");
            }
            RevokeDeviceSessionStatus revokeDeviceSessionStatus = new RevokeDeviceSessionStatus(bool.booleanValue(), revokeDeviceSessionError);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(revokeDeviceSessionStatus, revokeDeviceSessionStatus.toStringMultiline());
            return revokeDeviceSessionStatus;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RevokeDeviceSessionStatus revokeDeviceSessionStatus, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName(FirebaseAnalytics.Param.SUCCESS);
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(revokeDeviceSessionStatus.success), jsonGenerator);
            if (revokeDeviceSessionStatus.errorType != null) {
                jsonGenerator.writeFieldName("error_type");
                StoneSerializers.nullable(RevokeDeviceSessionError.C3201b.f18453b).serialize((StoneSerializer) revokeDeviceSessionStatus.errorType, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public RevokeDeviceSessionStatus(boolean z, RevokeDeviceSessionError revokeDeviceSessionError) {
        this.success = z;
        this.errorType = revokeDeviceSessionError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        RevokeDeviceSessionStatus revokeDeviceSessionStatus = (RevokeDeviceSessionStatus) obj;
        if (this.success == revokeDeviceSessionStatus.success) {
            RevokeDeviceSessionError revokeDeviceSessionError = this.errorType;
            RevokeDeviceSessionError revokeDeviceSessionError2 = revokeDeviceSessionStatus.errorType;
            if (revokeDeviceSessionError == revokeDeviceSessionError2) {
                return true;
            }
            if (revokeDeviceSessionError != null && revokeDeviceSessionError.equals(revokeDeviceSessionError2)) {
                return true;
            }
        }
        return false;
    }

    public RevokeDeviceSessionError getErrorType() {
        return this.errorType;
    }

    public boolean getSuccess() {
        return this.success;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.success), this.errorType});
    }

    public String toString() {
        return C3202a.f18454b.serialize((C3202a) this, false);
    }

    public String toStringMultiline() {
        return C3202a.f18454b.serialize((C3202a) this, true);
    }

    public RevokeDeviceSessionStatus(boolean z) {
        this(z, null);
    }
}
