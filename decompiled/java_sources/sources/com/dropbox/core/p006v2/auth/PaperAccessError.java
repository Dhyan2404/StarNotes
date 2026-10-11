package com.dropbox.core.p006v2.auth;

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
public enum PaperAccessError {
    PAPER_DISABLED,
    NOT_PAPER_USER,
    OTHER;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<PaperAccessError> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public PaperAccessError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            PaperAccessError paperAccessError;
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
                if ("paper_disabled".equals(readTag)) {
                    paperAccessError = PaperAccessError.PAPER_DISABLED;
                } else if ("not_paper_user".equals(readTag)) {
                    paperAccessError = PaperAccessError.NOT_PAPER_USER;
                } else {
                    paperAccessError = PaperAccessError.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return paperAccessError;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(PaperAccessError paperAccessError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2377a.f16814a[paperAccessError.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("paper_disabled");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("not_paper_user");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.auth.PaperAccessError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2377a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16814a;

        static {
            int[] iArr = new int[PaperAccessError.values().length];
            f16814a = iArr;
            try {
                iArr[PaperAccessError.PAPER_DISABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16814a[PaperAccessError.NOT_PAPER_USER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }
}
