package com.dropbox.core.p006v2.sharing;

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
public class GetSharedLinkMetadataArg {

    /* renamed from: a */
    public final String f17752a;

    /* renamed from: b */
    public final String f17753b;

    /* renamed from: c */
    public final String f17754c;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected String linkPassword;
        protected String path;
        protected final String url;

        public Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'url' is null");
            }
            this.url = str;
            this.path = null;
            this.linkPassword = null;
        }

        public GetSharedLinkMetadataArg build() {
            return new GetSharedLinkMetadataArg(this.url, this.path, this.linkPassword);
        }

        public Builder withLinkPassword(String str) {
            this.linkPassword = str;
            return this;
        }

        public Builder withPath(String str) {
            if (str != null && !Pattern.matches("/(.|[\\r\\n])*", str)) {
                throw new IllegalArgumentException("String 'path' does not match pattern");
            }
            this.path = str;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.GetSharedLinkMetadataArg$a */
    /* loaded from: classes4.dex */
    public static class C2839a extends StructSerializer<GetSharedLinkMetadataArg> {

        /* renamed from: b */
        public static final C2839a f17755b = new C2839a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GetSharedLinkMetadataArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                } else if ("link_password".equals(currentName)) {
                    str4 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"url\" missing.");
            }
            GetSharedLinkMetadataArg getSharedLinkMetadataArg = new GetSharedLinkMetadataArg(str2, str3, str4);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(getSharedLinkMetadataArg, getSharedLinkMetadataArg.m11622e());
            return getSharedLinkMetadataArg;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GetSharedLinkMetadataArg getSharedLinkMetadataArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("url");
            StoneSerializers.string().serialize((StoneSerializer<String>) getSharedLinkMetadataArg.f17752a, jsonGenerator);
            if (getSharedLinkMetadataArg.f17753b != null) {
                jsonGenerator.writeFieldName("path");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) getSharedLinkMetadataArg.f17753b, jsonGenerator);
            }
            if (getSharedLinkMetadataArg.f17754c != null) {
                jsonGenerator.writeFieldName("link_password");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) getSharedLinkMetadataArg.f17754c, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public GetSharedLinkMetadataArg(String str, String str2, String str3) {
        if (str != null) {
            this.f17752a = str;
            if (str2 != null && !Pattern.matches("/(.|[\\r\\n])*", str2)) {
                throw new IllegalArgumentException("String 'path' does not match pattern");
            }
            this.f17753b = str2;
            this.f17754c = str3;
            return;
        }
        throw new IllegalArgumentException("Required value for 'url' is null");
    }

    /* renamed from: d */
    public static Builder m11618d(String str) {
        return new Builder(str);
    }

    /* renamed from: a */
    public String m11619a() {
        return this.f17754c;
    }

    /* renamed from: b */
    public String m11620b() {
        return this.f17753b;
    }

    /* renamed from: c */
    public String m11621c() {
        return this.f17752a;
    }

    /* renamed from: e */
    public String m11622e() {
        return C2839a.f17755b.serialize((C2839a) this, true);
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
        GetSharedLinkMetadataArg getSharedLinkMetadataArg = (GetSharedLinkMetadataArg) obj;
        String str3 = this.f17752a;
        String str4 = getSharedLinkMetadataArg.f17752a;
        if ((str3 == str4 || str3.equals(str4)) && ((str = this.f17753b) == (str2 = getSharedLinkMetadataArg.f17753b) || (str != null && str.equals(str2)))) {
            String str5 = this.f17754c;
            String str6 = getSharedLinkMetadataArg.f17754c;
            if (str5 == str6) {
                return true;
            }
            if (str5 != null && str5.equals(str6)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17752a, this.f17753b, this.f17754c});
    }

    public String toString() {
        return C2839a.f17755b.serialize((C2839a) this, false);
    }

    public GetSharedLinkMetadataArg(String str) {
        this(str, null, null);
    }
}
