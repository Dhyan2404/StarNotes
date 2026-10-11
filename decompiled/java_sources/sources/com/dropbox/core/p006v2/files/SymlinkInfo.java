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
public class SymlinkInfo {
    protected final String target;

    /* renamed from: com.dropbox.core.v2.files.SymlinkInfo$a */
    /* loaded from: classes4.dex */
    public static class C2661a extends StructSerializer<SymlinkInfo> {

        /* renamed from: b */
        public static final C2661a f17409b = new C2661a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SymlinkInfo deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("target".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"target\" missing.");
            }
            SymlinkInfo symlinkInfo = new SymlinkInfo(str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(symlinkInfo, symlinkInfo.toStringMultiline());
            return symlinkInfo;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SymlinkInfo symlinkInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("target");
            StoneSerializers.string().serialize((StoneSerializer<String>) symlinkInfo.target, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SymlinkInfo(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'target' is null");
        }
        this.target = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.target;
        String str2 = ((SymlinkInfo) obj).target;
        return str == str2 || str.equals(str2);
    }

    public String getTarget() {
        return this.target;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.target});
    }

    public String toString() {
        return C2661a.f17409b.serialize((C2661a) this, false);
    }

    public String toStringMultiline() {
        return C2661a.f17409b.serialize((C2661a) this, true);
    }
}
