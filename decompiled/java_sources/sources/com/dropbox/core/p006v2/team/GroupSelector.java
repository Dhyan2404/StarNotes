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
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class GroupSelector {

    /* renamed from: a */
    public Tag f18208a;

    /* renamed from: b */
    public String f18209b;

    /* renamed from: c */
    public String f18210c;

    /* loaded from: classes4.dex */
    public enum Tag {
        GROUP_ID,
        GROUP_EXTERNAL_ID
    }

    /* renamed from: com.dropbox.core.v2.team.GroupSelector$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3070a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18211a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18211a = iArr;
            try {
                iArr[Tag.GROUP_ID.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18211a[Tag.GROUP_EXTERNAL_ID.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.GroupSelector$b */
    /* loaded from: classes4.dex */
    public static class C3071b extends UnionSerializer<GroupSelector> {

        /* renamed from: b */
        public static final C3071b f18212b = new C3071b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GroupSelector deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            GroupSelector groupExternalId;
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
            if (FirebaseAnalytics.Param.GROUP_ID.equals(readTag)) {
                StoneSerializer.expectField(FirebaseAnalytics.Param.GROUP_ID, jsonParser);
                groupExternalId = GroupSelector.groupId(StoneSerializers.string().deserialize(jsonParser));
            } else {
                if (!"group_external_id".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                StoneSerializer.expectField("group_external_id", jsonParser);
                groupExternalId = GroupSelector.groupExternalId(StoneSerializers.string().deserialize(jsonParser));
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return groupExternalId;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GroupSelector groupSelector, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3070a.f18211a[groupSelector.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag(FirebaseAnalytics.Param.GROUP_ID, jsonGenerator);
                jsonGenerator.writeFieldName(FirebaseAnalytics.Param.GROUP_ID);
                StoneSerializers.string().serialize((StoneSerializer<String>) groupSelector.f18209b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                throw new IllegalArgumentException("Unrecognized tag: " + groupSelector.tag());
            }
            jsonGenerator.writeStartObject();
            writeTag("group_external_id", jsonGenerator);
            jsonGenerator.writeFieldName("group_external_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) groupSelector.f18210c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static GroupSelector groupExternalId(String str) {
        if (str != null) {
            return new GroupSelector().m12332d(Tag.GROUP_EXTERNAL_ID, str);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static GroupSelector groupId(String str) {
        if (str != null) {
            return new GroupSelector().m12333e(Tag.GROUP_ID, str);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final GroupSelector m12331c(Tag tag) {
        GroupSelector groupSelector = new GroupSelector();
        groupSelector.f18208a = tag;
        return groupSelector;
    }

    /* renamed from: d */
    public final GroupSelector m12332d(Tag tag, String str) {
        GroupSelector groupSelector = new GroupSelector();
        groupSelector.f18208a = tag;
        groupSelector.f18210c = str;
        return groupSelector;
    }

    /* renamed from: e */
    public final GroupSelector m12333e(Tag tag, String str) {
        GroupSelector groupSelector = new GroupSelector();
        groupSelector.f18208a = tag;
        groupSelector.f18209b = str;
        return groupSelector;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof GroupSelector)) {
            return false;
        }
        GroupSelector groupSelector = (GroupSelector) obj;
        Tag tag = this.f18208a;
        if (tag != groupSelector.f18208a) {
            return false;
        }
        int i = C3070a.f18211a[tag.ordinal()];
        if (i == 1) {
            String str = this.f18209b;
            String str2 = groupSelector.f18209b;
            return str == str2 || str.equals(str2);
        }
        if (i != 2) {
            return false;
        }
        String str3 = this.f18210c;
        String str4 = groupSelector.f18210c;
        return str3 == str4 || str3.equals(str4);
    }

    public String getGroupExternalIdValue() {
        if (this.f18208a == Tag.GROUP_EXTERNAL_ID) {
            return this.f18210c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.GROUP_EXTERNAL_ID, but was Tag." + this.f18208a.name());
    }

    public String getGroupIdValue() {
        if (this.f18208a == Tag.GROUP_ID) {
            return this.f18209b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.GROUP_ID, but was Tag." + this.f18208a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18208a, this.f18209b, this.f18210c});
    }

    public boolean isGroupExternalId() {
        return this.f18208a == Tag.GROUP_EXTERNAL_ID;
    }

    public boolean isGroupId() {
        return this.f18208a == Tag.GROUP_ID;
    }

    public Tag tag() {
        return this.f18208a;
    }

    public String toString() {
        return C3071b.f18212b.serialize((C3071b) this, false);
    }

    public String toStringMultiline() {
        return C3071b.f18212b.serialize((C3071b) this, true);
    }
}
