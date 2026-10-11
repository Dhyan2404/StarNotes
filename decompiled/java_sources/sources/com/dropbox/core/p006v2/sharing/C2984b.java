package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.SharedLinkSettings;
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

/* renamed from: com.dropbox.core.v2.sharing.b */
/* loaded from: classes4.dex */
public class C2984b {

    /* renamed from: a */
    public final String f18039a;

    /* renamed from: b */
    public final SharedLinkSettings f18040b;

    /* renamed from: com.dropbox.core.v2.sharing.b$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C2984b> {

        /* renamed from: b */
        public static final a f18041b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C2984b deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            SharedLinkSettings sharedLinkSettings = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("path".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("settings".equals(currentName)) {
                    sharedLinkSettings = (SharedLinkSettings) StoneSerializers.nullableStruct(SharedLinkSettings.C2957a.f17985b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"path\" missing.");
            }
            C2984b c2984b = new C2984b(str2, sharedLinkSettings);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c2984b, c2984b.m11998c());
            return c2984b;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C2984b c2984b, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("path");
            StoneSerializers.string().serialize((StoneSerializer<String>) c2984b.f18039a, jsonGenerator);
            if (c2984b.f18040b != null) {
                jsonGenerator.writeFieldName("settings");
                StoneSerializers.nullableStruct(SharedLinkSettings.C2957a.f17985b).serialize((StructSerializer) c2984b.f18040b, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C2984b(String str, SharedLinkSettings sharedLinkSettings) {
        if (str != null) {
            if (Pattern.matches("(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)", str)) {
                this.f18039a = str;
                this.f18040b = sharedLinkSettings;
                return;
            }
            throw new IllegalArgumentException("String 'path' does not match pattern");
        }
        throw new IllegalArgumentException("Required value for 'path' is null");
    }

    /* renamed from: a */
    public String m11996a() {
        return this.f18039a;
    }

    /* renamed from: b */
    public SharedLinkSettings m11997b() {
        return this.f18040b;
    }

    /* renamed from: c */
    public String m11998c() {
        return a.f18041b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C2984b c2984b = (C2984b) obj;
        String str = this.f18039a;
        String str2 = c2984b.f18039a;
        if (str == str2 || str.equals(str2)) {
            SharedLinkSettings sharedLinkSettings = this.f18040b;
            SharedLinkSettings sharedLinkSettings2 = c2984b.f18040b;
            if (sharedLinkSettings == sharedLinkSettings2) {
                return true;
            }
            if (sharedLinkSettings != null && sharedLinkSettings.equals(sharedLinkSettings2)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18039a, this.f18040b});
    }

    public String toString() {
        return a.f18041b.serialize((a) this, false);
    }

    public C2984b(String str) {
        this(str, null);
    }
}
