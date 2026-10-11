package com.dropbox.core.p006v2.account;

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
public class SetProfilePhotoResult {
    protected final String profilePhotoUrl;

    /* renamed from: com.dropbox.core.v2.account.SetProfilePhotoResult$a */
    /* loaded from: classes4.dex */
    public static class C2368a extends StructSerializer<SetProfilePhotoResult> {

        /* renamed from: b */
        public static final C2368a f16793b = new C2368a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SetProfilePhotoResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("profile_photo_url".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"profile_photo_url\" missing.");
            }
            SetProfilePhotoResult setProfilePhotoResult = new SetProfilePhotoResult(str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(setProfilePhotoResult, setProfilePhotoResult.toStringMultiline());
            return setProfilePhotoResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SetProfilePhotoResult setProfilePhotoResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("profile_photo_url");
            StoneSerializers.string().serialize((StoneSerializer<String>) setProfilePhotoResult.profilePhotoUrl, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SetProfilePhotoResult(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'profilePhotoUrl' is null");
        }
        this.profilePhotoUrl = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.profilePhotoUrl;
        String str2 = ((SetProfilePhotoResult) obj).profilePhotoUrl;
        return str == str2 || str.equals(str2);
    }

    public String getProfilePhotoUrl() {
        return this.profilePhotoUrl;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.profilePhotoUrl});
    }

    public String toString() {
        return C2368a.f16793b.serialize((C2368a) this, false);
    }

    public String toStringMultiline() {
        return C2368a.f16793b.serialize((C2368a) this, true);
    }
}
