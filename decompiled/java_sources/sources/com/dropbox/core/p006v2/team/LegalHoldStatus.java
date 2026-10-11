package com.dropbox.core.p006v2.team;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;

/* loaded from: classes4.dex */
public enum LegalHoldStatus {
    ACTIVE,
    RELEASED,
    ACTIVATING,
    UPDATING,
    EXPORTING,
    RELEASING,
    OTHER;

    /* renamed from: com.dropbox.core.v2.team.LegalHoldStatus$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3099a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18262a;

        static {
            int[] iArr = new int[LegalHoldStatus.values().length];
            f18262a = iArr;
            try {
                iArr[LegalHoldStatus.ACTIVE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18262a[LegalHoldStatus.RELEASED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18262a[LegalHoldStatus.ACTIVATING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18262a[LegalHoldStatus.UPDATING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18262a[LegalHoldStatus.EXPORTING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f18262a[LegalHoldStatus.RELEASING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.LegalHoldStatus$b */
    /* loaded from: classes4.dex */
    public static class C3100b extends UnionSerializer<LegalHoldStatus> {

        /* renamed from: b */
        public static final C3100b f18263b = new C3100b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LegalHoldStatus deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            LegalHoldStatus legalHoldStatus = AppMeasurementSdk.ConditionalUserProperty.ACTIVE.equals(readTag) ? LegalHoldStatus.ACTIVE : "released".equals(readTag) ? LegalHoldStatus.RELEASED : "activating".equals(readTag) ? LegalHoldStatus.ACTIVATING : "updating".equals(readTag) ? LegalHoldStatus.UPDATING : "exporting".equals(readTag) ? LegalHoldStatus.EXPORTING : "releasing".equals(readTag) ? LegalHoldStatus.RELEASING : LegalHoldStatus.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return legalHoldStatus;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LegalHoldStatus legalHoldStatus, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C3099a.f18262a[legalHoldStatus.ordinal()]) {
                case 1:
                    jsonGenerator.writeString(AppMeasurementSdk.ConditionalUserProperty.ACTIVE);
                    return;
                case 2:
                    jsonGenerator.writeString("released");
                    return;
                case 3:
                    jsonGenerator.writeString("activating");
                    return;
                case 4:
                    jsonGenerator.writeString("updating");
                    return;
                case 5:
                    jsonGenerator.writeString("exporting");
                    return;
                case 6:
                    jsonGenerator.writeString("releasing");
                    return;
                default:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
            }
        }
    }
}
