package com.dropbox.core.p006v2.paper;

import com.dropbox.core.p006v2.paper.AddPaperDocUserResult;
import com.dropbox.core.p006v2.sharing.MemberSelector;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class AddPaperDocUserMemberResult {
    protected final MemberSelector member;
    protected final AddPaperDocUserResult result;

    /* renamed from: com.dropbox.core.v2.paper.AddPaperDocUserMemberResult$a */
    /* loaded from: classes4.dex */
    public static class C2728a extends StructSerializer<AddPaperDocUserMemberResult> {

        /* renamed from: b */
        public static final C2728a f17547b = new C2728a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AddPaperDocUserMemberResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            MemberSelector memberSelector = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            AddPaperDocUserResult addPaperDocUserResult = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("member".equals(currentName)) {
                    memberSelector = MemberSelector.Serializer.INSTANCE.deserialize(jsonParser);
                } else if (Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING.equals(currentName)) {
                    addPaperDocUserResult = AddPaperDocUserResult.C2730b.f17549b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (memberSelector == null) {
                throw new JsonParseException(jsonParser, "Required field \"member\" missing.");
            }
            if (addPaperDocUserResult == null) {
                throw new JsonParseException(jsonParser, "Required field \"result\" missing.");
            }
            AddPaperDocUserMemberResult addPaperDocUserMemberResult = new AddPaperDocUserMemberResult(memberSelector, addPaperDocUserResult);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(addPaperDocUserMemberResult, addPaperDocUserMemberResult.toStringMultiline());
            return addPaperDocUserMemberResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(AddPaperDocUserMemberResult addPaperDocUserMemberResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("member");
            MemberSelector.Serializer.INSTANCE.serialize(addPaperDocUserMemberResult.member, jsonGenerator);
            jsonGenerator.writeFieldName(Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING);
            AddPaperDocUserResult.C2730b.f17549b.serialize(addPaperDocUserMemberResult.result, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public AddPaperDocUserMemberResult(MemberSelector memberSelector, AddPaperDocUserResult addPaperDocUserResult) {
        if (memberSelector == null) {
            throw new IllegalArgumentException("Required value for 'member' is null");
        }
        this.member = memberSelector;
        if (addPaperDocUserResult == null) {
            throw new IllegalArgumentException("Required value for 'result' is null");
        }
        this.result = addPaperDocUserResult;
    }

    public boolean equals(Object obj) {
        AddPaperDocUserResult addPaperDocUserResult;
        AddPaperDocUserResult addPaperDocUserResult2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        AddPaperDocUserMemberResult addPaperDocUserMemberResult = (AddPaperDocUserMemberResult) obj;
        MemberSelector memberSelector = this.member;
        MemberSelector memberSelector2 = addPaperDocUserMemberResult.member;
        return (memberSelector == memberSelector2 || memberSelector.equals(memberSelector2)) && ((addPaperDocUserResult = this.result) == (addPaperDocUserResult2 = addPaperDocUserMemberResult.result) || addPaperDocUserResult.equals(addPaperDocUserResult2));
    }

    public MemberSelector getMember() {
        return this.member;
    }

    public AddPaperDocUserResult getResult() {
        return this.result;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.member, this.result});
    }

    public String toString() {
        return C2728a.f17547b.serialize((C2728a) this, false);
    }

    public String toStringMultiline() {
        return C2728a.f17547b.serialize((C2728a) this, true);
    }
}
