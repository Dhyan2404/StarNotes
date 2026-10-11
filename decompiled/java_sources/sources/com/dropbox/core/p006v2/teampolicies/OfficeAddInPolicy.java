package com.dropbox.core.p006v2.teampolicies;

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
public enum OfficeAddInPolicy {
    DISABLED,
    ENABLED,
    OTHER;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<OfficeAddInPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public OfficeAddInPolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            OfficeAddInPolicy officeAddInPolicy;
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
                if ("disabled".equals(readTag)) {
                    officeAddInPolicy = OfficeAddInPolicy.DISABLED;
                } else if ("enabled".equals(readTag)) {
                    officeAddInPolicy = OfficeAddInPolicy.ENABLED;
                } else {
                    officeAddInPolicy = OfficeAddInPolicy.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return officeAddInPolicy;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(OfficeAddInPolicy officeAddInPolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4417a.f20712a[officeAddInPolicy.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("disabled");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("enabled");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teampolicies.OfficeAddInPolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4417a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20712a;

        static {
            int[] iArr = new int[OfficeAddInPolicy.values().length];
            f20712a = iArr;
            try {
                iArr[OfficeAddInPolicy.DISABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20712a[OfficeAddInPolicy.ENABLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }
}
