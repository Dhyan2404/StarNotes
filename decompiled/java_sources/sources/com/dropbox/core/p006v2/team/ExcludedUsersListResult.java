package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.MemberProfile;
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
public class ExcludedUsersListResult {
    protected final String cursor;
    protected final boolean hasMore;
    protected final List<MemberProfile> users;

    /* renamed from: com.dropbox.core.v2.team.ExcludedUsersListResult$a */
    /* loaded from: classes4.dex */
    public static class C3037a extends StructSerializer<ExcludedUsersListResult> {

        /* renamed from: b */
        public static final C3037a f18159b = new C3037a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ExcludedUsersListResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("users".equals(currentName)) {
                    list = (List) StoneSerializers.list(MemberProfile.C3144a.f18345b).deserialize(jsonParser);
                } else if ("has_more".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("cursor".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"users\" missing.");
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"has_more\" missing.");
            }
            ExcludedUsersListResult excludedUsersListResult = new ExcludedUsersListResult(list, bool.booleanValue(), str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(excludedUsersListResult, excludedUsersListResult.toStringMultiline());
            return excludedUsersListResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ExcludedUsersListResult excludedUsersListResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("users");
            StoneSerializers.list(MemberProfile.C3144a.f18345b).serialize((StoneSerializer) excludedUsersListResult.users, jsonGenerator);
            jsonGenerator.writeFieldName("has_more");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(excludedUsersListResult.hasMore), jsonGenerator);
            if (excludedUsersListResult.cursor != null) {
                jsonGenerator.writeFieldName("cursor");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) excludedUsersListResult.cursor, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ExcludedUsersListResult(List<MemberProfile> list, boolean z, String str) {
        if (list != null) {
            Iterator<MemberProfile> it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'users' is null");
                }
            }
            this.users = list;
            this.cursor = str;
            this.hasMore = z;
            return;
        }
        throw new IllegalArgumentException("Required value for 'users' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ExcludedUsersListResult excludedUsersListResult = (ExcludedUsersListResult) obj;
        List<MemberProfile> list = this.users;
        List<MemberProfile> list2 = excludedUsersListResult.users;
        if ((list == list2 || list.equals(list2)) && this.hasMore == excludedUsersListResult.hasMore) {
            String str = this.cursor;
            String str2 = excludedUsersListResult.cursor;
            if (str == str2) {
                return true;
            }
            if (str != null && str.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    public String getCursor() {
        return this.cursor;
    }

    public boolean getHasMore() {
        return this.hasMore;
    }

    public List<MemberProfile> getUsers() {
        return this.users;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.users, this.cursor, Boolean.valueOf(this.hasMore)});
    }

    public String toString() {
        return C3037a.f18159b.serialize((C3037a) this, false);
    }

    public String toStringMultiline() {
        return C3037a.f18159b.serialize((C3037a) this, true);
    }

    public ExcludedUsersListResult(List<MemberProfile> list, boolean z) {
        this(list, z, null);
    }
}
