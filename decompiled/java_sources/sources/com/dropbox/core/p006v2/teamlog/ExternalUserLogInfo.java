package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.IdentifierType;
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
public class ExternalUserLogInfo {
    protected final IdentifierType identifierType;
    protected final String userIdentifier;

    /* renamed from: com.dropbox.core.v2.teamlog.ExternalUserLogInfo$a */
    /* loaded from: classes4.dex */
    public static class C3524a extends StructSerializer<ExternalUserLogInfo> {

        /* renamed from: b */
        public static final C3524a f19776b = new C3524a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ExternalUserLogInfo deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            String str2 = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            IdentifierType identifierType = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("user_identifier".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("identifier_type".equals(currentName)) {
                    identifierType = IdentifierType.C3680b.f19948b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"user_identifier\" missing.");
            }
            if (identifierType == null) {
                throw new JsonParseException(jsonParser, "Required field \"identifier_type\" missing.");
            }
            ExternalUserLogInfo externalUserLogInfo = new ExternalUserLogInfo(str2, identifierType);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(externalUserLogInfo, externalUserLogInfo.toStringMultiline());
            return externalUserLogInfo;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ExternalUserLogInfo externalUserLogInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("user_identifier");
            StoneSerializers.string().serialize((StoneSerializer<String>) externalUserLogInfo.userIdentifier, jsonGenerator);
            jsonGenerator.writeFieldName("identifier_type");
            IdentifierType.C3680b.f19948b.serialize(externalUserLogInfo.identifierType, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ExternalUserLogInfo(String str, IdentifierType identifierType) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'userIdentifier' is null");
        }
        this.userIdentifier = str;
        if (identifierType == null) {
            throw new IllegalArgumentException("Required value for 'identifierType' is null");
        }
        this.identifierType = identifierType;
    }

    public boolean equals(Object obj) {
        IdentifierType identifierType;
        IdentifierType identifierType2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ExternalUserLogInfo externalUserLogInfo = (ExternalUserLogInfo) obj;
        String str = this.userIdentifier;
        String str2 = externalUserLogInfo.userIdentifier;
        return (str == str2 || str.equals(str2)) && ((identifierType = this.identifierType) == (identifierType2 = externalUserLogInfo.identifierType) || identifierType.equals(identifierType2));
    }

    public IdentifierType getIdentifierType() {
        return this.identifierType;
    }

    public String getUserIdentifier() {
        return this.userIdentifier;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.userIdentifier, this.identifierType});
    }

    public String toString() {
        return C3524a.f19776b.serialize((C3524a) this, false);
    }

    public String toStringMultiline() {
        return C3524a.f19776b.serialize((C3524a) this, true);
    }
}
