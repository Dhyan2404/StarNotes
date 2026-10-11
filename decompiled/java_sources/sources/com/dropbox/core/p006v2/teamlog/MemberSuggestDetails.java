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
import java.util.List;

/* loaded from: classes4.dex */
public class MemberSuggestDetails {
    protected final List<String> suggestedMembers;

    /* renamed from: com.dropbox.core.v2.teamlog.MemberSuggestDetails$a */
    /* loaded from: classes4.dex */
    public static class C3781a extends StructSerializer<MemberSuggestDetails> {

        /* renamed from: b */
        public static final C3781a f20054b = new C3781a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MemberSuggestDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("suggested_members".equals(currentName)) {
                    list = (List) StoneSerializers.list(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"suggested_members\" missing.");
            }
            MemberSuggestDetails memberSuggestDetails = new MemberSuggestDetails(list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(memberSuggestDetails, memberSuggestDetails.toStringMultiline());
            return memberSuggestDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MemberSuggestDetails memberSuggestDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("suggested_members");
            StoneSerializers.list(StoneSerializers.string()).serialize((StoneSerializer) memberSuggestDetails.suggestedMembers, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public MemberSuggestDetails(List<String> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'suggestedMembers' is null");
        }
        for (String str : list) {
            if (str == null) {
                throw new IllegalArgumentException("An item in list 'suggestedMembers' is null");
            }
            if (str.length() > 255) {
                throw new IllegalArgumentException("Stringan item in list 'suggestedMembers' is longer than 255");
            }
        }
        this.suggestedMembers = list;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        List<String> list = this.suggestedMembers;
        List<String> list2 = ((MemberSuggestDetails) obj).suggestedMembers;
        return list == list2 || list.equals(list2);
    }

    public List<String> getSuggestedMembers() {
        return this.suggestedMembers;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.suggestedMembers});
    }

    public String toString() {
        return C3781a.f20054b.serialize((C3781a) this, false);
    }

    public String toStringMultiline() {
        return C3781a.f20054b.serialize((C3781a) this, true);
    }
}
