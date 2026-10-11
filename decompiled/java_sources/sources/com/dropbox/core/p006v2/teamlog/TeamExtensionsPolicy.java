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
public enum TeamExtensionsPolicy {
    DISABLED,
    ENABLED,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.TeamExtensionsPolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4269a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20545a;

        static {
            int[] iArr = new int[TeamExtensionsPolicy.values().length];
            f20545a = iArr;
            try {
                iArr[TeamExtensionsPolicy.DISABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20545a[TeamExtensionsPolicy.ENABLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.TeamExtensionsPolicy$b */
    /* loaded from: classes4.dex */
    public static class C4270b extends UnionSerializer<TeamExtensionsPolicy> {

        /* renamed from: b */
        public static final C4270b f20546b = new C4270b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamExtensionsPolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            TeamExtensionsPolicy teamExtensionsPolicy = "disabled".equals(readTag) ? TeamExtensionsPolicy.DISABLED : "enabled".equals(readTag) ? TeamExtensionsPolicy.ENABLED : TeamExtensionsPolicy.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return teamExtensionsPolicy;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamExtensionsPolicy teamExtensionsPolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4269a.f20545a[teamExtensionsPolicy.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("disabled");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("enabled");
            }
        }
    }
}
