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
public enum ExcludedUsersUpdateError {
    USERS_NOT_IN_TEAM,
    TOO_MANY_USERS,
    OTHER;

    /* renamed from: com.dropbox.core.v2.team.ExcludedUsersUpdateError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3038a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18160a;

        static {
            int[] iArr = new int[ExcludedUsersUpdateError.values().length];
            f18160a = iArr;
            try {
                iArr[ExcludedUsersUpdateError.USERS_NOT_IN_TEAM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18160a[ExcludedUsersUpdateError.TOO_MANY_USERS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.ExcludedUsersUpdateError$b */
    /* loaded from: classes4.dex */
    public static class C3039b extends UnionSerializer<ExcludedUsersUpdateError> {

        /* renamed from: b */
        public static final C3039b f18161b = new C3039b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ExcludedUsersUpdateError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            ExcludedUsersUpdateError excludedUsersUpdateError = "users_not_in_team".equals(readTag) ? ExcludedUsersUpdateError.USERS_NOT_IN_TEAM : "too_many_users".equals(readTag) ? ExcludedUsersUpdateError.TOO_MANY_USERS : ExcludedUsersUpdateError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return excludedUsersUpdateError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ExcludedUsersUpdateError excludedUsersUpdateError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3038a.f18160a[excludedUsersUpdateError.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("users_not_in_team");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("too_many_users");
            }
        }
    }
}
