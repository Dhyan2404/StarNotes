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
public enum RewindPolicy {
    ADMINS_ONLY,
    EVERYONE,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.RewindPolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3981a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20257a;

        static {
            int[] iArr = new int[RewindPolicy.values().length];
            f20257a = iArr;
            try {
                iArr[RewindPolicy.ADMINS_ONLY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20257a[RewindPolicy.EVERYONE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.RewindPolicy$b */
    /* loaded from: classes4.dex */
    public static class C3982b extends UnionSerializer<RewindPolicy> {

        /* renamed from: b */
        public static final C3982b f20258b = new C3982b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RewindPolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            RewindPolicy rewindPolicy = "admins_only".equals(readTag) ? RewindPolicy.ADMINS_ONLY : "everyone".equals(readTag) ? RewindPolicy.EVERYONE : RewindPolicy.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return rewindPolicy;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RewindPolicy rewindPolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3981a.f20257a[rewindPolicy.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("admins_only");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("everyone");
            }
        }
    }
}
