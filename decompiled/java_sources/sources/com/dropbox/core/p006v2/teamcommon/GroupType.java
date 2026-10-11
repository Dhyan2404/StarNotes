package com.dropbox.core.p006v2.teamcommon;

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

/* loaded from: classes4.dex */
public enum GroupType {
    TEAM,
    USER_MANAGED,
    OTHER;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<GroupType> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public GroupType deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            GroupType groupType;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                readTag = StoneSerializer.getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                readTag = CompositeSerializer.readTag(jsonParser);
                z = false;
            }
            if (readTag != null) {
                if ("team".equals(readTag)) {
                    groupType = GroupType.TEAM;
                } else if ("user_managed".equals(readTag)) {
                    groupType = GroupType.USER_MANAGED;
                } else {
                    groupType = GroupType.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return groupType;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(GroupType groupType, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3324a.f18689a[groupType.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("team");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("user_managed");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamcommon.GroupType$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3324a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18689a;

        static {
            int[] iArr = new int[GroupType.values().length];
            f18689a = iArr;
            try {
                iArr[GroupType.TEAM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18689a[GroupType.USER_MANAGED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }
}
