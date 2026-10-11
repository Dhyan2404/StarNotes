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
public enum TrustedTeamsRequestState {
    INVITED,
    LINKED,
    UNLINKED,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.TrustedTeamsRequestState$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4385a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20673a;

        static {
            int[] iArr = new int[TrustedTeamsRequestState.values().length];
            f20673a = iArr;
            try {
                iArr[TrustedTeamsRequestState.INVITED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20673a[TrustedTeamsRequestState.LINKED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20673a[TrustedTeamsRequestState.UNLINKED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.TrustedTeamsRequestState$b */
    /* loaded from: classes4.dex */
    public static class C4386b extends UnionSerializer<TrustedTeamsRequestState> {

        /* renamed from: b */
        public static final C4386b f20674b = new C4386b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TrustedTeamsRequestState deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            TrustedTeamsRequestState trustedTeamsRequestState = "invited".equals(readTag) ? TrustedTeamsRequestState.INVITED : "linked".equals(readTag) ? TrustedTeamsRequestState.LINKED : "unlinked".equals(readTag) ? TrustedTeamsRequestState.UNLINKED : TrustedTeamsRequestState.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return trustedTeamsRequestState;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TrustedTeamsRequestState trustedTeamsRequestState, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4385a.f20673a[trustedTeamsRequestState.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("invited");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("linked");
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("unlinked");
            }
        }
    }
}
