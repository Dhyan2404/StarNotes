package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.FileMemberActionIndividualResult;
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
public class FileMemberActionResult {
    protected final MemberSelector member;
    protected final FileMemberActionIndividualResult result;

    /* renamed from: com.dropbox.core.v2.sharing.FileMemberActionResult$a */
    /* loaded from: classes4.dex */
    public static class C2823a extends StructSerializer<FileMemberActionResult> {

        /* renamed from: b */
        public static final C2823a f17725b = new C2823a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FileMemberActionResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            FileMemberActionIndividualResult fileMemberActionIndividualResult = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("member".equals(currentName)) {
                    memberSelector = MemberSelector.Serializer.INSTANCE.deserialize(jsonParser);
                } else if (Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING.equals(currentName)) {
                    fileMemberActionIndividualResult = FileMemberActionIndividualResult.C2822b.f17724b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (memberSelector == null) {
                throw new JsonParseException(jsonParser, "Required field \"member\" missing.");
            }
            if (fileMemberActionIndividualResult == null) {
                throw new JsonParseException(jsonParser, "Required field \"result\" missing.");
            }
            FileMemberActionResult fileMemberActionResult = new FileMemberActionResult(memberSelector, fileMemberActionIndividualResult);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(fileMemberActionResult, fileMemberActionResult.toStringMultiline());
            return fileMemberActionResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FileMemberActionResult fileMemberActionResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("member");
            MemberSelector.Serializer.INSTANCE.serialize(fileMemberActionResult.member, jsonGenerator);
            jsonGenerator.writeFieldName(Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING);
            FileMemberActionIndividualResult.C2822b.f17724b.serialize(fileMemberActionResult.result, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public FileMemberActionResult(MemberSelector memberSelector, FileMemberActionIndividualResult fileMemberActionIndividualResult) {
        if (memberSelector == null) {
            throw new IllegalArgumentException("Required value for 'member' is null");
        }
        this.member = memberSelector;
        if (fileMemberActionIndividualResult == null) {
            throw new IllegalArgumentException("Required value for 'result' is null");
        }
        this.result = fileMemberActionIndividualResult;
    }

    public boolean equals(Object obj) {
        FileMemberActionIndividualResult fileMemberActionIndividualResult;
        FileMemberActionIndividualResult fileMemberActionIndividualResult2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        FileMemberActionResult fileMemberActionResult = (FileMemberActionResult) obj;
        MemberSelector memberSelector = this.member;
        MemberSelector memberSelector2 = fileMemberActionResult.member;
        return (memberSelector == memberSelector2 || memberSelector.equals(memberSelector2)) && ((fileMemberActionIndividualResult = this.result) == (fileMemberActionIndividualResult2 = fileMemberActionResult.result) || fileMemberActionIndividualResult.equals(fileMemberActionIndividualResult2));
    }

    public MemberSelector getMember() {
        return this.member;
    }

    public FileMemberActionIndividualResult getResult() {
        return this.result;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.member, this.result});
    }

    public String toString() {
        return C2823a.f17725b.serialize((C2823a) this, false);
    }

    public String toStringMultiline() {
        return C2823a.f17725b.serialize((C2823a) this, true);
    }
}
