package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.GetFileMetadataIndividualResult;
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
public class GetFileMetadataBatchResult {
    protected final String file;
    protected final GetFileMetadataIndividualResult result;

    /* renamed from: com.dropbox.core.v2.sharing.GetFileMetadataBatchResult$a */
    /* loaded from: classes4.dex */
    public static class C2832a extends StructSerializer<GetFileMetadataBatchResult> {

        /* renamed from: b */
        public static final C2832a f17737b = new C2832a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GetFileMetadataBatchResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            GetFileMetadataIndividualResult getFileMetadataIndividualResult = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("file".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if (Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING.equals(currentName)) {
                    getFileMetadataIndividualResult = GetFileMetadataIndividualResult.C2836b.f17747b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"file\" missing.");
            }
            if (getFileMetadataIndividualResult == null) {
                throw new JsonParseException(jsonParser, "Required field \"result\" missing.");
            }
            GetFileMetadataBatchResult getFileMetadataBatchResult = new GetFileMetadataBatchResult(str2, getFileMetadataIndividualResult);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(getFileMetadataBatchResult, getFileMetadataBatchResult.toStringMultiline());
            return getFileMetadataBatchResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GetFileMetadataBatchResult getFileMetadataBatchResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("file");
            StoneSerializers.string().serialize((StoneSerializer<String>) getFileMetadataBatchResult.file, jsonGenerator);
            jsonGenerator.writeFieldName(Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING);
            GetFileMetadataIndividualResult.C2836b.f17747b.serialize(getFileMetadataBatchResult.result, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public GetFileMetadataBatchResult(String str, GetFileMetadataIndividualResult getFileMetadataIndividualResult) {
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
        if (getFileMetadataIndividualResult == null) {
            throw new IllegalArgumentException("Required value for 'result' is null");
        }
        this.result = getFileMetadataIndividualResult;
    }

    public boolean equals(Object obj) {
        GetFileMetadataIndividualResult getFileMetadataIndividualResult;
        GetFileMetadataIndividualResult getFileMetadataIndividualResult2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        GetFileMetadataBatchResult getFileMetadataBatchResult = (GetFileMetadataBatchResult) obj;
        String str = this.file;
        String str2 = getFileMetadataBatchResult.file;
        return (str == str2 || str.equals(str2)) && ((getFileMetadataIndividualResult = this.result) == (getFileMetadataIndividualResult2 = getFileMetadataBatchResult.result) || getFileMetadataIndividualResult.equals(getFileMetadataIndividualResult2));
    }

    public String getFile() {
        return this.file;
    }

    public GetFileMetadataIndividualResult getResult() {
        return this.result;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.file, this.result});
    }

    public String toString() {
        return C2832a.f17737b.serialize((C2832a) this, false);
    }

    public String toStringMultiline() {
        return C2832a.f17737b.serialize((C2832a) this, true);
    }
}
