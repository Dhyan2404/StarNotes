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
public enum MicrosoftOfficeAddinPolicy {
    DISABLED,
    ENABLED,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.MicrosoftOfficeAddinPolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3791a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20064a;

        static {
            int[] iArr = new int[MicrosoftOfficeAddinPolicy.values().length];
            f20064a = iArr;
            try {
                iArr[MicrosoftOfficeAddinPolicy.DISABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20064a[MicrosoftOfficeAddinPolicy.ENABLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.MicrosoftOfficeAddinPolicy$b */
    /* loaded from: classes4.dex */
    public static class C3792b extends UnionSerializer<MicrosoftOfficeAddinPolicy> {

        /* renamed from: b */
        public static final C3792b f20065b = new C3792b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MicrosoftOfficeAddinPolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            MicrosoftOfficeAddinPolicy microsoftOfficeAddinPolicy = "disabled".equals(readTag) ? MicrosoftOfficeAddinPolicy.DISABLED : "enabled".equals(readTag) ? MicrosoftOfficeAddinPolicy.ENABLED : MicrosoftOfficeAddinPolicy.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return microsoftOfficeAddinPolicy;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MicrosoftOfficeAddinPolicy microsoftOfficeAddinPolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3791a.f20064a[microsoftOfficeAddinPolicy.ordinal()];
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
