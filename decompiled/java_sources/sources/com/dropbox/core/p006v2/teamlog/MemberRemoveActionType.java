package com.dropbox.core.p006v2.teamlog;

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
public enum MemberRemoveActionType {
    DELETE,
    OFFBOARD,
    LEAVE,
    OFFBOARD_AND_RETAIN_TEAM_FOLDERS,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.MemberRemoveActionType$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3749a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20022a;

        static {
            int[] iArr = new int[MemberRemoveActionType.values().length];
            f20022a = iArr;
            try {
                iArr[MemberRemoveActionType.DELETE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20022a[MemberRemoveActionType.OFFBOARD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20022a[MemberRemoveActionType.LEAVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f20022a[MemberRemoveActionType.OFFBOARD_AND_RETAIN_TEAM_FOLDERS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.MemberRemoveActionType$b */
    /* loaded from: classes4.dex */
    public static class C3750b extends UnionSerializer<MemberRemoveActionType> {

        /* renamed from: b */
        public static final C3750b f20023b = new C3750b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MemberRemoveActionType deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
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
            MemberRemoveActionType memberRemoveActionType = "delete".equals(readTag) ? MemberRemoveActionType.DELETE : "offboard".equals(readTag) ? MemberRemoveActionType.OFFBOARD : "leave".equals(readTag) ? MemberRemoveActionType.LEAVE : "offboard_and_retain_team_folders".equals(readTag) ? MemberRemoveActionType.OFFBOARD_AND_RETAIN_TEAM_FOLDERS : MemberRemoveActionType.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return memberRemoveActionType;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MemberRemoveActionType memberRemoveActionType, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3749a.f20022a[memberRemoveActionType.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("delete");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("offboard");
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString("leave");
            } else if (i != 4) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("offboard_and_retain_team_folders");
            }
        }
    }
}
