package com.dropbox.core.p006v2.team;

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
public enum MembersUnsuspendError {
    USER_NOT_FOUND,
    USER_NOT_IN_TEAM,
    OTHER,
    UNSUSPEND_NON_SUSPENDED_MEMBER,
    TEAM_LICENSE_LIMIT;

    /* renamed from: com.dropbox.core.v2.team.MembersUnsuspendError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3181a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18412a;

        static {
            int[] iArr = new int[MembersUnsuspendError.values().length];
            f18412a = iArr;
            try {
                iArr[MembersUnsuspendError.USER_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18412a[MembersUnsuspendError.USER_NOT_IN_TEAM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18412a[MembersUnsuspendError.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18412a[MembersUnsuspendError.UNSUSPEND_NON_SUSPENDED_MEMBER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18412a[MembersUnsuspendError.TEAM_LICENSE_LIMIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.MembersUnsuspendError$b */
    /* loaded from: classes4.dex */
    public static class C3182b extends UnionSerializer<MembersUnsuspendError> {

        /* renamed from: b */
        public static final C3182b f18413b = new C3182b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MembersUnsuspendError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            MembersUnsuspendError membersUnsuspendError;
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
            if ("user_not_found".equals(readTag)) {
                membersUnsuspendError = MembersUnsuspendError.USER_NOT_FOUND;
            } else if ("user_not_in_team".equals(readTag)) {
                membersUnsuspendError = MembersUnsuspendError.USER_NOT_IN_TEAM;
            } else if (Constants.ATTRVAL_OTHER.equals(readTag)) {
                membersUnsuspendError = MembersUnsuspendError.OTHER;
            } else if ("unsuspend_non_suspended_member".equals(readTag)) {
                membersUnsuspendError = MembersUnsuspendError.UNSUSPEND_NON_SUSPENDED_MEMBER;
            } else {
                if (!"team_license_limit".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                membersUnsuspendError = MembersUnsuspendError.TEAM_LICENSE_LIMIT;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return membersUnsuspendError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MembersUnsuspendError membersUnsuspendError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3181a.f18412a[membersUnsuspendError.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("user_not_found");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("user_not_in_team");
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            if (i == 4) {
                jsonGenerator.writeString("unsuspend_non_suspended_member");
            } else {
                if (i == 5) {
                    jsonGenerator.writeString("team_license_limit");
                    return;
                }
                throw new IllegalArgumentException("Unrecognized tag: " + membersUnsuspendError);
            }
        }
    }
}
