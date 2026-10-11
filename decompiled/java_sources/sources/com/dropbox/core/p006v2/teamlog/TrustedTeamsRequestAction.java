package com.dropbox.core.p006v2.teamlog;

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
public enum TrustedTeamsRequestAction {
    INVITED,
    EXPIRED,
    REVOKED,
    ACCEPTED,
    DECLINED,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.TrustedTeamsRequestAction$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4383a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20671a;

        static {
            int[] iArr = new int[TrustedTeamsRequestAction.values().length];
            f20671a = iArr;
            try {
                iArr[TrustedTeamsRequestAction.INVITED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20671a[TrustedTeamsRequestAction.EXPIRED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20671a[TrustedTeamsRequestAction.REVOKED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f20671a[TrustedTeamsRequestAction.ACCEPTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f20671a[TrustedTeamsRequestAction.DECLINED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.TrustedTeamsRequestAction$b */
    /* loaded from: classes4.dex */
    public static class C4384b extends UnionSerializer<TrustedTeamsRequestAction> {

        /* renamed from: b */
        public static final C4384b f20672b = new C4384b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TrustedTeamsRequestAction deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            TrustedTeamsRequestAction trustedTeamsRequestAction = "invited".equals(readTag) ? TrustedTeamsRequestAction.INVITED : "expired".equals(readTag) ? TrustedTeamsRequestAction.EXPIRED : "revoked".equals(readTag) ? TrustedTeamsRequestAction.REVOKED : "accepted".equals(readTag) ? TrustedTeamsRequestAction.ACCEPTED : "declined".equals(readTag) ? TrustedTeamsRequestAction.DECLINED : TrustedTeamsRequestAction.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return trustedTeamsRequestAction;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TrustedTeamsRequestAction trustedTeamsRequestAction, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4383a.f20671a[trustedTeamsRequestAction.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("invited");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("expired");
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString("revoked");
                return;
            }
            if (i == 4) {
                jsonGenerator.writeString("accepted");
            } else if (i != 5) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("declined");
            }
        }
    }
}
