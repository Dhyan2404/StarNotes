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
public class SharedFolderCreateDetails {
    protected final String targetNsId;

    /* renamed from: com.dropbox.core.v2.teamlog.SharedFolderCreateDetails$a */
    /* loaded from: classes4.dex */
    public static class C4084a extends StructSerializer<SharedFolderCreateDetails> {

        /* renamed from: b */
        public static final C4084a f20360b = new C4084a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedFolderCreateDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("target_ns_id".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            SharedFolderCreateDetails sharedFolderCreateDetails = new SharedFolderCreateDetails(str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedFolderCreateDetails, sharedFolderCreateDetails.toStringMultiline());
            return sharedFolderCreateDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedFolderCreateDetails sharedFolderCreateDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (sharedFolderCreateDetails.targetNsId != null) {
                jsonGenerator.writeFieldName("target_ns_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) sharedFolderCreateDetails.targetNsId, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedFolderCreateDetails(String str) {
        this.targetNsId = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.targetNsId;
        String str2 = ((SharedFolderCreateDetails) obj).targetNsId;
        if (str != str2) {
            return str != null && str.equals(str2);
        }
        return true;
    }

    public String getTargetNsId() {
        return this.targetNsId;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.targetNsId});
    }

    public String toString() {
        return C4084a.f20360b.serialize((C4084a) this, false);
    }

    public String toStringMultiline() {
        return C4084a.f20360b.serialize((C4084a) this, true);
    }

    public SharedFolderCreateDetails() {
        this(null);
    }
}
