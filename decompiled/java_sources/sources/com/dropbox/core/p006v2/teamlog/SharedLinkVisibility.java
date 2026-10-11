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
public enum SharedLinkVisibility {
    NO_ONE,
    PASSWORD,
    PUBLIC,
    TEAM_ONLY,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.SharedLinkVisibility$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4138a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20414a;

        static {
            int[] iArr = new int[SharedLinkVisibility.values().length];
            f20414a = iArr;
            try {
                iArr[SharedLinkVisibility.NO_ONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20414a[SharedLinkVisibility.PASSWORD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20414a[SharedLinkVisibility.PUBLIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f20414a[SharedLinkVisibility.TEAM_ONLY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.SharedLinkVisibility$b */
    /* loaded from: classes4.dex */
    public static class C4139b extends UnionSerializer<SharedLinkVisibility> {

        /* renamed from: b */
        public static final C4139b f20415b = new C4139b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedLinkVisibility deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            SharedLinkVisibility sharedLinkVisibility = "no_one".equals(readTag) ? SharedLinkVisibility.NO_ONE : "password".equals(readTag) ? SharedLinkVisibility.PASSWORD : "public".equals(readTag) ? SharedLinkVisibility.PUBLIC : "team_only".equals(readTag) ? SharedLinkVisibility.TEAM_ONLY : SharedLinkVisibility.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return sharedLinkVisibility;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedLinkVisibility sharedLinkVisibility, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4138a.f20414a[sharedLinkVisibility.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("no_one");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("password");
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString("public");
            } else if (i != 4) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("team_only");
            }
        }
    }
}
