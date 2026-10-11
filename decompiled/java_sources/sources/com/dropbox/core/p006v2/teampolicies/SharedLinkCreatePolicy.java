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
public enum SharedLinkCreatePolicy {
    DEFAULT_PUBLIC,
    DEFAULT_TEAM_ONLY,
    TEAM_ONLY,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teampolicies.SharedLinkCreatePolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4426a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20721a;

        static {
            int[] iArr = new int[SharedLinkCreatePolicy.values().length];
            f20721a = iArr;
            try {
                iArr[SharedLinkCreatePolicy.DEFAULT_PUBLIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20721a[SharedLinkCreatePolicy.DEFAULT_TEAM_ONLY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20721a[SharedLinkCreatePolicy.TEAM_ONLY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teampolicies.SharedLinkCreatePolicy$b */
    /* loaded from: classes4.dex */
    public static class C4427b extends UnionSerializer<SharedLinkCreatePolicy> {

        /* renamed from: b */
        public static final C4427b f20722b = new C4427b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedLinkCreatePolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            SharedLinkCreatePolicy sharedLinkCreatePolicy = "default_public".equals(readTag) ? SharedLinkCreatePolicy.DEFAULT_PUBLIC : "default_team_only".equals(readTag) ? SharedLinkCreatePolicy.DEFAULT_TEAM_ONLY : "team_only".equals(readTag) ? SharedLinkCreatePolicy.TEAM_ONLY : SharedLinkCreatePolicy.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return sharedLinkCreatePolicy;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedLinkCreatePolicy sharedLinkCreatePolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4426a.f20721a[sharedLinkCreatePolicy.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("default_public");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("default_team_only");
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("team_only");
            }
        }
    }
}
