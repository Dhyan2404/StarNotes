package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.RewindPolicy;
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
public class RewindPolicyChangedDetails {
    protected final RewindPolicy newValue;
    protected final RewindPolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.RewindPolicyChangedDetails$a */
    /* loaded from: classes4.dex */
    public static class C3983a extends StructSerializer<RewindPolicyChangedDetails> {

        /* renamed from: b */
        public static final C3983a f20259b = new C3983a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RewindPolicyChangedDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            RewindPolicy rewindPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            RewindPolicy rewindPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    rewindPolicy = RewindPolicy.C3982b.f20258b.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    rewindPolicy2 = RewindPolicy.C3982b.f20258b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (rewindPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            if (rewindPolicy2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"previous_value\" missing.");
            }
            RewindPolicyChangedDetails rewindPolicyChangedDetails = new RewindPolicyChangedDetails(rewindPolicy, rewindPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(rewindPolicyChangedDetails, rewindPolicyChangedDetails.toStringMultiline());
            return rewindPolicyChangedDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RewindPolicyChangedDetails rewindPolicyChangedDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            RewindPolicy.C3982b c3982b = RewindPolicy.C3982b.f20258b;
            c3982b.serialize(rewindPolicyChangedDetails.newValue, jsonGenerator);
            jsonGenerator.writeFieldName("previous_value");
            c3982b.serialize(rewindPolicyChangedDetails.previousValue, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public RewindPolicyChangedDetails(RewindPolicy rewindPolicy, RewindPolicy rewindPolicy2) {
        if (rewindPolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = rewindPolicy;
        if (rewindPolicy2 == null) {
            throw new IllegalArgumentException("Required value for 'previousValue' is null");
        }
        this.previousValue = rewindPolicy2;
    }

    public boolean equals(Object obj) {
        RewindPolicy rewindPolicy;
        RewindPolicy rewindPolicy2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        RewindPolicyChangedDetails rewindPolicyChangedDetails = (RewindPolicyChangedDetails) obj;
        RewindPolicy rewindPolicy3 = this.newValue;
        RewindPolicy rewindPolicy4 = rewindPolicyChangedDetails.newValue;
        return (rewindPolicy3 == rewindPolicy4 || rewindPolicy3.equals(rewindPolicy4)) && ((rewindPolicy = this.previousValue) == (rewindPolicy2 = rewindPolicyChangedDetails.previousValue) || rewindPolicy.equals(rewindPolicy2));
    }

    public RewindPolicy getNewValue() {
        return this.newValue;
    }

    public RewindPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C3983a.f20259b.serialize((C3983a) this, false);
    }

    public String toStringMultiline() {
        return C3983a.f20259b.serialize((C3983a) this, true);
    }
}
