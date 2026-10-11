package com.dropbox.core.p006v2.teampolicies;

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
public enum RolloutMethod {
    UNLINK_ALL,
    UNLINK_MOST_INACTIVE,
    ADD_MEMBER_TO_EXCEPTIONS;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<RolloutMethod> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public RolloutMethod deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            RolloutMethod rolloutMethod;
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
                if ("unlink_all".equals(readTag)) {
                    rolloutMethod = RolloutMethod.UNLINK_ALL;
                } else if ("unlink_most_inactive".equals(readTag)) {
                    rolloutMethod = RolloutMethod.UNLINK_MOST_INACTIVE;
                } else if ("add_member_to_exceptions".equals(readTag)) {
                    rolloutMethod = RolloutMethod.ADD_MEMBER_TO_EXCEPTIONS;
                } else {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return rolloutMethod;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(RolloutMethod rolloutMethod, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4421a.f20716a[rolloutMethod.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("unlink_all");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("unlink_most_inactive");
            } else {
                if (i == 3) {
                    jsonGenerator.writeString("add_member_to_exceptions");
                    return;
                }
                throw new IllegalArgumentException("Unrecognized tag: " + rolloutMethod);
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teampolicies.RolloutMethod$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4421a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20716a;

        static {
            int[] iArr = new int[RolloutMethod.values().length];
            f20716a = iArr;
            try {
                iArr[RolloutMethod.UNLINK_ALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20716a[RolloutMethod.UNLINK_MOST_INACTIVE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20716a[RolloutMethod.ADD_MEMBER_TO_EXCEPTIONS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }
}
