package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.Metadata;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import org.apache.http.cookie.ClientCookie;

/* loaded from: classes4.dex */
public class GetCopyReferenceResult {
    protected final String copyReference;
    protected final Date expires;
    protected final Metadata metadata;

    /* renamed from: com.dropbox.core.v2.files.GetCopyReferenceResult$a */
    /* loaded from: classes4.dex */
    public static class C2552a extends StructSerializer<GetCopyReferenceResult> {

        /* renamed from: b */
        public static final C2552a f17164b = new C2552a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GetCopyReferenceResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Metadata metadata = null;
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
            Date date = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("metadata".equals(currentName)) {
                    metadata = Metadata.C2596a.f17264b.deserialize(jsonParser);
                } else if ("copy_reference".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if (ClientCookie.EXPIRES_ATTR.equals(currentName)) {
                    date = StoneSerializers.timestamp().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (metadata == null) {
                throw new JsonParseException(jsonParser, "Required field \"metadata\" missing.");
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"copy_reference\" missing.");
            }
            if (date == null) {
                throw new JsonParseException(jsonParser, "Required field \"expires\" missing.");
            }
            GetCopyReferenceResult getCopyReferenceResult = new GetCopyReferenceResult(metadata, str2, date);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(getCopyReferenceResult, getCopyReferenceResult.toStringMultiline());
            return getCopyReferenceResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GetCopyReferenceResult getCopyReferenceResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("metadata");
            Metadata.C2596a.f17264b.serialize((Metadata.C2596a) getCopyReferenceResult.metadata, jsonGenerator);
            jsonGenerator.writeFieldName("copy_reference");
            StoneSerializers.string().serialize((StoneSerializer<String>) getCopyReferenceResult.copyReference, jsonGenerator);
            jsonGenerator.writeFieldName(ClientCookie.EXPIRES_ATTR);
            StoneSerializers.timestamp().serialize((StoneSerializer<Date>) getCopyReferenceResult.expires, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public GetCopyReferenceResult(Metadata metadata, String str, Date date) {
        if (metadata == null) {
            throw new IllegalArgumentException("Required value for 'metadata' is null");
        }
        this.metadata = metadata;
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'copyReference' is null");
        }
        this.copyReference = str;
        if (date == null) {
            throw new IllegalArgumentException("Required value for 'expires' is null");
        }
        this.expires = LangUtil.truncateMillis(date);
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        Date date;
        Date date2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        GetCopyReferenceResult getCopyReferenceResult = (GetCopyReferenceResult) obj;
        Metadata metadata = this.metadata;
        Metadata metadata2 = getCopyReferenceResult.metadata;
        return (metadata == metadata2 || metadata.equals(metadata2)) && ((str = this.copyReference) == (str2 = getCopyReferenceResult.copyReference) || str.equals(str2)) && ((date = this.expires) == (date2 = getCopyReferenceResult.expires) || date.equals(date2));
    }

    public String getCopyReference() {
        return this.copyReference;
    }

    public Date getExpires() {
        return this.expires;
    }

    public Metadata getMetadata() {
        return this.metadata;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.metadata, this.copyReference, this.expires});
    }

    public String toString() {
        return C2552a.f17164b.serialize((C2552a) this, false);
    }

    public String toStringMultiline() {
        return C2552a.f17164b.serialize((C2552a) this, true);
    }
}
