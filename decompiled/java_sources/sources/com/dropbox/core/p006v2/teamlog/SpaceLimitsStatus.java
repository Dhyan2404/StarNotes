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
public enum SpaceLimitsStatus {
    WITHIN_QUOTA,
    NEAR_QUOTA,
    OVER_QUOTA,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.SpaceLimitsStatus$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4235a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20511a;

        static {
            int[] iArr = new int[SpaceLimitsStatus.values().length];
            f20511a = iArr;
            try {
                iArr[SpaceLimitsStatus.WITHIN_QUOTA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20511a[SpaceLimitsStatus.NEAR_QUOTA.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20511a[SpaceLimitsStatus.OVER_QUOTA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.SpaceLimitsStatus$b */
    /* loaded from: classes4.dex */
    public static class C4236b extends UnionSerializer<SpaceLimitsStatus> {

        /* renamed from: b */
        public static final C4236b f20512b = new C4236b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SpaceLimitsStatus deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            SpaceLimitsStatus spaceLimitsStatus = "within_quota".equals(readTag) ? SpaceLimitsStatus.WITHIN_QUOTA : "near_quota".equals(readTag) ? SpaceLimitsStatus.NEAR_QUOTA : "over_quota".equals(readTag) ? SpaceLimitsStatus.OVER_QUOTA : SpaceLimitsStatus.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return spaceLimitsStatus;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SpaceLimitsStatus spaceLimitsStatus, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4235a.f20511a[spaceLimitsStatus.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("within_quota");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("near_quota");
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("over_quota");
            }
        }
    }
}
