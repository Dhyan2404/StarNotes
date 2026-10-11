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
public class SharedLinkFileInfo {
    protected final String password;
    protected final String path;
    protected final String url;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected String password;
        protected String path;
        protected final String url;

        public Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'url' is null");
            }
            this.url = str;
            this.path = null;
            this.password = null;
        }

        public SharedLinkFileInfo build() {
            return new SharedLinkFileInfo(this.url, this.path, this.password);
        }

        public Builder withPassword(String str) {
            this.password = str;
            return this;
        }

        public Builder withPath(String str) {
            this.path = str;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.files.SharedLinkFileInfo$a */
    /* loaded from: classes4.dex */
    public static class C2658a extends StructSerializer<SharedLinkFileInfo> {

        /* renamed from: b */
        public static final C2658a f17406b = new C2658a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedLinkFileInfo deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            String str3 = null;
            String str4 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("url".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("path".equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("password".equals(currentName)) {
                    str4 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"url\" missing.");
            }
            SharedLinkFileInfo sharedLinkFileInfo = new SharedLinkFileInfo(str2, str3, str4);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedLinkFileInfo, sharedLinkFileInfo.toStringMultiline());
            return sharedLinkFileInfo;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedLinkFileInfo sharedLinkFileInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("url");
            StoneSerializers.string().serialize((StoneSerializer<String>) sharedLinkFileInfo.url, jsonGenerator);
            if (sharedLinkFileInfo.path != null) {
                jsonGenerator.writeFieldName("path");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) sharedLinkFileInfo.path, jsonGenerator);
            }
            if (sharedLinkFileInfo.password != null) {
                jsonGenerator.writeFieldName("password");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) sharedLinkFileInfo.password, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedLinkFileInfo(String str, String str2, String str3) {
        if (str != null) {
            this.url = str;
            this.path = str2;
            this.password = str3;
            return;
        }
        throw new IllegalArgumentException("Required value for 'url' is null");
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
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
        SharedLinkFileInfo sharedLinkFileInfo = (SharedLinkFileInfo) obj;
        String str3 = this.url;
        String str4 = sharedLinkFileInfo.url;
        if ((str3 == str4 || str3.equals(str4)) && ((str = this.path) == (str2 = sharedLinkFileInfo.path) || (str != null && str.equals(str2)))) {
            String str5 = this.password;
            String str6 = sharedLinkFileInfo.password;
            if (str5 == str6) {
                return true;
            }
            if (str5 != null && str5.equals(str6)) {
                return true;
            }
        }
        return false;
    }

    public String getPassword() {
        return this.password;
    }

    public String getPath() {
        return this.path;
    }

    public String getUrl() {
        return this.url;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.url, this.path, this.password});
    }

    public String toString() {
        return C2658a.f17406b.serialize((C2658a) this, false);
    }

    public String toStringMultiline() {
        return C2658a.f17406b.serialize((C2658a) this, true);
    }

    public SharedLinkFileInfo(String str) {
        this(str, null, null);
    }
}
