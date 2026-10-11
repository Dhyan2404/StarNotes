package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.LegalHoldPolicy;
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
public class LegalHoldsListPoliciesResult {
    protected final List<LegalHoldPolicy> policies;

    /* renamed from: com.dropbox.core.v2.team.LegalHoldsListPoliciesResult$a */
    /* loaded from: classes4.dex */
    public static class C3108a extends StructSerializer<LegalHoldsListPoliciesResult> {

        /* renamed from: b */
        public static final C3108a f18273b = new C3108a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LegalHoldsListPoliciesResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("policies".equals(currentName)) {
                    list = (List) StoneSerializers.list(LegalHoldPolicy.C3098a.f18261b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"policies\" missing.");
            }
            LegalHoldsListPoliciesResult legalHoldsListPoliciesResult = new LegalHoldsListPoliciesResult(list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(legalHoldsListPoliciesResult, legalHoldsListPoliciesResult.toStringMultiline());
            return legalHoldsListPoliciesResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LegalHoldsListPoliciesResult legalHoldsListPoliciesResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("policies");
            StoneSerializers.list(LegalHoldPolicy.C3098a.f18261b).serialize((StoneSerializer) legalHoldsListPoliciesResult.policies, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public LegalHoldsListPoliciesResult(List<LegalHoldPolicy> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'policies' is null");
        }
        Iterator<LegalHoldPolicy> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'policies' is null");
            }
        }
        this.policies = list;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        List<LegalHoldPolicy> list = this.policies;
        List<LegalHoldPolicy> list2 = ((LegalHoldsListPoliciesResult) obj).policies;
        return list == list2 || list.equals(list2);
    }

    public List<LegalHoldPolicy> getPolicies() {
        return this.policies;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.policies});
    }

    public String toString() {
        return C3108a.f18273b.serialize((C3108a) this, false);
    }

    public String toStringMultiline() {
        return C3108a.f18273b.serialize((C3108a) this, true);
    }
}
