package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.UserAddResult;
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
public class AddSecondaryEmailsResult {
    protected final List<UserAddResult> results;

    /* renamed from: com.dropbox.core.v2.team.AddSecondaryEmailsResult$a */
    /* loaded from: classes4.dex */
    public static class C3013a extends StructSerializer<AddSecondaryEmailsResult> {

        /* renamed from: b */
        public static final C3013a f18119b = new C3013a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AddSecondaryEmailsResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                    list = (List) StoneSerializers.list(UserAddResult.C3263b.f18560b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"results\" missing.");
            }
            AddSecondaryEmailsResult addSecondaryEmailsResult = new AddSecondaryEmailsResult(list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(addSecondaryEmailsResult, addSecondaryEmailsResult.toStringMultiline());
            return addSecondaryEmailsResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(AddSecondaryEmailsResult addSecondaryEmailsResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("results");
            StoneSerializers.list(UserAddResult.C3263b.f18560b).serialize((StoneSerializer) addSecondaryEmailsResult.results, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public AddSecondaryEmailsResult(List<UserAddResult> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'results' is null");
        }
        Iterator<UserAddResult> it2 = list.iterator();
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
        List<UserAddResult> list = this.results;
        List<UserAddResult> list2 = ((AddSecondaryEmailsResult) obj).results;
        return list == list2 || list.equals(list2);
    }

    public List<UserAddResult> getResults() {
        return this.results;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.results});
    }

    public String toString() {
        return C3013a.f18119b.serialize((C3013a) this, false);
    }

    public String toStringMultiline() {
        return C3013a.f18119b.serialize((C3013a) this, true);
    }
}
