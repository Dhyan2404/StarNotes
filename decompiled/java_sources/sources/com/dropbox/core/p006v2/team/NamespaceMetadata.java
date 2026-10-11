package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.NamespaceType;
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
public class NamespaceMetadata {
    protected final String name;
    protected final String namespaceId;
    protected final NamespaceType namespaceType;
    protected final String teamMemberId;

    /* renamed from: com.dropbox.core.v2.team.NamespaceMetadata$a */
    /* loaded from: classes4.dex */
    public static class C3185a extends StructSerializer<NamespaceMetadata> {

        /* renamed from: b */
        public static final C3185a f18416b = new C3185a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public NamespaceMetadata deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            NamespaceType namespaceType = null;
            String str4 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("name".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("namespace_id".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("namespace_type".equals(currentName)) {
                    namespaceType = NamespaceType.C3187b.f18418b.deserialize(jsonParser);
                } else if ("team_member_id".equals(currentName)) {
                    str4 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"name\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"namespace_id\" missing.");
            }
            if (namespaceType == null) {
                throw new JsonParseException(jsonParser, "Required field \"namespace_type\" missing.");
            }
            NamespaceMetadata namespaceMetadata = new NamespaceMetadata(str2, str3, namespaceType, str4);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(namespaceMetadata, namespaceMetadata.toStringMultiline());
            return namespaceMetadata;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(NamespaceMetadata namespaceMetadata, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("name");
            StoneSerializers.string().serialize((StoneSerializer<String>) namespaceMetadata.name, jsonGenerator);
            jsonGenerator.writeFieldName("namespace_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) namespaceMetadata.namespaceId, jsonGenerator);
            jsonGenerator.writeFieldName("namespace_type");
            NamespaceType.C3187b.f18418b.serialize(namespaceMetadata.namespaceType, jsonGenerator);
            if (namespaceMetadata.teamMemberId != null) {
                jsonGenerator.writeFieldName("team_member_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) namespaceMetadata.teamMemberId, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public NamespaceMetadata(String str, String str2, NamespaceType namespaceType, String str3) {
        if (str != null) {
            this.name = str;
            if (str2 != null) {
                if (Pattern.matches("[-_0-9a-zA-Z:]+", str2)) {
                    this.namespaceId = str2;
                    if (namespaceType != null) {
                        this.namespaceType = namespaceType;
                        this.teamMemberId = str3;
                        return;
                    }
                    throw new IllegalArgumentException("Required value for 'namespaceType' is null");
                }
                throw new IllegalArgumentException("String 'namespaceId' does not match pattern");
            }
            throw new IllegalArgumentException("Required value for 'namespaceId' is null");
        }
        throw new IllegalArgumentException("Required value for 'name' is null");
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        NamespaceType namespaceType;
        NamespaceType namespaceType2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        NamespaceMetadata namespaceMetadata = (NamespaceMetadata) obj;
        String str3 = this.name;
        String str4 = namespaceMetadata.name;
        if ((str3 == str4 || str3.equals(str4)) && (((str = this.namespaceId) == (str2 = namespaceMetadata.namespaceId) || str.equals(str2)) && ((namespaceType = this.namespaceType) == (namespaceType2 = namespaceMetadata.namespaceType) || namespaceType.equals(namespaceType2)))) {
            String str5 = this.teamMemberId;
            String str6 = namespaceMetadata.teamMemberId;
            if (str5 == str6) {
                return true;
            }
            if (str5 != null && str5.equals(str6)) {
                return true;
            }
        }
        return false;
    }

    public String getName() {
        return this.name;
    }

    public String getNamespaceId() {
        return this.namespaceId;
    }

    public NamespaceType getNamespaceType() {
        return this.namespaceType;
    }

    public String getTeamMemberId() {
        return this.teamMemberId;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.name, this.namespaceId, this.namespaceType, this.teamMemberId});
    }

    public String toString() {
        return C3185a.f18416b.serialize((C3185a) this, false);
    }

    public String toStringMultiline() {
        return C3185a.f18416b.serialize((C3185a) this, true);
    }

    public NamespaceMetadata(String str, String str2, NamespaceType namespaceType) {
        this(str, str2, namespaceType, null);
    }
}
