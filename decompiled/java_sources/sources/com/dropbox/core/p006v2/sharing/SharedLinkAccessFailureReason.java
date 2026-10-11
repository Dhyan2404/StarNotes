package com.dropbox.core.p006v2.sharing;

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
public enum SharedLinkAccessFailureReason {
    LOGIN_REQUIRED,
    EMAIL_VERIFY_REQUIRED,
    PASSWORD_REQUIRED,
    TEAM_ONLY,
    OWNER_ONLY,
    OTHER;

    /* renamed from: com.dropbox.core.v2.sharing.SharedLinkAccessFailureReason$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2949a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17973a;

        static {
            int[] iArr = new int[SharedLinkAccessFailureReason.values().length];
            f17973a = iArr;
            try {
                iArr[SharedLinkAccessFailureReason.LOGIN_REQUIRED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17973a[SharedLinkAccessFailureReason.EMAIL_VERIFY_REQUIRED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17973a[SharedLinkAccessFailureReason.PASSWORD_REQUIRED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17973a[SharedLinkAccessFailureReason.TEAM_ONLY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17973a[SharedLinkAccessFailureReason.OWNER_ONLY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.SharedLinkAccessFailureReason$b */
    /* loaded from: classes4.dex */
    public static class C2950b extends UnionSerializer<SharedLinkAccessFailureReason> {

        /* renamed from: b */
        public static final C2950b f17974b = new C2950b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedLinkAccessFailureReason deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            SharedLinkAccessFailureReason sharedLinkAccessFailureReason = "login_required".equals(readTag) ? SharedLinkAccessFailureReason.LOGIN_REQUIRED : "email_verify_required".equals(readTag) ? SharedLinkAccessFailureReason.EMAIL_VERIFY_REQUIRED : "password_required".equals(readTag) ? SharedLinkAccessFailureReason.PASSWORD_REQUIRED : "team_only".equals(readTag) ? SharedLinkAccessFailureReason.TEAM_ONLY : "owner_only".equals(readTag) ? SharedLinkAccessFailureReason.OWNER_ONLY : SharedLinkAccessFailureReason.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return sharedLinkAccessFailureReason;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedLinkAccessFailureReason sharedLinkAccessFailureReason, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2949a.f17973a[sharedLinkAccessFailureReason.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("login_required");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("email_verify_required");
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString("password_required");
                return;
            }
            if (i == 4) {
                jsonGenerator.writeString("team_only");
            } else if (i != 5) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("owner_only");
            }
        }
    }
}
