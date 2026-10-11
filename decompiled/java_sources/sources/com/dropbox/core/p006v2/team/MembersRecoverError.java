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
public enum MembersRecoverError {
    USER_NOT_FOUND,
    USER_UNRECOVERABLE,
    USER_NOT_IN_TEAM,
    TEAM_LICENSE_LIMIT,
    OTHER;

    /* renamed from: com.dropbox.core.v2.team.MembersRecoverError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3162a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18376a;

        static {
            int[] iArr = new int[MembersRecoverError.values().length];
            f18376a = iArr;
            try {
                iArr[MembersRecoverError.USER_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18376a[MembersRecoverError.USER_UNRECOVERABLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18376a[MembersRecoverError.USER_NOT_IN_TEAM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18376a[MembersRecoverError.TEAM_LICENSE_LIMIT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.MembersRecoverError$b */
    /* loaded from: classes4.dex */
    public static class C3163b extends UnionSerializer<MembersRecoverError> {

        /* renamed from: b */
        public static final C3163b f18377b = new C3163b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MembersRecoverError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            MembersRecoverError membersRecoverError = "user_not_found".equals(readTag) ? MembersRecoverError.USER_NOT_FOUND : "user_unrecoverable".equals(readTag) ? MembersRecoverError.USER_UNRECOVERABLE : "user_not_in_team".equals(readTag) ? MembersRecoverError.USER_NOT_IN_TEAM : "team_license_limit".equals(readTag) ? MembersRecoverError.TEAM_LICENSE_LIMIT : MembersRecoverError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return membersRecoverError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MembersRecoverError membersRecoverError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3162a.f18376a[membersRecoverError.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("user_not_found");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("user_unrecoverable");
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString("user_not_in_team");
            } else if (i != 4) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("team_license_limit");
            }
        }
    }
}
