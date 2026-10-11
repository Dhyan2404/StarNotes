package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* loaded from: classes4.dex */
public enum RequestedVisibility {
    PUBLIC,
    TEAM_ONLY,
    PASSWORD;

    /* renamed from: com.dropbox.core.v2.sharing.RequestedVisibility$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2920a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17917a;

        static {
            int[] iArr = new int[RequestedVisibility.values().length];
            f17917a = iArr;
            try {
                iArr[RequestedVisibility.PUBLIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17917a[RequestedVisibility.TEAM_ONLY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17917a[RequestedVisibility.PASSWORD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.RequestedVisibility$b */
    /* loaded from: classes4.dex */
    public static class C2921b extends UnionSerializer<RequestedVisibility> {

        /* renamed from: b */
        public static final C2921b f17918b = new C2921b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RequestedVisibility deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            RequestedVisibility requestedVisibility;
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
            if ("public".equals(readTag)) {
                requestedVisibility = RequestedVisibility.PUBLIC;
            } else if ("team_only".equals(readTag)) {
                requestedVisibility = RequestedVisibility.TEAM_ONLY;
            } else {
                if (!"password".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                requestedVisibility = RequestedVisibility.PASSWORD;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return requestedVisibility;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RequestedVisibility requestedVisibility, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2920a.f17917a[requestedVisibility.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("public");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("team_only");
            } else {
                if (i == 3) {
                    jsonGenerator.writeString("password");
                    return;
                }
                throw new IllegalArgumentException("Unrecognized tag: " + requestedVisibility);
            }
        }
    }
}
