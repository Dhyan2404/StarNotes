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
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class MinimalFileLinkMetadata {

    /* renamed from: id */
    protected final String f17269id;
    protected final String path;
    protected final String rev;
    protected final String url;

    /* loaded from: classes4.dex */
    public static class Builder {

        /* renamed from: id */
        protected String f17270id;
        protected String path;
        protected final String rev;
        protected final String url;

        public Builder(String str, String str2) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'url' is null");
            }
            this.url = str;
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'rev' is null");
            }
            if (str2.length() < 9) {
                throw new IllegalArgumentException("String 'rev' is shorter than 9");
            }
            if (!Pattern.matches("[0-9a-f]+", str2)) {
                throw new IllegalArgumentException("String 'rev' does not match pattern");
            }
            this.rev = str2;
            this.f17270id = null;
            this.path = null;
        }

        public MinimalFileLinkMetadata build() {
            return new MinimalFileLinkMetadata(this.url, this.rev, this.f17270id, this.path);
        }

        public Builder withId(String str) {
            if (str != null && str.length() < 1) {
                throw new IllegalArgumentException("String 'id' is shorter than 1");
            }
            this.f17270id = str;
            return this;
        }

        public Builder withPath(String str) {
            this.path = str;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.files.MinimalFileLinkMetadata$a */
    /* loaded from: classes4.dex */
    public static class C2599a extends StructSerializer<MinimalFileLinkMetadata> {

        /* renamed from: b */
        public static final C2599a f17271b = new C2599a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MinimalFileLinkMetadata deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            String str5 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("url".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("rev".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("id".equals(currentName)) {
                    str4 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("path".equals(currentName)) {
                    str5 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"url\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"rev\" missing.");
            }
            MinimalFileLinkMetadata minimalFileLinkMetadata = new MinimalFileLinkMetadata(str2, str3, str4, str5);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(minimalFileLinkMetadata, minimalFileLinkMetadata.toStringMultiline());
            return minimalFileLinkMetadata;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MinimalFileLinkMetadata minimalFileLinkMetadata, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("url");
            StoneSerializers.string().serialize((StoneSerializer<String>) minimalFileLinkMetadata.url, jsonGenerator);
            jsonGenerator.writeFieldName("rev");
            StoneSerializers.string().serialize((StoneSerializer<String>) minimalFileLinkMetadata.rev, jsonGenerator);
            if (minimalFileLinkMetadata.f17269id != null) {
                jsonGenerator.writeFieldName("id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) minimalFileLinkMetadata.f17269id, jsonGenerator);
            }
            if (minimalFileLinkMetadata.path != null) {
                jsonGenerator.writeFieldName("path");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) minimalFileLinkMetadata.path, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public MinimalFileLinkMetadata(String str, String str2, String str3, String str4) {
        if (str != null) {
            this.url = str;
            if (str3 != null && str3.length() < 1) {
                throw new IllegalArgumentException("String 'id' is shorter than 1");
            }
            this.f17269id = str3;
            this.path = str4;
            if (str2 != null) {
                if (str2.length() >= 9) {
                    if (Pattern.matches("[0-9a-f]+", str2)) {
                        this.rev = str2;
                        return;
                    }
                    throw new IllegalArgumentException("String 'rev' does not match pattern");
                }
                throw new IllegalArgumentException("String 'rev' is shorter than 9");
            }
            throw new IllegalArgumentException("Required value for 'rev' is null");
        }
        throw new IllegalArgumentException("Required value for 'url' is null");
    }

    public static Builder newBuilder(String str, String str2) {
        return new Builder(str, str2);
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        String str3;
        String str4;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        MinimalFileLinkMetadata minimalFileLinkMetadata = (MinimalFileLinkMetadata) obj;
        String str5 = this.url;
        String str6 = minimalFileLinkMetadata.url;
        if ((str5 == str6 || str5.equals(str6)) && (((str = this.rev) == (str2 = minimalFileLinkMetadata.rev) || str.equals(str2)) && ((str3 = this.f17269id) == (str4 = minimalFileLinkMetadata.f17269id) || (str3 != null && str3.equals(str4))))) {
            String str7 = this.path;
            String str8 = minimalFileLinkMetadata.path;
            if (str7 == str8) {
                return true;
            }
            if (str7 != null && str7.equals(str8)) {
                return true;
            }
        }
        return false;
    }

    public String getId() {
        return this.f17269id;
    }

    public String getPath() {
        return this.path;
    }

    public String getRev() {
        return this.rev;
    }

    public String getUrl() {
        return this.url;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.url, this.f17269id, this.path, this.rev});
    }

    public String toString() {
        return C2599a.f17271b.serialize((C2599a) this, false);
    }

    public String toStringMultiline() {
        return C2599a.f17271b.serialize((C2599a) this, true);
    }

    public MinimalFileLinkMetadata(String str, String str2) {
        this(str, str2, null, null);
    }
}
