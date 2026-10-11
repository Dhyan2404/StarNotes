package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.UserResendResult;
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
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class ResendVerificationEmailResult {
    protected final List<UserResendResult> results;

    /* renamed from: com.dropbox.core.v2.team.ResendVerificationEmailResult$a */
    /* loaded from: classes4.dex */
    public static class C3193a extends StructSerializer<ResendVerificationEmailResult> {

        /* renamed from: b */
        public static final C3193a f18441b = new C3193a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ResendVerificationEmailResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            List list = null;
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
                if ("results".equals(currentName)) {
                    list = (List) StoneSerializers.list(UserResendResult.C3271b.f18574b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"results\" missing.");
            }
            ResendVerificationEmailResult resendVerificationEmailResult = new ResendVerificationEmailResult(list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(resendVerificationEmailResult, resendVerificationEmailResult.toStringMultiline());
            return resendVerificationEmailResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ResendVerificationEmailResult resendVerificationEmailResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("results");
            StoneSerializers.list(UserResendResult.C3271b.f18574b).serialize((StoneSerializer) resendVerificationEmailResult.results, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ResendVerificationEmailResult(List<UserResendResult> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'results' is null");
        }
        Iterator<UserResendResult> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'results' is null");
            }
        }
        this.results = list;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        List<UserResendResult> list = this.results;
        List<UserResendResult> list2 = ((ResendVerificationEmailResult) obj).results;
        return list == list2 || list.equals(list2);
    }

    public List<UserResendResult> getResults() {
        return this.results;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.results});
    }

    public String toString() {
        return C3193a.f18441b.serialize((C3193a) this, false);
    }

    public String toStringMultiline() {
        return C3193a.f18441b.serialize((C3193a) this, true);
    }
}
