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
public enum SetCustomQuotaError {
    TOO_MANY_USERS,
    OTHER,
    SOME_USERS_ARE_EXCLUDED;

    /* renamed from: com.dropbox.core.v2.team.SetCustomQuotaError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3210a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18462a;

        static {
            int[] iArr = new int[SetCustomQuotaError.values().length];
            f18462a = iArr;
            try {
                iArr[SetCustomQuotaError.TOO_MANY_USERS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18462a[SetCustomQuotaError.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18462a[SetCustomQuotaError.SOME_USERS_ARE_EXCLUDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.SetCustomQuotaError$b */
    /* loaded from: classes4.dex */
    public static class C3211b extends UnionSerializer<SetCustomQuotaError> {

        /* renamed from: b */
        public static final C3211b f18463b = new C3211b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SetCustomQuotaError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            SetCustomQuotaError setCustomQuotaError;
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
            if ("too_many_users".equals(readTag)) {
                setCustomQuotaError = SetCustomQuotaError.TOO_MANY_USERS;
            } else if (Constants.ATTRVAL_OTHER.equals(readTag)) {
                setCustomQuotaError = SetCustomQuotaError.OTHER;
            } else {
                if (!"some_users_are_excluded".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                setCustomQuotaError = SetCustomQuotaError.SOME_USERS_ARE_EXCLUDED;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return setCustomQuotaError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SetCustomQuotaError setCustomQuotaError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3210a.f18462a[setCustomQuotaError.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("too_many_users");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                if (i == 3) {
                    jsonGenerator.writeString("some_users_are_excluded");
                    return;
                }
                throw new IllegalArgumentException("Unrecognized tag: " + setCustomQuotaError);
            }
        }
    }
}
