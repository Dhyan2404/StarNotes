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
public enum RevokeDeviceSessionError {
    DEVICE_SESSION_NOT_FOUND,
    MEMBER_NOT_FOUND,
    OTHER;

    /* renamed from: com.dropbox.core.v2.team.RevokeDeviceSessionError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3200a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18452a;

        static {
            int[] iArr = new int[RevokeDeviceSessionError.values().length];
            f18452a = iArr;
            try {
                iArr[RevokeDeviceSessionError.DEVICE_SESSION_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18452a[RevokeDeviceSessionError.MEMBER_NOT_FOUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.RevokeDeviceSessionError$b */
    /* loaded from: classes4.dex */
    public static class C3201b extends UnionSerializer<RevokeDeviceSessionError> {

        /* renamed from: b */
        public static final C3201b f18453b = new C3201b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RevokeDeviceSessionError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            RevokeDeviceSessionError revokeDeviceSessionError = "device_session_not_found".equals(readTag) ? RevokeDeviceSessionError.DEVICE_SESSION_NOT_FOUND : "member_not_found".equals(readTag) ? RevokeDeviceSessionError.MEMBER_NOT_FOUND : RevokeDeviceSessionError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return revokeDeviceSessionError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RevokeDeviceSessionError revokeDeviceSessionError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3200a.f18452a[revokeDeviceSessionError.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("device_session_not_found");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("member_not_found");
            }
        }
    }
}
