package com.dropbox.core.p006v2.team;

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
public class ListMembersDevicesArg {

    /* renamed from: a */
    public final String f18308a;

    /* renamed from: b */
    public final boolean f18309b;

    /* renamed from: c */
    public final boolean f18310c;

    /* renamed from: d */
    public final boolean f18311d;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected String cursor = null;
        protected boolean includeWebSessions = true;
        protected boolean includeDesktopClients = true;
        protected boolean includeMobileClients = true;

        public ListMembersDevicesArg build() {
            return new ListMembersDevicesArg(this.cursor, this.includeWebSessions, this.includeDesktopClients, this.includeMobileClients);
        }

        public Builder withCursor(String str) {
            this.cursor = str;
            return this;
        }

        public Builder withIncludeDesktopClients(Boolean bool) {
            if (bool != null) {
                this.includeDesktopClients = bool.booleanValue();
            } else {
                this.includeDesktopClients = true;
            }
            return this;
        }

        public Builder withIncludeMobileClients(Boolean bool) {
            if (bool != null) {
                this.includeMobileClients = bool.booleanValue();
            } else {
                this.includeMobileClients = true;
            }
            return this;
        }

        public Builder withIncludeWebSessions(Boolean bool) {
            if (bool != null) {
                this.includeWebSessions = bool.booleanValue();
            } else {
                this.includeWebSessions = true;
            }
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.team.ListMembersDevicesArg$a */
    /* loaded from: classes4.dex */
    public static class C3127a extends StructSerializer<ListMembersDevicesArg> {

        /* renamed from: b */
        public static final C3127a f18312b = new C3127a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListMembersDevicesArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Boolean bool = Boolean.TRUE;
            Boolean bool2 = bool;
            Boolean bool3 = bool2;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("cursor".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("include_web_sessions".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("include_desktop_clients".equals(currentName)) {
                    bool2 = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("include_mobile_clients".equals(currentName)) {
                    bool3 = StoneSerializers.boolean_().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            ListMembersDevicesArg listMembersDevicesArg = new ListMembersDevicesArg(str2, bool.booleanValue(), bool2.booleanValue(), bool3.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(listMembersDevicesArg, listMembersDevicesArg.m12454f());
            return listMembersDevicesArg;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListMembersDevicesArg listMembersDevicesArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (listMembersDevicesArg.f18308a != null) {
                jsonGenerator.writeFieldName("cursor");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) listMembersDevicesArg.f18308a, jsonGenerator);
            }
            jsonGenerator.writeFieldName("include_web_sessions");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(listMembersDevicesArg.f18309b), jsonGenerator);
            jsonGenerator.writeFieldName("include_desktop_clients");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(listMembersDevicesArg.f18310c), jsonGenerator);
            jsonGenerator.writeFieldName("include_mobile_clients");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(listMembersDevicesArg.f18311d), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ListMembersDevicesArg(String str, boolean z, boolean z2, boolean z3) {
        this.f18308a = str;
        this.f18309b = z;
        this.f18310c = z2;
        this.f18311d = z3;
    }

    /* renamed from: e */
    public static Builder m12449e() {
        return new Builder();
    }

    /* renamed from: a */
    public String m12450a() {
        return this.f18308a;
    }

    /* renamed from: b */
    public boolean m12451b() {
        return this.f18310c;
    }

    /* renamed from: c */
    public boolean m12452c() {
        return this.f18311d;
    }

    /* renamed from: d */
    public boolean m12453d() {
        return this.f18309b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ListMembersDevicesArg listMembersDevicesArg = (ListMembersDevicesArg) obj;
        String str = this.f18308a;
        String str2 = listMembersDevicesArg.f18308a;
        return (str == str2 || (str != null && str.equals(str2))) && this.f18309b == listMembersDevicesArg.f18309b && this.f18310c == listMembersDevicesArg.f18310c && this.f18311d == listMembersDevicesArg.f18311d;
    }

    /* renamed from: f */
    public String m12454f() {
        return C3127a.f18312b.serialize((C3127a) this, true);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18308a, Boolean.valueOf(this.f18309b), Boolean.valueOf(this.f18310c), Boolean.valueOf(this.f18311d)});
    }

    public String toString() {
        return C3127a.f18312b.serialize((C3127a) this, false);
    }

    public ListMembersDevicesArg() {
        this(null, true, true, true);
    }
}
