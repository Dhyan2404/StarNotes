package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.NamespaceMetadata;
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
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class TeamNamespacesListResult {
    protected final String cursor;
    protected final boolean hasMore;
    protected final List<NamespaceMetadata> namespaces;

    /* renamed from: com.dropbox.core.v2.team.TeamNamespacesListResult$a */
    /* loaded from: classes4.dex */
    public static class C3255a extends StructSerializer<TeamNamespacesListResult> {

        /* renamed from: b */
        public static final C3255a f18545b = new C3255a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamNamespacesListResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            String str2 = null;
            Boolean bool = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("namespaces".equals(currentName)) {
                    list = (List) StoneSerializers.list(NamespaceMetadata.C3185a.f18416b).deserialize(jsonParser);
                } else if ("cursor".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("has_more".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"namespaces\" missing.");
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"cursor\" missing.");
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"has_more\" missing.");
            }
            TeamNamespacesListResult teamNamespacesListResult = new TeamNamespacesListResult(list, str2, bool.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(teamNamespacesListResult, teamNamespacesListResult.toStringMultiline());
            return teamNamespacesListResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamNamespacesListResult teamNamespacesListResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("namespaces");
            StoneSerializers.list(NamespaceMetadata.C3185a.f18416b).serialize((StoneSerializer) teamNamespacesListResult.namespaces, jsonGenerator);
            jsonGenerator.writeFieldName("cursor");
            StoneSerializers.string().serialize((StoneSerializer<String>) teamNamespacesListResult.cursor, jsonGenerator);
            jsonGenerator.writeFieldName("has_more");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(teamNamespacesListResult.hasMore), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TeamNamespacesListResult(List<NamespaceMetadata> list, String str, boolean z) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'namespaces' is null");
        }
        Iterator<NamespaceMetadata> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'namespaces' is null");
            }
        }
        this.namespaces = list;
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'cursor' is null");
        }
        this.cursor = str;
        this.hasMore = z;
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
        TeamNamespacesListResult teamNamespacesListResult = (TeamNamespacesListResult) obj;
        List<NamespaceMetadata> list = this.namespaces;
        List<NamespaceMetadata> list2 = teamNamespacesListResult.namespaces;
        return (list == list2 || list.equals(list2)) && ((str = this.cursor) == (str2 = teamNamespacesListResult.cursor) || str.equals(str2)) && this.hasMore == teamNamespacesListResult.hasMore;
    }

    public String getCursor() {
        return this.cursor;
    }

    public boolean getHasMore() {
        return this.hasMore;
    }

    public List<NamespaceMetadata> getNamespaces() {
        return this.namespaces;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.namespaces, this.cursor, Boolean.valueOf(this.hasMore)});
    }

    public String toString() {
        return C3255a.f18545b.serialize((C3255a) this, false);
    }

    public String toStringMultiline() {
        return C3255a.f18545b.serialize((C3255a) this, true);
    }
}
