package com.dropbox.core.p006v2.paper;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.IOException;

/* loaded from: classes4.dex */
public enum PaperApiCursorError {
    EXPIRED_CURSOR,
    INVALID_CURSOR,
    WRONG_USER_IN_CURSOR,
    RESET,
    OTHER;

    /* renamed from: com.dropbox.core.v2.paper.PaperApiCursorError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2758a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17600a;

        static {
            int[] iArr = new int[PaperApiCursorError.values().length];
            f17600a = iArr;
            try {
                iArr[PaperApiCursorError.EXPIRED_CURSOR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17600a[PaperApiCursorError.INVALID_CURSOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17600a[PaperApiCursorError.WRONG_USER_IN_CURSOR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17600a[PaperApiCursorError.RESET.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.paper.PaperApiCursorError$b */
    /* loaded from: classes4.dex */
    public static class C2759b extends UnionSerializer<PaperApiCursorError> {

        /* renamed from: b */
        public static final C2759b f17601b = new C2759b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PaperApiCursorError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            PaperApiCursorError paperApiCursorError = "expired_cursor".equals(readTag) ? PaperApiCursorError.EXPIRED_CURSOR : "invalid_cursor".equals(readTag) ? PaperApiCursorError.INVALID_CURSOR : "wrong_user_in_cursor".equals(readTag) ? PaperApiCursorError.WRONG_USER_IN_CURSOR : Constants.RESET.equals(readTag) ? PaperApiCursorError.RESET : PaperApiCursorError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return paperApiCursorError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PaperApiCursorError paperApiCursorError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2758a.f17600a[paperApiCursorError.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("expired_cursor");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("invalid_cursor");
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString("wrong_user_in_cursor");
            } else if (i != 4) {
                jsonGenerator.writeString(com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString(Constants.RESET);
            }
        }
    }
}
