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
public enum MemberSuggestionsPolicy {
    DISABLED,
    ENABLED,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.MemberSuggestionsPolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3785a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20058a;

        static {
            int[] iArr = new int[MemberSuggestionsPolicy.values().length];
            f20058a = iArr;
            try {
                iArr[MemberSuggestionsPolicy.DISABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20058a[MemberSuggestionsPolicy.ENABLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.MemberSuggestionsPolicy$b */
    /* loaded from: classes4.dex */
    public static class C3786b extends UnionSerializer<MemberSuggestionsPolicy> {

        /* renamed from: b */
        public static final C3786b f20059b = new C3786b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MemberSuggestionsPolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            MemberSuggestionsPolicy memberSuggestionsPolicy = "disabled".equals(readTag) ? MemberSuggestionsPolicy.DISABLED : "enabled".equals(readTag) ? MemberSuggestionsPolicy.ENABLED : MemberSuggestionsPolicy.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return memberSuggestionsPolicy;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MemberSuggestionsPolicy memberSuggestionsPolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3785a.f20058a[memberSuggestionsPolicy.ordinal()];
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
