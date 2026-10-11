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
public enum MembersSuspendError {
    USER_NOT_FOUND,
    USER_NOT_IN_TEAM,
    OTHER,
    SUSPEND_INACTIVE_USER,
    SUSPEND_LAST_ADMIN,
    TEAM_LICENSE_LIMIT;

    /* renamed from: com.dropbox.core.v2.team.MembersSuspendError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3177a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18408a;

        static {
            int[] iArr = new int[MembersSuspendError.values().length];
            f18408a = iArr;
            try {
                iArr[MembersSuspendError.USER_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18408a[MembersSuspendError.USER_NOT_IN_TEAM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18408a[MembersSuspendError.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18408a[MembersSuspendError.SUSPEND_INACTIVE_USER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18408a[MembersSuspendError.SUSPEND_LAST_ADMIN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f18408a[MembersSuspendError.TEAM_LICENSE_LIMIT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.MembersSuspendError$b */
    /* loaded from: classes4.dex */
    public static class C3178b extends UnionSerializer<MembersSuspendError> {

        /* renamed from: b */
        public static final C3178b f18409b = new C3178b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MembersSuspendError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            MembersSuspendError membersSuspendError;
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
                membersSuspendError = MembersSuspendError.USER_NOT_FOUND;
            } else if ("user_not_in_team".equals(readTag)) {
                membersSuspendError = MembersSuspendError.USER_NOT_IN_TEAM;
            } else if (Constants.ATTRVAL_OTHER.equals(readTag)) {
                membersSuspendError = MembersSuspendError.OTHER;
            } else if ("suspend_inactive_user".equals(readTag)) {
                membersSuspendError = MembersSuspendError.SUSPEND_INACTIVE_USER;
            } else if ("suspend_last_admin".equals(readTag)) {
                membersSuspendError = MembersSuspendError.SUSPEND_LAST_ADMIN;
            } else {
                if (!"team_license_limit".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                membersSuspendError = MembersSuspendError.TEAM_LICENSE_LIMIT;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return membersSuspendError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MembersSuspendError membersSuspendError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C3177a.f18408a[membersSuspendError.ordinal()]) {
                case 1:
                    jsonGenerator.writeString("user_not_found");
                    return;
                case 2:
                    jsonGenerator.writeString("user_not_in_team");
                    return;
                case 3:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
                case 4:
                    jsonGenerator.writeString("suspend_inactive_user");
                    return;
                case 5:
                    jsonGenerator.writeString("suspend_last_admin");
                    return;
                case 6:
                    jsonGenerator.writeString("team_license_limit");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + membersSuspendError);
            }
        }
    }
}
