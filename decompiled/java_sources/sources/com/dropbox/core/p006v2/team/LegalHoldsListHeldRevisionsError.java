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
public enum LegalHoldsListHeldRevisionsError {
    UNKNOWN_LEGAL_HOLD_ERROR,
    INSUFFICIENT_PERMISSIONS,
    OTHER,
    TRANSIENT_ERROR,
    LEGAL_HOLD_STILL_EMPTY,
    INACTIVE_LEGAL_HOLD;

    /* renamed from: com.dropbox.core.v2.team.LegalHoldsListHeldRevisionsError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3104a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18269a;

        static {
            int[] iArr = new int[LegalHoldsListHeldRevisionsError.values().length];
            f18269a = iArr;
            try {
                iArr[LegalHoldsListHeldRevisionsError.UNKNOWN_LEGAL_HOLD_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18269a[LegalHoldsListHeldRevisionsError.INSUFFICIENT_PERMISSIONS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18269a[LegalHoldsListHeldRevisionsError.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18269a[LegalHoldsListHeldRevisionsError.TRANSIENT_ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18269a[LegalHoldsListHeldRevisionsError.LEGAL_HOLD_STILL_EMPTY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f18269a[LegalHoldsListHeldRevisionsError.INACTIVE_LEGAL_HOLD.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.LegalHoldsListHeldRevisionsError$b */
    /* loaded from: classes4.dex */
    public static class C3105b extends UnionSerializer<LegalHoldsListHeldRevisionsError> {

        /* renamed from: b */
        public static final C3105b f18270b = new C3105b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LegalHoldsListHeldRevisionsError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            LegalHoldsListHeldRevisionsError legalHoldsListHeldRevisionsError;
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
            if ("unknown_legal_hold_error".equals(readTag)) {
                legalHoldsListHeldRevisionsError = LegalHoldsListHeldRevisionsError.UNKNOWN_LEGAL_HOLD_ERROR;
            } else if ("insufficient_permissions".equals(readTag)) {
                legalHoldsListHeldRevisionsError = LegalHoldsListHeldRevisionsError.INSUFFICIENT_PERMISSIONS;
            } else if (Constants.ATTRVAL_OTHER.equals(readTag)) {
                legalHoldsListHeldRevisionsError = LegalHoldsListHeldRevisionsError.OTHER;
            } else if ("transient_error".equals(readTag)) {
                legalHoldsListHeldRevisionsError = LegalHoldsListHeldRevisionsError.TRANSIENT_ERROR;
            } else if ("legal_hold_still_empty".equals(readTag)) {
                legalHoldsListHeldRevisionsError = LegalHoldsListHeldRevisionsError.LEGAL_HOLD_STILL_EMPTY;
            } else {
                if (!"inactive_legal_hold".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                legalHoldsListHeldRevisionsError = LegalHoldsListHeldRevisionsError.INACTIVE_LEGAL_HOLD;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return legalHoldsListHeldRevisionsError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LegalHoldsListHeldRevisionsError legalHoldsListHeldRevisionsError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C3104a.f18269a[legalHoldsListHeldRevisionsError.ordinal()]) {
                case 1:
                    jsonGenerator.writeString("unknown_legal_hold_error");
                    return;
                case 2:
                    jsonGenerator.writeString("insufficient_permissions");
                    return;
                case 3:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
                case 4:
                    jsonGenerator.writeString("transient_error");
                    return;
                case 5:
                    jsonGenerator.writeString("legal_hold_still_empty");
                    return;
                case 6:
                    jsonGenerator.writeString("inactive_legal_hold");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + legalHoldsListHeldRevisionsError);
            }
        }
    }
}
