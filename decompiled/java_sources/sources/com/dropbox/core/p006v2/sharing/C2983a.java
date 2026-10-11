package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.AccessLevel;
import com.dropbox.core.p006v2.sharing.MemberSelector;
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

/* renamed from: com.dropbox.core.v2.sharing.a */
/* loaded from: classes4.dex */
public class C2983a {

    /* renamed from: a */
    public final String f18035a;

    /* renamed from: b */
    public final MemberSelector f18036b;

    /* renamed from: c */
    public final AccessLevel f18037c;

    /* renamed from: com.dropbox.core.v2.sharing.a$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C2983a> {

        /* renamed from: b */
        public static final a f18038b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C2983a deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            MemberSelector memberSelector = null;
            AccessLevel accessLevel = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("file".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("member".equals(currentName)) {
                    memberSelector = MemberSelector.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("access_level".equals(currentName)) {
                    accessLevel = AccessLevel.Serializer.INSTANCE.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"file\" missing.");
            }
            if (memberSelector == null) {
                throw new JsonParseException(jsonParser, "Required field \"member\" missing.");
            }
            if (accessLevel == null) {
                throw new JsonParseException(jsonParser, "Required field \"access_level\" missing.");
            }
            C2983a c2983a = new C2983a(str2, memberSelector, accessLevel);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c2983a, c2983a.mo11993d());
            return c2983a;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C2983a c2983a, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("file");
            StoneSerializers.string().serialize((StoneSerializer<String>) c2983a.f18035a, jsonGenerator);
            jsonGenerator.writeFieldName("member");
            MemberSelector.Serializer.INSTANCE.serialize(c2983a.f18036b, jsonGenerator);
            jsonGenerator.writeFieldName("access_level");
            AccessLevel.Serializer.INSTANCE.serialize(c2983a.f18037c, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C2983a(String str, MemberSelector memberSelector, AccessLevel accessLevel) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'file' is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String 'file' is shorter than 1");
        }
        if (!Pattern.matches("((/|id:).*|nspath:[0-9]+:.*)|ns:[0-9]+(/.*)?", str)) {
            throw new IllegalArgumentException("String 'file' does not match pattern");
        }
        this.f18035a = str;
        if (memberSelector == null) {
            throw new IllegalArgumentException("Required value for 'member' is null");
        }
        this.f18036b = memberSelector;
        if (accessLevel == null) {
            throw new IllegalArgumentException("Required value for 'accessLevel' is null");
        }
        this.f18037c = accessLevel;
    }

    /* renamed from: a */
    public AccessLevel mo11990a() {
        return this.f18037c;
    }

    /* renamed from: b */
    public String mo11991b() {
        return this.f18035a;
    }

    /* renamed from: c */
    public MemberSelector mo11992c() {
        return this.f18036b;
    }

    /* renamed from: d */
    public String mo11993d() {
        return a.f18038b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        MemberSelector memberSelector;
        MemberSelector memberSelector2;
        AccessLevel accessLevel;
        AccessLevel accessLevel2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C2983a c2983a = (C2983a) obj;
        String str = this.f18035a;
        String str2 = c2983a.f18035a;
        return (str == str2 || str.equals(str2)) && ((memberSelector = this.f18036b) == (memberSelector2 = c2983a.f18036b) || memberSelector.equals(memberSelector2)) && ((accessLevel = this.f18037c) == (accessLevel2 = c2983a.f18037c) || accessLevel.equals(accessLevel2));
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18035a, this.f18036b, this.f18037c});
    }

    public String toString() {
        return a.f18038b.serialize((a) this, false);
    }
}
