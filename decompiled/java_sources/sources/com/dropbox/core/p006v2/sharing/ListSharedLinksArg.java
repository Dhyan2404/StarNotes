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
public class ListSharedLinksArg {

    /* renamed from: a */
    public final String f17853a;

    /* renamed from: b */
    public final String f17854b;

    /* renamed from: c */
    public final Boolean f17855c;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected String path = null;
        protected String cursor = null;
        protected Boolean directOnly = null;

        public ListSharedLinksArg build() {
            return new ListSharedLinksArg(this.path, this.cursor, this.directOnly);
        }

        public Builder withCursor(String str) {
            this.cursor = str;
            return this;
        }

        public Builder withDirectOnly(Boolean bool) {
            this.directOnly = bool;
            return this;
        }

        public Builder withPath(String str) {
            if (str != null && !Pattern.matches("(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)", str)) {
                throw new IllegalArgumentException("String 'path' does not match pattern");
            }
            this.path = str;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.ListSharedLinksArg$a */
    /* loaded from: classes4.dex */
    public static class C2887a extends StructSerializer<ListSharedLinksArg> {

        /* renamed from: b */
        public static final C2887a f17856b = new C2887a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListSharedLinksArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Boolean bool = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("path".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("cursor".equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("direct_only".equals(currentName)) {
                    bool = (Boolean) StoneSerializers.nullable(StoneSerializers.boolean_()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            ListSharedLinksArg listSharedLinksArg = new ListSharedLinksArg(str2, str3, bool);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(listSharedLinksArg, listSharedLinksArg.m11763e());
            return listSharedLinksArg;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListSharedLinksArg listSharedLinksArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (listSharedLinksArg.f17853a != null) {
                jsonGenerator.writeFieldName("path");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) listSharedLinksArg.f17853a, jsonGenerator);
            }
            if (listSharedLinksArg.f17854b != null) {
                jsonGenerator.writeFieldName("cursor");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) listSharedLinksArg.f17854b, jsonGenerator);
            }
            if (listSharedLinksArg.f17855c != null) {
                jsonGenerator.writeFieldName("direct_only");
                StoneSerializers.nullable(StoneSerializers.boolean_()).serialize((StoneSerializer) listSharedLinksArg.f17855c, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ListSharedLinksArg(String str, String str2, Boolean bool) {
        if (str != null && !Pattern.matches("(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)", str)) {
            throw new IllegalArgumentException("String 'path' does not match pattern");
        }
        this.f17853a = str;
        this.f17854b = str2;
        this.f17855c = bool;
    }

    /* renamed from: d */
    public static Builder m11759d() {
        return new Builder();
    }

    /* renamed from: a */
    public String m11760a() {
        return this.f17854b;
    }

    /* renamed from: b */
    public Boolean m11761b() {
        return this.f17855c;
    }

    /* renamed from: c */
    public String m11762c() {
        return this.f17853a;
    }

    /* renamed from: e */
    public String m11763e() {
        return C2887a.f17856b.serialize((C2887a) this, true);
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
        ListSharedLinksArg listSharedLinksArg = (ListSharedLinksArg) obj;
        String str3 = this.f17853a;
        String str4 = listSharedLinksArg.f17853a;
        if ((str3 == str4 || (str3 != null && str3.equals(str4))) && ((str = this.f17854b) == (str2 = listSharedLinksArg.f17854b) || (str != null && str.equals(str2)))) {
            Boolean bool = this.f17855c;
            Boolean bool2 = listSharedLinksArg.f17855c;
            if (bool == bool2) {
                return true;
            }
            if (bool != null && bool.equals(bool2)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17853a, this.f17854b, this.f17855c});
    }

    public String toString() {
        return C2887a.f17856b.serialize((C2887a) this, false);
    }

    public ListSharedLinksArg() {
        this(null, null, null);
    }
}
