package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.ListFileMembersIndividualResult;
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
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class ListFileMembersBatchResult {
    protected final String file;
    protected final ListFileMembersIndividualResult result;

    /* renamed from: com.dropbox.core.v2.sharing.ListFileMembersBatchResult$a */
    /* loaded from: classes4.dex */
    public static class C2867a extends StructSerializer<ListFileMembersBatchResult> {

        /* renamed from: b */
        public static final C2867a f17803b = new C2867a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListFileMembersBatchResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            String str2 = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            ListFileMembersIndividualResult listFileMembersIndividualResult = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("file".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if (Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING.equals(currentName)) {
                    listFileMembersIndividualResult = ListFileMembersIndividualResult.C2874b.f17821b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"file\" missing.");
            }
            if (listFileMembersIndividualResult == null) {
                throw new JsonParseException(jsonParser, "Required field \"result\" missing.");
            }
            ListFileMembersBatchResult listFileMembersBatchResult = new ListFileMembersBatchResult(str2, listFileMembersIndividualResult);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(listFileMembersBatchResult, listFileMembersBatchResult.toStringMultiline());
            return listFileMembersBatchResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListFileMembersBatchResult listFileMembersBatchResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("file");
            StoneSerializers.string().serialize((StoneSerializer<String>) listFileMembersBatchResult.file, jsonGenerator);
            jsonGenerator.writeFieldName(Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING);
            ListFileMembersIndividualResult.C2874b.f17821b.serialize(listFileMembersBatchResult.result, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ListFileMembersBatchResult(String str, ListFileMembersIndividualResult listFileMembersIndividualResult) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'file' is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String 'file' is shorter than 1");
        }
        if (!Pattern.matches("((/|id:).*|nspath:[0-9]+:.*)|ns:[0-9]+(/.*)?", str)) {
            throw new IllegalArgumentException("String 'file' does not match pattern");
        }
        this.file = str;
        if (listFileMembersIndividualResult == null) {
            throw new IllegalArgumentException("Required value for 'result' is null");
        }
        this.result = listFileMembersIndividualResult;
    }

    public boolean equals(Object obj) {
        ListFileMembersIndividualResult listFileMembersIndividualResult;
        ListFileMembersIndividualResult listFileMembersIndividualResult2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ListFileMembersBatchResult listFileMembersBatchResult = (ListFileMembersBatchResult) obj;
        String str = this.file;
        String str2 = listFileMembersBatchResult.file;
        return (str == str2 || str.equals(str2)) && ((listFileMembersIndividualResult = this.result) == (listFileMembersIndividualResult2 = listFileMembersBatchResult.result) || listFileMembersIndividualResult.equals(listFileMembersIndividualResult2));
    }

    public String getFile() {
        return this.file;
    }

    public ListFileMembersIndividualResult getResult() {
        return this.result;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.file, this.result});
    }

    public String toString() {
        return C2867a.f17803b.serialize((C2867a) this, false);
    }

    public String toStringMultiline() {
        return C2867a.f17803b.serialize((C2867a) this, true);
    }
}
