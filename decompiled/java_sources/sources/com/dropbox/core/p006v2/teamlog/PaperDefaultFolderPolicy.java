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
public enum PaperDefaultFolderPolicy {
    EVERYONE_IN_TEAM,
    INVITE_ONLY,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.PaperDefaultFolderPolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3864a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20137a;

        static {
            int[] iArr = new int[PaperDefaultFolderPolicy.values().length];
            f20137a = iArr;
            try {
                iArr[PaperDefaultFolderPolicy.EVERYONE_IN_TEAM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20137a[PaperDefaultFolderPolicy.INVITE_ONLY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.PaperDefaultFolderPolicy$b */
    /* loaded from: classes4.dex */
    public static class C3865b extends UnionSerializer<PaperDefaultFolderPolicy> {

        /* renamed from: b */
        public static final C3865b f20138b = new C3865b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PaperDefaultFolderPolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            PaperDefaultFolderPolicy paperDefaultFolderPolicy = "everyone_in_team".equals(readTag) ? PaperDefaultFolderPolicy.EVERYONE_IN_TEAM : "invite_only".equals(readTag) ? PaperDefaultFolderPolicy.INVITE_ONLY : PaperDefaultFolderPolicy.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return paperDefaultFolderPolicy;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PaperDefaultFolderPolicy paperDefaultFolderPolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3864a.f20137a[paperDefaultFolderPolicy.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("everyone_in_team");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("invite_only");
            }
        }
    }
}
