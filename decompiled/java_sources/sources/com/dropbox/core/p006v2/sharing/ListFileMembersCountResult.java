package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.SharedFileMembers;
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
public class ListFileMembersCountResult {
    protected final long memberCount;
    protected final SharedFileMembers members;

    /* renamed from: com.dropbox.core.v2.sharing.ListFileMembersCountResult$a */
    /* loaded from: classes4.dex */
    public static class C2870a extends StructSerializer<ListFileMembersCountResult> {

        /* renamed from: b */
        public static final C2870a f17811b = new C2870a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListFileMembersCountResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            SharedFileMembers sharedFileMembers = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            Long l = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("members".equals(currentName)) {
                    sharedFileMembers = SharedFileMembers.C2940a.f17960b.deserialize(jsonParser);
                } else if ("member_count".equals(currentName)) {
                    l = StoneSerializers.uInt32().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (sharedFileMembers == null) {
                throw new JsonParseException(jsonParser, "Required field \"members\" missing.");
            }
            if (l == null) {
                throw new JsonParseException(jsonParser, "Required field \"member_count\" missing.");
            }
            ListFileMembersCountResult listFileMembersCountResult = new ListFileMembersCountResult(sharedFileMembers, l.longValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(listFileMembersCountResult, listFileMembersCountResult.toStringMultiline());
            return listFileMembersCountResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListFileMembersCountResult listFileMembersCountResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("members");
            SharedFileMembers.C2940a.f17960b.serialize((SharedFileMembers.C2940a) listFileMembersCountResult.members, jsonGenerator);
            jsonGenerator.writeFieldName("member_count");
            StoneSerializers.uInt32().serialize((StoneSerializer<Long>) Long.valueOf(listFileMembersCountResult.memberCount), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ListFileMembersCountResult(SharedFileMembers sharedFileMembers, long j) {
        if (sharedFileMembers == null) {
            throw new IllegalArgumentException("Required value for 'members' is null");
        }
        this.members = sharedFileMembers;
        this.memberCount = j;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ListFileMembersCountResult listFileMembersCountResult = (ListFileMembersCountResult) obj;
        SharedFileMembers sharedFileMembers = this.members;
        SharedFileMembers sharedFileMembers2 = listFileMembersCountResult.members;
        return (sharedFileMembers == sharedFileMembers2 || sharedFileMembers.equals(sharedFileMembers2)) && this.memberCount == listFileMembersCountResult.memberCount;
    }

    public long getMemberCount() {
        return this.memberCount;
    }

    public SharedFileMembers getMembers() {
        return this.members;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.members, Long.valueOf(this.memberCount)});
    }

    public String toString() {
        return C2870a.f17811b.serialize((C2870a) this, false);
    }

    public String toStringMultiline() {
        return C2870a.f17811b.serialize((C2870a) this, true);
    }
}
