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

/* renamed from: com.dropbox.core.v2.sharing.l */
/* loaded from: classes4.dex */
public class C2994l {

    /* renamed from: a */
    public final String f18064a;

    /* renamed from: b */
    public final SharedLinkSettings f18065b;

    /* renamed from: c */
    public final boolean f18066c;

    /* renamed from: com.dropbox.core.v2.sharing.l$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C2994l> {

        /* renamed from: b */
        public static final a f18067b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C2994l deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Boolean bool = Boolean.FALSE;
            SharedLinkSettings sharedLinkSettings = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("url".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("settings".equals(currentName)) {
                    sharedLinkSettings = SharedLinkSettings.C2957a.f17985b.deserialize(jsonParser);
                } else if ("remove_expiration".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"url\" missing.");
            }
            if (sharedLinkSettings == null) {
                throw new JsonParseException(jsonParser, "Required field \"settings\" missing.");
            }
            C2994l c2994l = new C2994l(str2, sharedLinkSettings, bool.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c2994l, c2994l.m12044d());
            return c2994l;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C2994l c2994l, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("url");
            StoneSerializers.string().serialize((StoneSerializer<String>) c2994l.f18064a, jsonGenerator);
            jsonGenerator.writeFieldName("settings");
            SharedLinkSettings.C2957a.f17985b.serialize((SharedLinkSettings.C2957a) c2994l.f18065b, jsonGenerator);
            jsonGenerator.writeFieldName("remove_expiration");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(c2994l.f18066c), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C2994l(String str, SharedLinkSettings sharedLinkSettings, boolean z) {
        if (str != null) {
            this.f18064a = str;
            if (sharedLinkSettings != null) {
                this.f18065b = sharedLinkSettings;
                this.f18066c = z;
                return;
            }
            throw new IllegalArgumentException("Required value for 'settings' is null");
        }
        throw new IllegalArgumentException("Required value for 'url' is null");
    }

    /* renamed from: a */
    public boolean m12041a() {
        return this.f18066c;
    }

    /* renamed from: b */
    public SharedLinkSettings m12042b() {
        return this.f18065b;
    }

    /* renamed from: c */
    public String m12043c() {
        return this.f18064a;
    }

    /* renamed from: d */
    public String m12044d() {
        return a.f18067b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        SharedLinkSettings sharedLinkSettings;
        SharedLinkSettings sharedLinkSettings2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C2994l c2994l = (C2994l) obj;
        String str = this.f18064a;
        String str2 = c2994l.f18064a;
        return (str == str2 || str.equals(str2)) && ((sharedLinkSettings = this.f18065b) == (sharedLinkSettings2 = c2994l.f18065b) || sharedLinkSettings.equals(sharedLinkSettings2)) && this.f18066c == c2994l.f18066c;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18064a, this.f18065b, Boolean.valueOf(this.f18066c)});
    }

    public String toString() {
        return a.f18067b.serialize((a) this, false);
    }

    public C2994l(String str, SharedLinkSettings sharedLinkSettings) {
        this(str, sharedLinkSettings, false);
    }
}
