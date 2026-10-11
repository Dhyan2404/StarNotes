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
public enum MembersSendWelcomeError {
    USER_NOT_FOUND,
    USER_NOT_IN_TEAM,
    OTHER;

    /* renamed from: com.dropbox.core.v2.team.MembersSendWelcomeError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3167a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18387a;

        static {
            int[] iArr = new int[MembersSendWelcomeError.values().length];
            f18387a = iArr;
            try {
                iArr[MembersSendWelcomeError.USER_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18387a[MembersSendWelcomeError.USER_NOT_IN_TEAM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.MembersSendWelcomeError$b */
    /* loaded from: classes4.dex */
    public static class C3168b extends UnionSerializer<MembersSendWelcomeError> {

        /* renamed from: b */
        public static final C3168b f18388b = new C3168b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MembersSendWelcomeError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            MembersSendWelcomeError membersSendWelcomeError = "user_not_found".equals(readTag) ? MembersSendWelcomeError.USER_NOT_FOUND : "user_not_in_team".equals(readTag) ? MembersSendWelcomeError.USER_NOT_IN_TEAM : MembersSendWelcomeError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return membersSendWelcomeError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MembersSendWelcomeError membersSendWelcomeError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3167a.f18387a[membersSendWelcomeError.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("user_not_found");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("user_not_in_team");
            }
        }
    }
}
