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
public enum DeviceApprovalsPolicy {
    UNLIMITED,
    LIMITED,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.DeviceApprovalsPolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3426a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18819a;

        static {
            int[] iArr = new int[DeviceApprovalsPolicy.values().length];
            f18819a = iArr;
            try {
                iArr[DeviceApprovalsPolicy.UNLIMITED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18819a[DeviceApprovalsPolicy.LIMITED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.DeviceApprovalsPolicy$b */
    /* loaded from: classes4.dex */
    public static class C3427b extends UnionSerializer<DeviceApprovalsPolicy> {

        /* renamed from: b */
        public static final C3427b f18820b = new C3427b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DeviceApprovalsPolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            DeviceApprovalsPolicy deviceApprovalsPolicy = "unlimited".equals(readTag) ? DeviceApprovalsPolicy.UNLIMITED : "limited".equals(readTag) ? DeviceApprovalsPolicy.LIMITED : DeviceApprovalsPolicy.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return deviceApprovalsPolicy;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DeviceApprovalsPolicy deviceApprovalsPolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3426a.f18819a[deviceApprovalsPolicy.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("unlimited");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("limited");
            }
        }
    }
}
