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
public enum IdentifierType {
    EMAIL,
    FACEBOOK_PROFILE_NAME,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.IdentifierType$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3679a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19947a;

        static {
            int[] iArr = new int[IdentifierType.values().length];
            f19947a = iArr;
            try {
                iArr[IdentifierType.EMAIL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19947a[IdentifierType.FACEBOOK_PROFILE_NAME.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.IdentifierType$b */
    /* loaded from: classes4.dex */
    public static class C3680b extends UnionSerializer<IdentifierType> {

        /* renamed from: b */
        public static final C3680b f19948b = new C3680b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public IdentifierType deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            IdentifierType identifierType = "email".equals(readTag) ? IdentifierType.EMAIL : "facebook_profile_name".equals(readTag) ? IdentifierType.FACEBOOK_PROFILE_NAME : IdentifierType.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return identifierType;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(IdentifierType identifierType, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3679a.f19947a[identifierType.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("email");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("facebook_profile_name");
            }
        }
    }
}
