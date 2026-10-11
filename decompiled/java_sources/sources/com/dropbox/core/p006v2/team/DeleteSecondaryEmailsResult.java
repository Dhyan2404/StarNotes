package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.UserDeleteResult;
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
public class DeleteSecondaryEmailsResult {
    protected final List<UserDeleteResult> results;

    /* renamed from: com.dropbox.core.v2.team.DeleteSecondaryEmailsResult$a */
    /* loaded from: classes4.dex */
    public static class C3027a extends StructSerializer<DeleteSecondaryEmailsResult> {

        /* renamed from: b */
        public static final C3027a f18143b = new C3027a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DeleteSecondaryEmailsResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                    list = (List) StoneSerializers.list(UserDeleteResult.C3268b.f18568b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"results\" missing.");
            }
            DeleteSecondaryEmailsResult deleteSecondaryEmailsResult = new DeleteSecondaryEmailsResult(list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(deleteSecondaryEmailsResult, deleteSecondaryEmailsResult.toStringMultiline());
            return deleteSecondaryEmailsResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DeleteSecondaryEmailsResult deleteSecondaryEmailsResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("results");
            StoneSerializers.list(UserDeleteResult.C3268b.f18568b).serialize((StoneSerializer) deleteSecondaryEmailsResult.results, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public DeleteSecondaryEmailsResult(List<UserDeleteResult> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'results' is null");
        }
        Iterator<UserDeleteResult> it2 = list.iterator();
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
        List<UserDeleteResult> list = this.results;
        List<UserDeleteResult> list2 = ((DeleteSecondaryEmailsResult) obj).results;
        return list == list2 || list.equals(list2);
    }

    public List<UserDeleteResult> getResults() {
        return this.results;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.results});
    }

    public String toString() {
        return C3027a.f18143b.serialize((C3027a) this, false);
    }

    public String toStringMultiline() {
        return C3027a.f18143b.serialize((C3027a) this, true);
    }
}
