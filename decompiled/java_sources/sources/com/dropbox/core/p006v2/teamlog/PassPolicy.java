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
public enum PassPolicy {
    ENABLED,
    ALLOW,
    DISABLED,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.PassPolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3948a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20224a;

        static {
            int[] iArr = new int[PassPolicy.values().length];
            f20224a = iArr;
            try {
                iArr[PassPolicy.ENABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20224a[PassPolicy.ALLOW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20224a[PassPolicy.DISABLED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.PassPolicy$b */
    /* loaded from: classes4.dex */
    public static class C3949b extends UnionSerializer<PassPolicy> {

        /* renamed from: b */
        public static final C3949b f20225b = new C3949b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PassPolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            PassPolicy passPolicy = "enabled".equals(readTag) ? PassPolicy.ENABLED : "allow".equals(readTag) ? PassPolicy.ALLOW : "disabled".equals(readTag) ? PassPolicy.DISABLED : PassPolicy.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return passPolicy;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PassPolicy passPolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3948a.f20224a[passPolicy.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("enabled");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("allow");
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("disabled");
            }
        }
    }
}
