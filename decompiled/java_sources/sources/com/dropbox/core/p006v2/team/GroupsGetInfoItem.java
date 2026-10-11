package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.GroupFullInfo;
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
public final class GroupsGetInfoItem {

    /* renamed from: a */
    public Tag f18226a;

    /* renamed from: b */
    public String f18227b;

    /* renamed from: c */
    public GroupFullInfo f18228c;

    /* loaded from: classes4.dex */
    public enum Tag {
        ID_NOT_FOUND,
        GROUP_INFO
    }

    /* renamed from: com.dropbox.core.v2.team.GroupsGetInfoItem$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3079a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18229a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18229a = iArr;
            try {
                iArr[Tag.ID_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18229a[Tag.GROUP_INFO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.GroupsGetInfoItem$b */
    /* loaded from: classes4.dex */
    public static class C3080b extends UnionSerializer<GroupsGetInfoItem> {

        /* renamed from: b */
        public static final C3080b f18230b = new C3080b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GroupsGetInfoItem deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            GroupsGetInfoItem groupInfo;
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
                groupInfo = GroupsGetInfoItem.idNotFound(StoneSerializers.string().deserialize(jsonParser));
            } else {
                if (!"group_info".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                groupInfo = GroupsGetInfoItem.groupInfo(GroupFullInfo.C3061a.f18192b.deserialize(jsonParser, true));
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return groupInfo;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GroupsGetInfoItem groupsGetInfoItem, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3079a.f18229a[groupsGetInfoItem.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("id_not_found", jsonGenerator);
                jsonGenerator.writeFieldName("id_not_found");
                StoneSerializers.string().serialize((StoneSerializer<String>) groupsGetInfoItem.f18227b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                throw new IllegalArgumentException("Unrecognized tag: " + groupsGetInfoItem.tag());
            }
            jsonGenerator.writeStartObject();
            writeTag("group_info", jsonGenerator);
            GroupFullInfo.C3061a.f18192b.serialize(groupsGetInfoItem.f18228c, jsonGenerator, true);
            jsonGenerator.writeEndObject();
        }
    }

    public static GroupsGetInfoItem groupInfo(GroupFullInfo groupFullInfo) {
        if (groupFullInfo != null) {
            return new GroupsGetInfoItem().m12354d(Tag.GROUP_INFO, groupFullInfo);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static GroupsGetInfoItem idNotFound(String str) {
        if (str != null) {
            return new GroupsGetInfoItem().m12355e(Tag.ID_NOT_FOUND, str);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final GroupsGetInfoItem m12353c(Tag tag) {
        GroupsGetInfoItem groupsGetInfoItem = new GroupsGetInfoItem();
        groupsGetInfoItem.f18226a = tag;
        return groupsGetInfoItem;
    }

    /* renamed from: d */
    public final GroupsGetInfoItem m12354d(Tag tag, GroupFullInfo groupFullInfo) {
        GroupsGetInfoItem groupsGetInfoItem = new GroupsGetInfoItem();
        groupsGetInfoItem.f18226a = tag;
        groupsGetInfoItem.f18228c = groupFullInfo;
        return groupsGetInfoItem;
    }

    /* renamed from: e */
    public final GroupsGetInfoItem m12355e(Tag tag, String str) {
        GroupsGetInfoItem groupsGetInfoItem = new GroupsGetInfoItem();
        groupsGetInfoItem.f18226a = tag;
        groupsGetInfoItem.f18227b = str;
        return groupsGetInfoItem;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof GroupsGetInfoItem)) {
            return false;
        }
        GroupsGetInfoItem groupsGetInfoItem = (GroupsGetInfoItem) obj;
        Tag tag = this.f18226a;
        if (tag != groupsGetInfoItem.f18226a) {
            return false;
        }
        int i = C3079a.f18229a[tag.ordinal()];
        if (i == 1) {
            String str = this.f18227b;
            String str2 = groupsGetInfoItem.f18227b;
            return str == str2 || str.equals(str2);
        }
        if (i != 2) {
            return false;
        }
        GroupFullInfo groupFullInfo = this.f18228c;
        GroupFullInfo groupFullInfo2 = groupsGetInfoItem.f18228c;
        return groupFullInfo == groupFullInfo2 || groupFullInfo.equals(groupFullInfo2);
    }

    public GroupFullInfo getGroupInfoValue() {
        if (this.f18226a == Tag.GROUP_INFO) {
            return this.f18228c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.GROUP_INFO, but was Tag." + this.f18226a.name());
    }

    public String getIdNotFoundValue() {
        if (this.f18226a == Tag.ID_NOT_FOUND) {
            return this.f18227b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ID_NOT_FOUND, but was Tag." + this.f18226a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18226a, this.f18227b, this.f18228c});
    }

    public boolean isGroupInfo() {
        return this.f18226a == Tag.GROUP_INFO;
    }

    public boolean isIdNotFound() {
        return this.f18226a == Tag.ID_NOT_FOUND;
    }

    public Tag tag() {
        return this.f18226a;
    }

    public String toString() {
        return C3080b.f18230b.serialize((C3080b) this, false);
    }

    public String toStringMultiline() {
        return C3080b.f18230b.serialize((C3080b) this, true);
    }
}
