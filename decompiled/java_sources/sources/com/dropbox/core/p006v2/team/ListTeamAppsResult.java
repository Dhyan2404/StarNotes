package com.dropbox.core.p006v2.team;

import androidx.credentials.provider.utils.PrivilegedApp;
import com.dropbox.core.p006v2.team.MemberLinkedApps;
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
public class ListTeamAppsResult {
    protected final List<MemberLinkedApps> apps;
    protected final String cursor;
    protected final boolean hasMore;

    /* renamed from: com.dropbox.core.v2.team.ListTeamAppsResult$a */
    /* loaded from: classes4.dex */
    public static class C3133a extends StructSerializer<ListTeamAppsResult> {

        /* renamed from: b */
        public static final C3133a f18318b = new C3133a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListTeamAppsResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Boolean bool = null;
            String str2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if (PrivilegedApp.f6535l.equals(currentName)) {
                    list = (List) StoneSerializers.list(MemberLinkedApps.C3143a.f18344b).deserialize(jsonParser);
                } else if ("has_more".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("cursor".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"apps\" missing.");
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"has_more\" missing.");
            }
            ListTeamAppsResult listTeamAppsResult = new ListTeamAppsResult(list, bool.booleanValue(), str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(listTeamAppsResult, listTeamAppsResult.toStringMultiline());
            return listTeamAppsResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListTeamAppsResult listTeamAppsResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName(PrivilegedApp.f6535l);
            StoneSerializers.list(MemberLinkedApps.C3143a.f18344b).serialize((StoneSerializer) listTeamAppsResult.apps, jsonGenerator);
            jsonGenerator.writeFieldName("has_more");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(listTeamAppsResult.hasMore), jsonGenerator);
            if (listTeamAppsResult.cursor != null) {
                jsonGenerator.writeFieldName("cursor");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) listTeamAppsResult.cursor, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ListTeamAppsResult(List<MemberLinkedApps> list, boolean z, String str) {
        if (list != null) {
            Iterator<MemberLinkedApps> it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'apps' is null");
                }
            }
            this.apps = list;
            this.hasMore = z;
            this.cursor = str;
            return;
        }
        throw new IllegalArgumentException("Required value for 'apps' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ListTeamAppsResult listTeamAppsResult = (ListTeamAppsResult) obj;
        List<MemberLinkedApps> list = this.apps;
        List<MemberLinkedApps> list2 = listTeamAppsResult.apps;
        if ((list == list2 || list.equals(list2)) && this.hasMore == listTeamAppsResult.hasMore) {
            String str = this.cursor;
            String str2 = listTeamAppsResult.cursor;
            if (str == str2) {
                return true;
            }
            if (str != null && str.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    public List<MemberLinkedApps> getApps() {
        return this.apps;
    }

    public String getCursor() {
        return this.cursor;
    }

    public boolean getHasMore() {
        return this.hasMore;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.apps, Boolean.valueOf(this.hasMore), this.cursor});
    }

    public String toString() {
        return C3133a.f18318b.serialize((C3133a) this, false);
    }

    public String toStringMultiline() {
        return C3133a.f18318b.serialize((C3133a) this, true);
    }

    public ListTeamAppsResult(List<MemberLinkedApps> list, boolean z) {
        this(list, z, null);
    }
}
