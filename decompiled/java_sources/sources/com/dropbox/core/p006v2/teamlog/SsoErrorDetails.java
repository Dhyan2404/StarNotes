package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.FailureDetailsLogInfo;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class SsoErrorDetails {
    protected final FailureDetailsLogInfo errorDetails;

    /* renamed from: com.dropbox.core.v2.teamlog.SsoErrorDetails$a */
    /* loaded from: classes4.dex */
    public static class C4253a extends StructSerializer<SsoErrorDetails> {

        /* renamed from: b */
        public static final C4253a f20529b = new C4253a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SsoErrorDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            FailureDetailsLogInfo failureDetailsLogInfo = null;
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
                if ("error_details".equals(currentName)) {
                    failureDetailsLogInfo = FailureDetailsLogInfo.C3525a.f19777b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (failureDetailsLogInfo == null) {
                throw new JsonParseException(jsonParser, "Required field \"error_details\" missing.");
            }
            SsoErrorDetails ssoErrorDetails = new SsoErrorDetails(failureDetailsLogInfo);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(ssoErrorDetails, ssoErrorDetails.toStringMultiline());
            return ssoErrorDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SsoErrorDetails ssoErrorDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("error_details");
            FailureDetailsLogInfo.C3525a.f19777b.serialize((FailureDetailsLogInfo.C3525a) ssoErrorDetails.errorDetails, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SsoErrorDetails(FailureDetailsLogInfo failureDetailsLogInfo) {
        if (failureDetailsLogInfo == null) {
            throw new IllegalArgumentException("Required value for 'errorDetails' is null");
        }
        this.errorDetails = failureDetailsLogInfo;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        FailureDetailsLogInfo failureDetailsLogInfo = this.errorDetails;
        FailureDetailsLogInfo failureDetailsLogInfo2 = ((SsoErrorDetails) obj).errorDetails;
        return failureDetailsLogInfo == failureDetailsLogInfo2 || failureDetailsLogInfo.equals(failureDetailsLogInfo2);
    }

    public FailureDetailsLogInfo getErrorDetails() {
        return this.errorDetails;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.errorDetails});
    }

    public String toString() {
        return C4253a.f20529b.serialize((C4253a) this, false);
    }

    public String toStringMultiline() {
        return C4253a.f20529b.serialize((C4253a) this, true);
    }
}
