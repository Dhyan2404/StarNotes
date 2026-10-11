package com.dropbox.core.p006v2.sharing;

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
public enum ResolvedVisibility {
    PUBLIC,
    TEAM_ONLY,
    PASSWORD,
    TEAM_AND_PASSWORD,
    SHARED_FOLDER_ONLY,
    OTHER;

    /* renamed from: com.dropbox.core.v2.sharing.ResolvedVisibility$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2922a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17919a;

        static {
            int[] iArr = new int[ResolvedVisibility.values().length];
            f17919a = iArr;
            try {
                iArr[ResolvedVisibility.PUBLIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17919a[ResolvedVisibility.TEAM_ONLY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17919a[ResolvedVisibility.PASSWORD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17919a[ResolvedVisibility.TEAM_AND_PASSWORD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17919a[ResolvedVisibility.SHARED_FOLDER_ONLY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.ResolvedVisibility$b */
    /* loaded from: classes4.dex */
    public static class C2923b extends UnionSerializer<ResolvedVisibility> {

        /* renamed from: b */
        public static final C2923b f17920b = new C2923b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ResolvedVisibility deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            ResolvedVisibility resolvedVisibility = "public".equals(readTag) ? ResolvedVisibility.PUBLIC : "team_only".equals(readTag) ? ResolvedVisibility.TEAM_ONLY : "password".equals(readTag) ? ResolvedVisibility.PASSWORD : "team_and_password".equals(readTag) ? ResolvedVisibility.TEAM_AND_PASSWORD : "shared_folder_only".equals(readTag) ? ResolvedVisibility.SHARED_FOLDER_ONLY : ResolvedVisibility.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return resolvedVisibility;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ResolvedVisibility resolvedVisibility, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2922a.f17919a[resolvedVisibility.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("public");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("team_only");
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString("password");
                return;
            }
            if (i == 4) {
                jsonGenerator.writeString("team_and_password");
            } else if (i != 5) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("shared_folder_only");
            }
        }
    }
}
