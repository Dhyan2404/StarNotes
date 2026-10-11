package com.dropbox.core.p006v2.team;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* loaded from: classes4.dex */
public enum GroupAccessType {
    MEMBER,
    OWNER;

    /* renamed from: com.dropbox.core.v2.team.GroupAccessType$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3054a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18181a;

        static {
            int[] iArr = new int[GroupAccessType.values().length];
            f18181a = iArr;
            try {
                iArr[GroupAccessType.MEMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18181a[GroupAccessType.OWNER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.GroupAccessType$b */
    /* loaded from: classes4.dex */
    public static class C3055b extends UnionSerializer<GroupAccessType> {

        /* renamed from: b */
        public static final C3055b f18182b = new C3055b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GroupAccessType deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            GroupAccessType groupAccessType;
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
            if ("member".equals(readTag)) {
                groupAccessType = GroupAccessType.MEMBER;
            } else {
                if (!"owner".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                groupAccessType = GroupAccessType.OWNER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return groupAccessType;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GroupAccessType groupAccessType, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3054a.f18181a[groupAccessType.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("member");
            } else {
                if (i == 2) {
                    jsonGenerator.writeString("owner");
                    return;
                }
                throw new IllegalArgumentException("Unrecognized tag: " + groupAccessType);
            }
        }
    }
}
