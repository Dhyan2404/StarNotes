package com.dropbox.core.p006v2.clouddocs;

import com.dropbox.core.p006v2.clouddocs.ContentPurpose;
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
import com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class Content {
    protected final String contentKey;
    protected final ContentPurpose purpose;

    /* renamed from: com.dropbox.core.v2.clouddocs.Content$a */
    /* loaded from: classes4.dex */
    public static class C2387a extends StructSerializer<Content> {

        /* renamed from: b */
        public static final C2387a f16830b = new C2387a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Content deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            ContentPurpose contentPurpose = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            String str2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if (AccountVerifyPurpose.KEY_PURPOSE.equals(currentName)) {
                    contentPurpose = ContentPurpose.C2389b.f16832b.deserialize(jsonParser);
                } else if ("content_key".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (contentPurpose == null) {
                throw new JsonParseException(jsonParser, "Required field \"purpose\" missing.");
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"content_key\" missing.");
            }
            Content content = new Content(contentPurpose, str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(content, content.toStringMultiline());
            return content;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(Content content, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName(AccountVerifyPurpose.KEY_PURPOSE);
            ContentPurpose.C2389b.f16832b.serialize(content.purpose, jsonGenerator);
            jsonGenerator.writeFieldName("content_key");
            StoneSerializers.string().serialize((StoneSerializer<String>) content.contentKey, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public Content(ContentPurpose contentPurpose, String str) {
        if (contentPurpose == null) {
            throw new IllegalArgumentException("Required value for 'purpose' is null");
        }
        this.purpose = contentPurpose;
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'contentKey' is null");
        }
        this.contentKey = str;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        Content content = (Content) obj;
        ContentPurpose contentPurpose = this.purpose;
        ContentPurpose contentPurpose2 = content.purpose;
        return (contentPurpose == contentPurpose2 || contentPurpose.equals(contentPurpose2)) && ((str = this.contentKey) == (str2 = content.contentKey) || str.equals(str2));
    }

    public String getContentKey() {
        return this.contentKey;
    }

    public ContentPurpose getPurpose() {
        return this.purpose;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.purpose, this.contentKey});
    }

    public String toString() {
        return C2387a.f16830b.serialize((C2387a) this, false);
    }

    public String toStringMultiline() {
        return C2387a.f16830b.serialize((C2387a) this, true);
    }
}
