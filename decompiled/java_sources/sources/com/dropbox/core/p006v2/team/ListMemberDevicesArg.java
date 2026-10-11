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
public class ListMemberDevicesArg {

    /* renamed from: a */
    public final String f18297a;

    /* renamed from: b */
    public final boolean f18298b;

    /* renamed from: c */
    public final boolean f18299c;

    /* renamed from: d */
    public final boolean f18300d;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected boolean includeDesktopClients;
        protected boolean includeMobileClients;
        protected boolean includeWebSessions;
        protected final String teamMemberId;

        public Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'teamMemberId' is null");
            }
            this.teamMemberId = str;
            this.includeWebSessions = true;
            this.includeDesktopClients = true;
            this.includeMobileClients = true;
        }

        public ListMemberDevicesArg build() {
            return new ListMemberDevicesArg(this.teamMemberId, this.includeWebSessions, this.includeDesktopClients, this.includeMobileClients);
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

    /* renamed from: com.dropbox.core.v2.team.ListMemberDevicesArg$a */
    /* loaded from: classes4.dex */
    public static class C3120a extends StructSerializer<ListMemberDevicesArg> {

        /* renamed from: b */
        public static final C3120a f18301b = new C3120a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListMemberDevicesArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("team_member_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
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
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"team_member_id\" missing.");
            }
            ListMemberDevicesArg listMemberDevicesArg = new ListMemberDevicesArg(str2, bool.booleanValue(), bool2.booleanValue(), bool3.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(listMemberDevicesArg, listMemberDevicesArg.m12438f());
            return listMemberDevicesArg;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListMemberDevicesArg listMemberDevicesArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("team_member_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) listMemberDevicesArg.f18297a, jsonGenerator);
            jsonGenerator.writeFieldName("include_web_sessions");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(listMemberDevicesArg.f18298b), jsonGenerator);
            jsonGenerator.writeFieldName("include_desktop_clients");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(listMemberDevicesArg.f18299c), jsonGenerator);
            jsonGenerator.writeFieldName("include_mobile_clients");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(listMemberDevicesArg.f18300d), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ListMemberDevicesArg(String str, boolean z, boolean z2, boolean z3) {
        if (str != null) {
            this.f18297a = str;
            this.f18298b = z;
            this.f18299c = z2;
            this.f18300d = z3;
            return;
        }
        throw new IllegalArgumentException("Required value for 'teamMemberId' is null");
    }

    /* renamed from: e */
    public static Builder m12433e(String str) {
        return new Builder(str);
    }

    /* renamed from: a */
    public boolean m12434a() {
        return this.f18299c;
    }

    /* renamed from: b */
    public boolean m12435b() {
        return this.f18300d;
    }

    /* renamed from: c */
    public boolean m12436c() {
        return this.f18298b;
    }

    /* renamed from: d */
    public String m12437d() {
        return this.f18297a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ListMemberDevicesArg listMemberDevicesArg = (ListMemberDevicesArg) obj;
        String str = this.f18297a;
        String str2 = listMemberDevicesArg.f18297a;
        return (str == str2 || str.equals(str2)) && this.f18298b == listMemberDevicesArg.f18298b && this.f18299c == listMemberDevicesArg.f18299c && this.f18300d == listMemberDevicesArg.f18300d;
    }

    /* renamed from: f */
    public String m12438f() {
        return C3120a.f18301b.serialize((C3120a) this, true);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18297a, Boolean.valueOf(this.f18298b), Boolean.valueOf(this.f18299c), Boolean.valueOf(this.f18300d)});
    }

    public String toString() {
        return C3120a.f18301b.serialize((C3120a) this, false);
    }

    public ListMemberDevicesArg(String str) {
        this(str, true, true, true);
    }
}
