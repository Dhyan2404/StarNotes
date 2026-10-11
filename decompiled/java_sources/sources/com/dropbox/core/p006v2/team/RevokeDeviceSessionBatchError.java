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
public enum RevokeDeviceSessionBatchError {
    OTHER;

    /* renamed from: com.dropbox.core.v2.team.RevokeDeviceSessionBatchError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3197a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18449a = new int[RevokeDeviceSessionBatchError.values().length];
    }

    /* renamed from: com.dropbox.core.v2.team.RevokeDeviceSessionBatchError$b */
    /* loaded from: classes4.dex */
    public static class C3198b extends UnionSerializer<RevokeDeviceSessionBatchError> {

        /* renamed from: b */
        public static final C3198b f18450b = new C3198b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RevokeDeviceSessionBatchError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            RevokeDeviceSessionBatchError revokeDeviceSessionBatchError = RevokeDeviceSessionBatchError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return revokeDeviceSessionBatchError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RevokeDeviceSessionBatchError revokeDeviceSessionBatchError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3197a.f18449a[revokeDeviceSessionBatchError.ordinal()];
            jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
        }
    }
}
