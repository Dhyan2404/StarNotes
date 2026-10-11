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
public class ResellerLogInfo {
    protected final String resellerEmail;
    protected final String resellerName;

    /* renamed from: com.dropbox.core.v2.teamlog.ResellerLogInfo$a */
    /* loaded from: classes4.dex */
    public static class C3970a extends StructSerializer<ResellerLogInfo> {

        /* renamed from: b */
        public static final C3970a f20246b = new C3970a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ResellerLogInfo deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            String str3 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("reseller_name".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("reseller_email".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"reseller_name\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"reseller_email\" missing.");
            }
            ResellerLogInfo resellerLogInfo = new ResellerLogInfo(str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(resellerLogInfo, resellerLogInfo.toStringMultiline());
            return resellerLogInfo;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ResellerLogInfo resellerLogInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("reseller_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) resellerLogInfo.resellerName, jsonGenerator);
            jsonGenerator.writeFieldName("reseller_email");
            StoneSerializers.string().serialize((StoneSerializer<String>) resellerLogInfo.resellerEmail, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ResellerLogInfo(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'resellerName' is null");
        }
        this.resellerName = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'resellerEmail' is null");
        }
        if (str2.length() > 255) {
            throw new IllegalArgumentException("String 'resellerEmail' is longer than 255");
        }
        this.resellerEmail = str2;
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
        ResellerLogInfo resellerLogInfo = (ResellerLogInfo) obj;
        String str3 = this.resellerName;
        String str4 = resellerLogInfo.resellerName;
        return (str3 == str4 || str3.equals(str4)) && ((str = this.resellerEmail) == (str2 = resellerLogInfo.resellerEmail) || str.equals(str2));
    }

    public String getResellerEmail() {
        return this.resellerEmail;
    }

    public String getResellerName() {
        return this.resellerName;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.resellerName, this.resellerEmail});
    }

    public String toString() {
        return C3970a.f20246b.serialize((C3970a) this, false);
    }

    public String toStringMultiline() {
        return C3970a.f20246b.serialize((C3970a) this, true);
    }
}
