package com.dropbox.core.p006v2.auth;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.google.android.exoplayer2.database.VersionTable;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;

/* loaded from: classes4.dex */
public enum InvalidAccountTypeError {
    ENDPOINT,
    FEATURE,
    OTHER;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<InvalidAccountTypeError> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public InvalidAccountTypeError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            InvalidAccountTypeError invalidAccountTypeError;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                readTag = StoneSerializer.getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                readTag = CompositeSerializer.readTag(jsonParser);
                z = false;
            }
            if (readTag != null) {
                if ("endpoint".equals(readTag)) {
                    invalidAccountTypeError = InvalidAccountTypeError.ENDPOINT;
                } else if (VersionTable.f23321b.equals(readTag)) {
                    invalidAccountTypeError = InvalidAccountTypeError.FEATURE;
                } else {
                    invalidAccountTypeError = InvalidAccountTypeError.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return invalidAccountTypeError;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(InvalidAccountTypeError invalidAccountTypeError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2376a.f16813a[invalidAccountTypeError.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("endpoint");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString(VersionTable.f23321b);
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.auth.InvalidAccountTypeError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2376a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16813a;

        static {
            int[] iArr = new int[InvalidAccountTypeError.values().length];
            f16813a = iArr;
            try {
                iArr[InvalidAccountTypeError.ENDPOINT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16813a[InvalidAccountTypeError.FEATURE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }
}
