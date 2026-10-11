package com.dropbox.core.p006v2.check;

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

/* loaded from: classes4.dex */
public class EchoResult {
    protected final String result;

    /* renamed from: com.dropbox.core.v2.check.EchoResult$a */
    /* loaded from: classes4.dex */
    public static class C2383a extends StructSerializer<EchoResult> {

        /* renamed from: b */
        public static final C2383a f16825b = new C2383a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public EchoResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            String str2 = "\"\"";
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if (Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING.equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            EchoResult echoResult = new EchoResult(str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(echoResult, echoResult.toStringMultiline());
            return echoResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(EchoResult echoResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName(Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING);
            StoneSerializers.string().serialize((StoneSerializer<String>) echoResult.result, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public EchoResult(String str) {
        if (str != null) {
            this.result = str;
            return;
        }
        throw new IllegalArgumentException("Required value for 'result' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.result;
        String str2 = ((EchoResult) obj).result;
        return str == str2 || str.equals(str2);
    }

    public String getResult() {
        return this.result;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.result});
    }

    public String toString() {
        return C2383a.f16825b.serialize((C2383a) this, false);
    }

    public String toStringMultiline() {
        return C2383a.f16825b.serialize((C2383a) this, true);
    }

    public EchoResult() {
        this("\"\"");
    }
}
