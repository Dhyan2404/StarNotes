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
public enum SharingMemberPolicy {
    ALLOW,
    FORBID,
    FORBID_WITH_EXCLUSIONS,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.SharingMemberPolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4152a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20428a;

        static {
            int[] iArr = new int[SharingMemberPolicy.values().length];
            f20428a = iArr;
            try {
                iArr[SharingMemberPolicy.ALLOW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20428a[SharingMemberPolicy.FORBID.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20428a[SharingMemberPolicy.FORBID_WITH_EXCLUSIONS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.SharingMemberPolicy$b */
    /* loaded from: classes4.dex */
    public static class C4153b extends UnionSerializer<SharingMemberPolicy> {

        /* renamed from: b */
        public static final C4153b f20429b = new C4153b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharingMemberPolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            SharingMemberPolicy sharingMemberPolicy = "allow".equals(readTag) ? SharingMemberPolicy.ALLOW : "forbid".equals(readTag) ? SharingMemberPolicy.FORBID : "forbid_with_exclusions".equals(readTag) ? SharingMemberPolicy.FORBID_WITH_EXCLUSIONS : SharingMemberPolicy.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return sharingMemberPolicy;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharingMemberPolicy sharingMemberPolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4152a.f20428a[sharingMemberPolicy.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("allow");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("forbid");
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("forbid_with_exclusions");
            }
        }
    }
}
