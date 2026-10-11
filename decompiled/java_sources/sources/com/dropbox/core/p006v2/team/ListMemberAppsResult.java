package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.ApiApp;
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
public class ListMemberAppsResult {
    protected final List<ApiApp> linkedApiApps;

    /* renamed from: com.dropbox.core.v2.team.ListMemberAppsResult$a */
    /* loaded from: classes4.dex */
    public static class C3119a extends StructSerializer<ListMemberAppsResult> {

        /* renamed from: b */
        public static final C3119a f18296b = new C3119a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListMemberAppsResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("linked_api_apps".equals(currentName)) {
                    list = (List) StoneSerializers.list(ApiApp.C3016a.f18122b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"linked_api_apps\" missing.");
            }
            ListMemberAppsResult listMemberAppsResult = new ListMemberAppsResult(list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(listMemberAppsResult, listMemberAppsResult.toStringMultiline());
            return listMemberAppsResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListMemberAppsResult listMemberAppsResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("linked_api_apps");
            StoneSerializers.list(ApiApp.C3016a.f18122b).serialize((StoneSerializer) listMemberAppsResult.linkedApiApps, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ListMemberAppsResult(List<ApiApp> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'linkedApiApps' is null");
        }
        Iterator<ApiApp> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'linkedApiApps' is null");
            }
        }
        this.linkedApiApps = list;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        List<ApiApp> list = this.linkedApiApps;
        List<ApiApp> list2 = ((ListMemberAppsResult) obj).linkedApiApps;
        return list == list2 || list.equals(list2);
    }

    public List<ApiApp> getLinkedApiApps() {
        return this.linkedApiApps;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.linkedApiApps});
    }

    public String toString() {
        return C3119a.f18296b.serialize((C3119a) this, false);
    }

    public String toStringMultiline() {
        return C3119a.f18296b.serialize((C3119a) this, true);
    }
}
