package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.AccessInheritance;
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

/* renamed from: com.dropbox.core.v2.sharing.s */
/* loaded from: classes4.dex */
public class C3001s {

    /* renamed from: a */
    public final AccessInheritance f18084a;

    /* renamed from: b */
    public final String f18085b;

    /* renamed from: com.dropbox.core.v2.sharing.s$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C3001s> {

        /* renamed from: b */
        public static final a f18086b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C3001s deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            AccessInheritance accessInheritance = AccessInheritance.INHERIT;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("shared_folder_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("access_inheritance".equals(currentName)) {
                    accessInheritance = AccessInheritance.C2794b.f17652b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"shared_folder_id\" missing.");
            }
            C3001s c3001s = new C3001s(str2, accessInheritance);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c3001s, c3001s.m12077c());
            return c3001s;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C3001s c3001s, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("shared_folder_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) c3001s.f18085b, jsonGenerator);
            jsonGenerator.writeFieldName("access_inheritance");
            AccessInheritance.C2794b.f17652b.serialize(c3001s.f18084a, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C3001s(String str, AccessInheritance accessInheritance) {
        if (accessInheritance != null) {
            this.f18084a = accessInheritance;
            if (str != null) {
                if (Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
                    this.f18085b = str;
                    return;
                }
                throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
            }
            throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
        }
        throw new IllegalArgumentException("Required value for 'accessInheritance' is null");
    }

    /* renamed from: a */
    public AccessInheritance m12075a() {
        return this.f18084a;
    }

    /* renamed from: b */
    public String m12076b() {
        return this.f18085b;
    }

    /* renamed from: c */
    public String m12077c() {
        return a.f18086b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        AccessInheritance accessInheritance;
        AccessInheritance accessInheritance2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C3001s c3001s = (C3001s) obj;
        String str = this.f18085b;
        String str2 = c3001s.f18085b;
        return (str == str2 || str.equals(str2)) && ((accessInheritance = this.f18084a) == (accessInheritance2 = c3001s.f18084a) || accessInheritance.equals(accessInheritance2));
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18084a, this.f18085b});
    }

    public String toString() {
        return a.f18086b.serialize((a) this, false);
    }

    public C3001s(String str) {
        this(str, AccessInheritance.INHERIT);
    }
}
