package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.files.SyncSettingArg;
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

/* renamed from: com.dropbox.core.v2.team.n0 */
/* loaded from: classes4.dex */
public class C3303n0 {

    /* renamed from: a */
    public final String f18644a;

    /* renamed from: b */
    public final SyncSettingArg f18645b;

    /* renamed from: com.dropbox.core.v2.team.n0$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C3303n0> {

        /* renamed from: b */
        public static final a f18646b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C3303n0 deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            SyncSettingArg syncSettingArg = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("name".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("sync_setting".equals(currentName)) {
                    syncSettingArg = (SyncSettingArg) StoneSerializers.nullable(SyncSettingArg.Serializer.INSTANCE).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"name\" missing.");
            }
            C3303n0 c3303n0 = new C3303n0(str2, syncSettingArg);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c3303n0, c3303n0.m12933c());
            return c3303n0;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C3303n0 c3303n0, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("name");
            StoneSerializers.string().serialize((StoneSerializer<String>) c3303n0.f18644a, jsonGenerator);
            if (c3303n0.f18645b != null) {
                jsonGenerator.writeFieldName("sync_setting");
                StoneSerializers.nullable(SyncSettingArg.Serializer.INSTANCE).serialize((StoneSerializer) c3303n0.f18645b, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C3303n0(String str, SyncSettingArg syncSettingArg) {
        if (str != null) {
            this.f18644a = str;
            this.f18645b = syncSettingArg;
            return;
        }
        throw new IllegalArgumentException("Required value for 'name' is null");
    }

    /* renamed from: a */
    public String m12931a() {
        return this.f18644a;
    }

    /* renamed from: b */
    public SyncSettingArg m12932b() {
        return this.f18645b;
    }

    /* renamed from: c */
    public String m12933c() {
        return a.f18646b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C3303n0 c3303n0 = (C3303n0) obj;
        String str = this.f18644a;
        String str2 = c3303n0.f18644a;
        if (str == str2 || str.equals(str2)) {
            SyncSettingArg syncSettingArg = this.f18645b;
            SyncSettingArg syncSettingArg2 = c3303n0.f18645b;
            if (syncSettingArg == syncSettingArg2) {
                return true;
            }
            if (syncSettingArg != null && syncSettingArg.equals(syncSettingArg2)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18644a, this.f18645b});
    }

    public String toString() {
        return a.f18646b.serialize((a) this, false);
    }

    public C3303n0(String str) {
        this(str, null);
    }
}
