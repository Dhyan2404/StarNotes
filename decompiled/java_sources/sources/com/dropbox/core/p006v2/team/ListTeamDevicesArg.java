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
public class ListTeamDevicesArg {

    /* renamed from: a */
    public final String f18319a;

    /* renamed from: b */
    public final boolean f18320b;

    /* renamed from: c */
    public final boolean f18321c;

    /* renamed from: d */
    public final boolean f18322d;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected String cursor = null;
        protected boolean includeWebSessions = true;
        protected boolean includeDesktopClients = true;
        protected boolean includeMobileClients = true;

        public ListTeamDevicesArg build() {
            return new ListTeamDevicesArg(this.cursor, this.includeWebSessions, this.includeDesktopClients, this.includeMobileClients);
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

    /* renamed from: com.dropbox.core.v2.team.ListTeamDevicesArg$a */
    /* loaded from: classes4.dex */
    public static class C3134a extends StructSerializer<ListTeamDevicesArg> {

        /* renamed from: b */
        public static final C3134a f18323b = new C3134a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListTeamDevicesArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            ListTeamDevicesArg listTeamDevicesArg = new ListTeamDevicesArg(str2, bool.booleanValue(), bool2.booleanValue(), bool3.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(listTeamDevicesArg, listTeamDevicesArg.m12470f());
            return listTeamDevicesArg;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListTeamDevicesArg listTeamDevicesArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (listTeamDevicesArg.f18319a != null) {
                jsonGenerator.writeFieldName("cursor");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) listTeamDevicesArg.f18319a, jsonGenerator);
            }
            jsonGenerator.writeFieldName("include_web_sessions");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(listTeamDevicesArg.f18320b), jsonGenerator);
            jsonGenerator.writeFieldName("include_desktop_clients");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(listTeamDevicesArg.f18321c), jsonGenerator);
            jsonGenerator.writeFieldName("include_mobile_clients");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(listTeamDevicesArg.f18322d), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ListTeamDevicesArg(String str, boolean z, boolean z2, boolean z3) {
        this.f18319a = str;
        this.f18320b = z;
        this.f18321c = z2;
        this.f18322d = z3;
    }

    /* renamed from: e */
    public static Builder m12465e() {
        return new Builder();
    }

    /* renamed from: a */
    public String m12466a() {
        return this.f18319a;
    }

    /* renamed from: b */
    public boolean m12467b() {
        return this.f18321c;
    }

    /* renamed from: c */
    public boolean m12468c() {
        return this.f18322d;
    }

    /* renamed from: d */
    public boolean m12469d() {
        return this.f18320b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ListTeamDevicesArg listTeamDevicesArg = (ListTeamDevicesArg) obj;
        String str = this.f18319a;
        String str2 = listTeamDevicesArg.f18319a;
        return (str == str2 || (str != null && str.equals(str2))) && this.f18320b == listTeamDevicesArg.f18320b && this.f18321c == listTeamDevicesArg.f18321c && this.f18322d == listTeamDevicesArg.f18322d;
    }

    /* renamed from: f */
    public String m12470f() {
        return C3134a.f18323b.serialize((C3134a) this, true);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18319a, Boolean.valueOf(this.f18320b), Boolean.valueOf(this.f18321c), Boolean.valueOf(this.f18322d)});
    }

    public String toString() {
        return C3134a.f18323b.serialize((C3134a) this, false);
    }

    public ListTeamDevicesArg() {
        this(null, true, true, true);
    }
}
