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
import java.util.List;
import java.util.regex.Pattern;

/* renamed from: com.dropbox.core.v2.team.p0 */
/* loaded from: classes4.dex */
public class C3307p0 {

    /* renamed from: a */
    public final List<String> f18653a;

    /* renamed from: com.dropbox.core.v2.team.p0$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C3307p0> {

        /* renamed from: b */
        public static final a f18654b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C3307p0 deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            List list = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("team_folder_ids".equals(currentName)) {
                    list = (List) StoneSerializers.list(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"team_folder_ids\" missing.");
            }
            C3307p0 c3307p0 = new C3307p0(list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c3307p0, c3307p0.m12947b());
            return c3307p0;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C3307p0 c3307p0, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("team_folder_ids");
            StoneSerializers.list(StoneSerializers.string()).serialize((StoneSerializer) c3307p0.f18653a, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C3307p0(List<String> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'teamFolderIds' is null");
        }
        if (list.size() < 1) {
            throw new IllegalArgumentException("List 'teamFolderIds' has fewer than 1 items");
        }
        for (String str : list) {
            if (str == null) {
                throw new IllegalArgumentException("An item in list 'teamFolderIds' is null");
            }
            if (!Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
                throw new IllegalArgumentException("Stringan item in list 'teamFolderIds' does not match pattern");
            }
        }
        this.f18653a = list;
    }

    /* renamed from: a */
    public List<String> m12946a() {
        return this.f18653a;
    }

    /* renamed from: b */
    public String m12947b() {
        return a.f18654b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        List<String> list = this.f18653a;
        List<String> list2 = ((C3307p0) obj).f18653a;
        return list == list2 || list.equals(list2);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18653a});
    }

    public String toString() {
        return a.f18654b.serialize((a) this, false);
    }
}
