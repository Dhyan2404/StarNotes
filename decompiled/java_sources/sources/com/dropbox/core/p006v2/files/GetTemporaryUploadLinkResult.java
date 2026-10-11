package com.dropbox.core.p006v2.files;

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

/* loaded from: classes4.dex */
public class GetTemporaryUploadLinkResult {
    protected final String link;

    /* renamed from: com.dropbox.core.v2.files.GetTemporaryUploadLinkResult$a */
    /* loaded from: classes4.dex */
    public static class C2559a extends StructSerializer<GetTemporaryUploadLinkResult> {

        /* renamed from: b */
        public static final C2559a f17185b = new C2559a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GetTemporaryUploadLinkResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("link".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"link\" missing.");
            }
            GetTemporaryUploadLinkResult getTemporaryUploadLinkResult = new GetTemporaryUploadLinkResult(str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(getTemporaryUploadLinkResult, getTemporaryUploadLinkResult.toStringMultiline());
            return getTemporaryUploadLinkResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GetTemporaryUploadLinkResult getTemporaryUploadLinkResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("link");
            StoneSerializers.string().serialize((StoneSerializer<String>) getTemporaryUploadLinkResult.link, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public GetTemporaryUploadLinkResult(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'link' is null");
        }
        this.link = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.link;
        String str2 = ((GetTemporaryUploadLinkResult) obj).link;
        return str == str2 || str.equals(str2);
    }

    public String getLink() {
        return this.link;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.link});
    }

    public String toString() {
        return C2559a.f17185b.serialize((C2559a) this, false);
    }

    public String toStringMultiline() {
        return C2559a.f17185b.serialize((C2559a) this, true);
    }
}
