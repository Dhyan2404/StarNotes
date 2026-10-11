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
public enum SharingUserError {
    EMAIL_UNVERIFIED,
    OTHER;

    /* renamed from: com.dropbox.core.v2.sharing.SharingUserError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2962a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17990a;

        static {
            int[] iArr = new int[SharingUserError.values().length];
            f17990a = iArr;
            try {
                iArr[SharingUserError.EMAIL_UNVERIFIED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.SharingUserError$b */
    /* loaded from: classes4.dex */
    public static class C2963b extends UnionSerializer<SharingUserError> {

        /* renamed from: b */
        public static final C2963b f17991b = new C2963b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharingUserError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            SharingUserError sharingUserError = "email_unverified".equals(readTag) ? SharingUserError.EMAIL_UNVERIFIED : SharingUserError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return sharingUserError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharingUserError sharingUserError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C2962a.f17990a[sharingUserError.ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("email_unverified");
            }
        }
    }
}
