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

/* loaded from: classes4.dex */
public class CollectionShareDetails {
    protected final String albumName;

    /* renamed from: com.dropbox.core.v2.teamlog.CollectionShareDetails$a */
    /* loaded from: classes4.dex */
    public static class C3395a extends StructSerializer<CollectionShareDetails> {

        /* renamed from: b */
        public static final C3395a f18782b = new C3395a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public CollectionShareDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("album_name".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"album_name\" missing.");
            }
            CollectionShareDetails collectionShareDetails = new CollectionShareDetails(str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(collectionShareDetails, collectionShareDetails.toStringMultiline());
            return collectionShareDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(CollectionShareDetails collectionShareDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("album_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) collectionShareDetails.albumName, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public CollectionShareDetails(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'albumName' is null");
        }
        this.albumName = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.albumName;
        String str2 = ((CollectionShareDetails) obj).albumName;
        return str == str2 || str.equals(str2);
    }

    public String getAlbumName() {
        return this.albumName;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.albumName});
    }

    public String toString() {
        return C3395a.f18782b.serialize((C3395a) this, false);
    }

    public String toStringMultiline() {
        return C3395a.f18782b.serialize((C3395a) this, true);
    }
}
