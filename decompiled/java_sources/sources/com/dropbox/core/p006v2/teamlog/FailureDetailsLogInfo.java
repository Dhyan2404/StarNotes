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
public class FailureDetailsLogInfo {
    protected final String technicalErrorMessage;
    protected final String userFriendlyMessage;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected String userFriendlyMessage = null;
        protected String technicalErrorMessage = null;

        public FailureDetailsLogInfo build() {
            return new FailureDetailsLogInfo(this.userFriendlyMessage, this.technicalErrorMessage);
        }

        public Builder withTechnicalErrorMessage(String str) {
            this.technicalErrorMessage = str;
            return this;
        }

        public Builder withUserFriendlyMessage(String str) {
            this.userFriendlyMessage = str;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.FailureDetailsLogInfo$a */
    /* loaded from: classes4.dex */
    public static class C3525a extends StructSerializer<FailureDetailsLogInfo> {

        /* renamed from: b */
        public static final C3525a f19777b = new C3525a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FailureDetailsLogInfo deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("user_friendly_message".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("technical_error_message".equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            FailureDetailsLogInfo failureDetailsLogInfo = new FailureDetailsLogInfo(str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(failureDetailsLogInfo, failureDetailsLogInfo.toStringMultiline());
            return failureDetailsLogInfo;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FailureDetailsLogInfo failureDetailsLogInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (failureDetailsLogInfo.userFriendlyMessage != null) {
                jsonGenerator.writeFieldName("user_friendly_message");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) failureDetailsLogInfo.userFriendlyMessage, jsonGenerator);
            }
            if (failureDetailsLogInfo.technicalErrorMessage != null) {
                jsonGenerator.writeFieldName("technical_error_message");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) failureDetailsLogInfo.technicalErrorMessage, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public FailureDetailsLogInfo(String str, String str2) {
        this.userFriendlyMessage = str;
        this.technicalErrorMessage = str2;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        FailureDetailsLogInfo failureDetailsLogInfo = (FailureDetailsLogInfo) obj;
        String str = this.userFriendlyMessage;
        String str2 = failureDetailsLogInfo.userFriendlyMessage;
        if (str == str2 || (str != null && str.equals(str2))) {
            String str3 = this.technicalErrorMessage;
            String str4 = failureDetailsLogInfo.technicalErrorMessage;
            if (str3 == str4) {
                return true;
            }
            if (str3 != null && str3.equals(str4)) {
                return true;
            }
        }
        return false;
    }

    public String getTechnicalErrorMessage() {
        return this.technicalErrorMessage;
    }

    public String getUserFriendlyMessage() {
        return this.userFriendlyMessage;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.userFriendlyMessage, this.technicalErrorMessage});
    }

    public String toString() {
        return C3525a.f19777b.serialize((C3525a) this, false);
    }

    public String toStringMultiline() {
        return C3525a.f19777b.serialize((C3525a) this, true);
    }

    public FailureDetailsLogInfo() {
        this(null, null);
    }
}
