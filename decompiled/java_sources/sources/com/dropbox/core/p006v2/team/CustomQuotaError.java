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
public enum CustomQuotaError {
    TOO_MANY_USERS,
    OTHER;

    /* renamed from: com.dropbox.core.v2.team.CustomQuotaError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3018a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18124a;

        static {
            int[] iArr = new int[CustomQuotaError.values().length];
            f18124a = iArr;
            try {
                iArr[CustomQuotaError.TOO_MANY_USERS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.CustomQuotaError$b */
    /* loaded from: classes4.dex */
    public static class C3019b extends UnionSerializer<CustomQuotaError> {

        /* renamed from: b */
        public static final C3019b f18125b = new C3019b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public CustomQuotaError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            CustomQuotaError customQuotaError = "too_many_users".equals(readTag) ? CustomQuotaError.TOO_MANY_USERS : CustomQuotaError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return customQuotaError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(CustomQuotaError customQuotaError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C3018a.f18124a[customQuotaError.ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("too_many_users");
            }
        }
    }
}
