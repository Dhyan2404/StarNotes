package com.dropbox.core.p006v2.team;

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
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public final class GroupsSelector {

    /* renamed from: a */
    public Tag f18239a;

    /* renamed from: b */
    public List<String> f18240b;

    /* renamed from: c */
    public List<String> f18241c;

    /* loaded from: classes4.dex */
    public enum Tag {
        GROUP_IDS,
        GROUP_EXTERNAL_IDS
    }

    /* renamed from: com.dropbox.core.v2.team.GroupsSelector$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3089a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18242a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18242a = iArr;
            try {
                iArr[Tag.GROUP_IDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18242a[Tag.GROUP_EXTERNAL_IDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.GroupsSelector$b */
    /* loaded from: classes4.dex */
    public static class C3090b extends UnionSerializer<GroupsSelector> {

        /* renamed from: b */
        public static final C3090b f18243b = new C3090b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GroupsSelector deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            GroupsSelector groupExternalIds;
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
            if ("group_ids".equals(readTag)) {
                StoneSerializer.expectField("group_ids", jsonParser);
                groupExternalIds = GroupsSelector.groupIds((List) StoneSerializers.list(StoneSerializers.string()).deserialize(jsonParser));
            } else {
                if (!"group_external_ids".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                StoneSerializer.expectField("group_external_ids", jsonParser);
                groupExternalIds = GroupsSelector.groupExternalIds((List) StoneSerializers.list(StoneSerializers.string()).deserialize(jsonParser));
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return groupExternalIds;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GroupsSelector groupsSelector, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3089a.f18242a[groupsSelector.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("group_ids", jsonGenerator);
                jsonGenerator.writeFieldName("group_ids");
                StoneSerializers.list(StoneSerializers.string()).serialize((StoneSerializer) groupsSelector.f18240b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                throw new IllegalArgumentException("Unrecognized tag: " + groupsSelector.tag());
            }
            jsonGenerator.writeStartObject();
            writeTag("group_external_ids", jsonGenerator);
            jsonGenerator.writeFieldName("group_external_ids");
            StoneSerializers.list(StoneSerializers.string()).serialize((StoneSerializer) groupsSelector.f18241c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static GroupsSelector groupExternalIds(List<String> list) {
        if (list == null) {
            throw new IllegalArgumentException("Value is null");
        }
        Iterator<String> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list is null");
            }
        }
        return new GroupsSelector().m12371d(Tag.GROUP_EXTERNAL_IDS, list);
    }

    public static GroupsSelector groupIds(List<String> list) {
        if (list == null) {
            throw new IllegalArgumentException("Value is null");
        }
        Iterator<String> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list is null");
            }
        }
        return new GroupsSelector().m12372e(Tag.GROUP_IDS, list);
    }

    /* renamed from: c */
    public final GroupsSelector m12370c(Tag tag) {
        GroupsSelector groupsSelector = new GroupsSelector();
        groupsSelector.f18239a = tag;
        return groupsSelector;
    }

    /* renamed from: d */
    public final GroupsSelector m12371d(Tag tag, List<String> list) {
        GroupsSelector groupsSelector = new GroupsSelector();
        groupsSelector.f18239a = tag;
        groupsSelector.f18241c = list;
        return groupsSelector;
    }

    /* renamed from: e */
    public final GroupsSelector m12372e(Tag tag, List<String> list) {
        GroupsSelector groupsSelector = new GroupsSelector();
        groupsSelector.f18239a = tag;
        groupsSelector.f18240b = list;
        return groupsSelector;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof GroupsSelector)) {
            return false;
        }
        GroupsSelector groupsSelector = (GroupsSelector) obj;
        Tag tag = this.f18239a;
        if (tag != groupsSelector.f18239a) {
            return false;
        }
        int i = C3089a.f18242a[tag.ordinal()];
        if (i == 1) {
            List<String> list = this.f18240b;
            List<String> list2 = groupsSelector.f18240b;
            return list == list2 || list.equals(list2);
        }
        if (i != 2) {
            return false;
        }
        List<String> list3 = this.f18241c;
        List<String> list4 = groupsSelector.f18241c;
        return list3 == list4 || list3.equals(list4);
    }

    public List<String> getGroupExternalIdsValue() {
        if (this.f18239a == Tag.GROUP_EXTERNAL_IDS) {
            return this.f18241c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.GROUP_EXTERNAL_IDS, but was Tag." + this.f18239a.name());
    }

    public List<String> getGroupIdsValue() {
        if (this.f18239a == Tag.GROUP_IDS) {
            return this.f18240b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.GROUP_IDS, but was Tag." + this.f18239a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18239a, this.f18240b, this.f18241c});
    }

    public boolean isGroupExternalIds() {
        return this.f18239a == Tag.GROUP_EXTERNAL_IDS;
    }

    public boolean isGroupIds() {
        return this.f18239a == Tag.GROUP_IDS;
    }

    public Tag tag() {
        return this.f18239a;
    }

    public String toString() {
        return C3090b.f18243b.serialize((C3090b) this, false);
    }

    public String toStringMultiline() {
        return C3090b.f18243b.serialize((C3090b) this, true);
    }
}
