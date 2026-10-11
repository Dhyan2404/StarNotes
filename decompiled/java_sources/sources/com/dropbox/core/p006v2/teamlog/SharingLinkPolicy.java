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
public enum SharingLinkPolicy {
    DEFAULT_PRIVATE,
    DEFAULT_PUBLIC,
    ONLY_PRIVATE,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.SharingLinkPolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4150a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20426a;

        static {
            int[] iArr = new int[SharingLinkPolicy.values().length];
            f20426a = iArr;
            try {
                iArr[SharingLinkPolicy.DEFAULT_PRIVATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20426a[SharingLinkPolicy.DEFAULT_PUBLIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20426a[SharingLinkPolicy.ONLY_PRIVATE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.SharingLinkPolicy$b */
    /* loaded from: classes4.dex */
    public static class C4151b extends UnionSerializer<SharingLinkPolicy> {

        /* renamed from: b */
        public static final C4151b f20427b = new C4151b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharingLinkPolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            SharingLinkPolicy sharingLinkPolicy = "default_private".equals(readTag) ? SharingLinkPolicy.DEFAULT_PRIVATE : "default_public".equals(readTag) ? SharingLinkPolicy.DEFAULT_PUBLIC : "only_private".equals(readTag) ? SharingLinkPolicy.ONLY_PRIVATE : SharingLinkPolicy.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return sharingLinkPolicy;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharingLinkPolicy sharingLinkPolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4150a.f20426a[sharingLinkPolicy.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("default_private");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("default_public");
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("only_private");
            }
        }
    }
}
