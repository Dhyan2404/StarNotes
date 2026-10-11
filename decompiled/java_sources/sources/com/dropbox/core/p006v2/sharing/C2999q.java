package com.dropbox.core.p006v2.sharing;

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

/* renamed from: com.dropbox.core.v2.sharing.q */
/* loaded from: classes4.dex */
public class C2999q {

    /* renamed from: a */
    public final String f18078a;

    /* renamed from: b */
    public final MemberSelector f18079b;

    /* renamed from: c */
    public final boolean f18080c;

    /* renamed from: com.dropbox.core.v2.sharing.q$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C2999q> {

        /* renamed from: b */
        public static final a f18081b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C2999q deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Boolean bool = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("shared_folder_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("member".equals(currentName)) {
                    memberSelector = MemberSelector.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("leave_a_copy".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"shared_folder_id\" missing.");
            }
            if (memberSelector == null) {
                throw new JsonParseException(jsonParser, "Required field \"member\" missing.");
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"leave_a_copy\" missing.");
            }
            C2999q c2999q = new C2999q(str2, memberSelector, bool.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c2999q, c2999q.m12068d());
            return c2999q;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C2999q c2999q, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("shared_folder_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) c2999q.f18078a, jsonGenerator);
            jsonGenerator.writeFieldName("member");
            MemberSelector.Serializer.INSTANCE.serialize(c2999q.f18079b, jsonGenerator);
            jsonGenerator.writeFieldName("leave_a_copy");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(c2999q.f18080c), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C2999q(String str, MemberSelector memberSelector, boolean z) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
        }
        if (!Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
            throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
        }
        this.f18078a = str;
        if (memberSelector == null) {
            throw new IllegalArgumentException("Required value for 'member' is null");
        }
        this.f18079b = memberSelector;
        this.f18080c = z;
    }

    /* renamed from: a */
    public boolean m12065a() {
        return this.f18080c;
    }

    /* renamed from: b */
    public MemberSelector m12066b() {
        return this.f18079b;
    }

    /* renamed from: c */
    public String m12067c() {
        return this.f18078a;
    }

    /* renamed from: d */
    public String m12068d() {
        return a.f18081b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        MemberSelector memberSelector;
        MemberSelector memberSelector2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C2999q c2999q = (C2999q) obj;
        String str = this.f18078a;
        String str2 = c2999q.f18078a;
        return (str == str2 || str.equals(str2)) && ((memberSelector = this.f18079b) == (memberSelector2 = c2999q.f18079b) || memberSelector.equals(memberSelector2)) && this.f18080c == c2999q.f18080c;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18078a, this.f18079b, Boolean.valueOf(this.f18080c)});
    }

    public String toString() {
        return a.f18081b.serialize((a) this, false);
    }
}
