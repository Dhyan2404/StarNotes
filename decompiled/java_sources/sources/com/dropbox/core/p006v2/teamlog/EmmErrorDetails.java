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
public class EmmErrorDetails {
    protected final FailureDetailsLogInfo errorDetails;

    /* renamed from: com.dropbox.core.v2.teamlog.EmmErrorDetails$a */
    /* loaded from: classes4.dex */
    public static class C3490a extends StructSerializer<EmmErrorDetails> {

        /* renamed from: b */
        public static final C3490a f18883b = new C3490a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public EmmErrorDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            EmmErrorDetails emmErrorDetails = new EmmErrorDetails(failureDetailsLogInfo);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(emmErrorDetails, emmErrorDetails.toStringMultiline());
            return emmErrorDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(EmmErrorDetails emmErrorDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("error_details");
            FailureDetailsLogInfo.C3525a.f19777b.serialize((FailureDetailsLogInfo.C3525a) emmErrorDetails.errorDetails, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public EmmErrorDetails(FailureDetailsLogInfo failureDetailsLogInfo) {
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
        FailureDetailsLogInfo failureDetailsLogInfo2 = ((EmmErrorDetails) obj).errorDetails;
        return failureDetailsLogInfo == failureDetailsLogInfo2 || failureDetailsLogInfo.equals(failureDetailsLogInfo2);
    }

    public FailureDetailsLogInfo getErrorDetails() {
        return this.errorDetails;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.errorDetails});
    }

    public String toString() {
        return C3490a.f18883b.serialize((C3490a) this, false);
    }

    public String toStringMultiline() {
        return C3490a.f18883b.serialize((C3490a) this, true);
    }
}
