package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.TeamMemberInfo;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class MembersGetInfoItem {

    /* renamed from: a */
    public Tag f18360a;

    /* renamed from: b */
    public String f18361b;

    /* renamed from: c */
    public TeamMemberInfo f18362c;

    /* loaded from: classes4.dex */
    public enum Tag {
        ID_NOT_FOUND,
        MEMBER_INFO
    }

    /* renamed from: com.dropbox.core.v2.team.MembersGetInfoItem$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3153a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18363a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18363a = iArr;
            try {
                iArr[Tag.ID_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18363a[Tag.MEMBER_INFO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.MembersGetInfoItem$b */
    /* loaded from: classes4.dex */
    public static class C3154b extends UnionSerializer<MembersGetInfoItem> {

        /* renamed from: b */
        public static final C3154b f18364b = new C3154b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MembersGetInfoItem deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            MembersGetInfoItem memberInfo;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                readTag = StoneSerializer.getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                readTag = CompositeSerializer.readTag(jsonParser);
                z = false;
            }
            if (readTag == null) {
                throw new JsonParseException(jsonParser, "Required field missing: .tag");
            }
            if ("id_not_found".equals(readTag)) {
                StoneSerializer.expectField("id_not_found", jsonParser);
                memberInfo = MembersGetInfoItem.idNotFound(StoneSerializers.string().deserialize(jsonParser));
            } else {
                if (!"member_info".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                memberInfo = MembersGetInfoItem.memberInfo(TeamMemberInfo.C3245a.f18533b.deserialize(jsonParser, true));
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return memberInfo;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MembersGetInfoItem membersGetInfoItem, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3153a.f18363a[membersGetInfoItem.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("id_not_found", jsonGenerator);
                jsonGenerator.writeFieldName("id_not_found");
                StoneSerializers.string().serialize((StoneSerializer<String>) membersGetInfoItem.f18361b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                throw new IllegalArgumentException("Unrecognized tag: " + membersGetInfoItem.tag());
            }
            jsonGenerator.writeStartObject();
            writeTag("member_info", jsonGenerator);
            TeamMemberInfo.C3245a.f18533b.serialize(membersGetInfoItem.f18362c, jsonGenerator, true);
            jsonGenerator.writeEndObject();
        }
    }

    public static MembersGetInfoItem idNotFound(String str) {
        if (str != null) {
            return new MembersGetInfoItem().m12533d(Tag.ID_NOT_FOUND, str);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static MembersGetInfoItem memberInfo(TeamMemberInfo teamMemberInfo) {
        if (teamMemberInfo != null) {
            return new MembersGetInfoItem().m12534e(Tag.MEMBER_INFO, teamMemberInfo);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final MembersGetInfoItem m12532c(Tag tag) {
        MembersGetInfoItem membersGetInfoItem = new MembersGetInfoItem();
        membersGetInfoItem.f18360a = tag;
        return membersGetInfoItem;
    }

    /* renamed from: d */
    public final MembersGetInfoItem m12533d(Tag tag, String str) {
        MembersGetInfoItem membersGetInfoItem = new MembersGetInfoItem();
        membersGetInfoItem.f18360a = tag;
        membersGetInfoItem.f18361b = str;
        return membersGetInfoItem;
    }

    /* renamed from: e */
    public final MembersGetInfoItem m12534e(Tag tag, TeamMemberInfo teamMemberInfo) {
        MembersGetInfoItem membersGetInfoItem = new MembersGetInfoItem();
        membersGetInfoItem.f18360a = tag;
        membersGetInfoItem.f18362c = teamMemberInfo;
        return membersGetInfoItem;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof MembersGetInfoItem)) {
            return false;
        }
        MembersGetInfoItem membersGetInfoItem = (MembersGetInfoItem) obj;
        Tag tag = this.f18360a;
        if (tag != membersGetInfoItem.f18360a) {
            return false;
        }
        int i = C3153a.f18363a[tag.ordinal()];
        if (i == 1) {
            String str = this.f18361b;
            String str2 = membersGetInfoItem.f18361b;
            return str == str2 || str.equals(str2);
        }
        if (i != 2) {
            return false;
        }
        TeamMemberInfo teamMemberInfo = this.f18362c;
        TeamMemberInfo teamMemberInfo2 = membersGetInfoItem.f18362c;
        return teamMemberInfo == teamMemberInfo2 || teamMemberInfo.equals(teamMemberInfo2);
    }

    public String getIdNotFoundValue() {
        if (this.f18360a == Tag.ID_NOT_FOUND) {
            return this.f18361b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ID_NOT_FOUND, but was Tag." + this.f18360a.name());
    }

    public TeamMemberInfo getMemberInfoValue() {
        if (this.f18360a == Tag.MEMBER_INFO) {
            return this.f18362c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.MEMBER_INFO, but was Tag." + this.f18360a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18360a, this.f18361b, this.f18362c});
    }

    public boolean isIdNotFound() {
        return this.f18360a == Tag.ID_NOT_FOUND;
    }

    public boolean isMemberInfo() {
        return this.f18360a == Tag.MEMBER_INFO;
    }

    public Tag tag() {
        return this.f18360a;
    }

    public String toString() {
        return C3154b.f18364b.serialize((C3154b) this, false);
    }

    public String toStringMultiline() {
        return C3154b.f18364b.serialize((C3154b) this, true);
    }
}
