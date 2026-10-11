package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.GroupLogInfo;
import com.dropbox.core.p006v2.teamlog.UserLogInfo;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class ParticipantLogInfo {
    public static final ParticipantLogInfo OTHER = new ParticipantLogInfo().m15947c(Tag.OTHER);

    /* renamed from: a */
    public Tag f20219a;

    /* renamed from: b */
    public UserLogInfo f20220b;

    /* renamed from: c */
    public GroupLogInfo f20221c;

    /* loaded from: classes4.dex */
    public enum Tag {
        USER,
        GROUP,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.teamlog.ParticipantLogInfo$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3946a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20222a;

        static {
            int[] iArr = new int[Tag.values().length];
            f20222a = iArr;
            try {
                iArr[Tag.USER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20222a[Tag.GROUP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20222a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.ParticipantLogInfo$b */
    /* loaded from: classes4.dex */
    public static class C3947b extends UnionSerializer<ParticipantLogInfo> {

        /* renamed from: b */
        public static final C3947b f20223b = new C3947b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ParticipantLogInfo deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            ParticipantLogInfo group;
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
            if ("user".equals(readTag)) {
                StoneSerializer.expectField("user", jsonParser);
                group = ParticipantLogInfo.user(UserLogInfo.C4392a.f20680b.deserialize(jsonParser));
            } else {
                group = "group".equals(readTag) ? ParticipantLogInfo.group(GroupLogInfo.C3662a.f19930b.deserialize(jsonParser, true)) : ParticipantLogInfo.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return group;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ParticipantLogInfo participantLogInfo, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3946a.f20222a[participantLogInfo.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("user", jsonGenerator);
                jsonGenerator.writeFieldName("user");
                UserLogInfo.C4392a.f20680b.serialize((UserLogInfo.C4392a) participantLogInfo.f20220b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("group", jsonGenerator);
            GroupLogInfo.C3662a.f19930b.serialize(participantLogInfo.f20221c, jsonGenerator, true);
            jsonGenerator.writeEndObject();
        }
    }

    public static ParticipantLogInfo group(GroupLogInfo groupLogInfo) {
        if (groupLogInfo != null) {
            return new ParticipantLogInfo().m15948d(Tag.GROUP, groupLogInfo);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static ParticipantLogInfo user(UserLogInfo userLogInfo) {
        if (userLogInfo != null) {
            return new ParticipantLogInfo().m15949e(Tag.USER, userLogInfo);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final ParticipantLogInfo m15947c(Tag tag) {
        ParticipantLogInfo participantLogInfo = new ParticipantLogInfo();
        participantLogInfo.f20219a = tag;
        return participantLogInfo;
    }

    /* renamed from: d */
    public final ParticipantLogInfo m15948d(Tag tag, GroupLogInfo groupLogInfo) {
        ParticipantLogInfo participantLogInfo = new ParticipantLogInfo();
        participantLogInfo.f20219a = tag;
        participantLogInfo.f20221c = groupLogInfo;
        return participantLogInfo;
    }

    /* renamed from: e */
    public final ParticipantLogInfo m15949e(Tag tag, UserLogInfo userLogInfo) {
        ParticipantLogInfo participantLogInfo = new ParticipantLogInfo();
        participantLogInfo.f20219a = tag;
        participantLogInfo.f20220b = userLogInfo;
        return participantLogInfo;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ParticipantLogInfo)) {
            return false;
        }
        ParticipantLogInfo participantLogInfo = (ParticipantLogInfo) obj;
        Tag tag = this.f20219a;
        if (tag != participantLogInfo.f20219a) {
            return false;
        }
        int i = C3946a.f20222a[tag.ordinal()];
        if (i == 1) {
            UserLogInfo userLogInfo = this.f20220b;
            UserLogInfo userLogInfo2 = participantLogInfo.f20220b;
            return userLogInfo == userLogInfo2 || userLogInfo.equals(userLogInfo2);
        }
        if (i != 2) {
            return i == 3;
        }
        GroupLogInfo groupLogInfo = this.f20221c;
        GroupLogInfo groupLogInfo2 = participantLogInfo.f20221c;
        return groupLogInfo == groupLogInfo2 || groupLogInfo.equals(groupLogInfo2);
    }

    public GroupLogInfo getGroupValue() {
        if (this.f20219a == Tag.GROUP) {
            return this.f20221c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.GROUP, but was Tag." + this.f20219a.name());
    }

    public UserLogInfo getUserValue() {
        if (this.f20219a == Tag.USER) {
            return this.f20220b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.USER, but was Tag." + this.f20219a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f20219a, this.f20220b, this.f20221c});
    }

    public boolean isGroup() {
        return this.f20219a == Tag.GROUP;
    }

    public boolean isOther() {
        return this.f20219a == Tag.OTHER;
    }

    public boolean isUser() {
        return this.f20219a == Tag.USER;
    }

    public Tag tag() {
        return this.f20219a;
    }

    public String toString() {
        return C3947b.f20223b.serialize((C3947b) this, false);
    }

    public String toStringMultiline() {
        return C3947b.f20223b.serialize((C3947b) this, true);
    }
}
