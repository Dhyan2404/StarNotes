package com.dropbox.core.p006v2.teamcommon;

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
import kotlinx.coroutines.DebugKt;

/* loaded from: classes4.dex */
public enum MemberSpaceLimitType {
    OFF,
    ALERT_ONLY,
    STOP_SYNC,
    OTHER;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<MemberSpaceLimitType> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public MemberSpaceLimitType deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            MemberSpaceLimitType memberSpaceLimitType;
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
                if (DebugKt.DEBUG_PROPERTY_VALUE_OFF.equals(readTag)) {
                    memberSpaceLimitType = MemberSpaceLimitType.OFF;
                } else if ("alert_only".equals(readTag)) {
                    memberSpaceLimitType = MemberSpaceLimitType.ALERT_ONLY;
                } else if ("stop_sync".equals(readTag)) {
                    memberSpaceLimitType = MemberSpaceLimitType.STOP_SYNC;
                } else {
                    memberSpaceLimitType = MemberSpaceLimitType.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return memberSpaceLimitType;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(MemberSpaceLimitType memberSpaceLimitType, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3325a.f18690a[memberSpaceLimitType.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString(DebugKt.DEBUG_PROPERTY_VALUE_OFF);
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("alert_only");
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("stop_sync");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamcommon.MemberSpaceLimitType$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3325a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18690a;

        static {
            int[] iArr = new int[MemberSpaceLimitType.values().length];
            f18690a = iArr;
            try {
                iArr[MemberSpaceLimitType.OFF.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18690a[MemberSpaceLimitType.ALERT_ONLY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18690a[MemberSpaceLimitType.STOP_SYNC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }
}
