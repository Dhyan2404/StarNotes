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
public enum PaperMemberPolicy {
    ANYONE_WITH_LINK,
    ONLY_TEAM,
    TEAM_AND_EXPLICITLY_SHARED,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.PaperMemberPolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3936a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20209a;

        static {
            int[] iArr = new int[PaperMemberPolicy.values().length];
            f20209a = iArr;
            try {
                iArr[PaperMemberPolicy.ANYONE_WITH_LINK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20209a[PaperMemberPolicy.ONLY_TEAM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20209a[PaperMemberPolicy.TEAM_AND_EXPLICITLY_SHARED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.PaperMemberPolicy$b */
    /* loaded from: classes4.dex */
    public static class C3937b extends UnionSerializer<PaperMemberPolicy> {

        /* renamed from: b */
        public static final C3937b f20210b = new C3937b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PaperMemberPolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            PaperMemberPolicy paperMemberPolicy = "anyone_with_link".equals(readTag) ? PaperMemberPolicy.ANYONE_WITH_LINK : "only_team".equals(readTag) ? PaperMemberPolicy.ONLY_TEAM : "team_and_explicitly_shared".equals(readTag) ? PaperMemberPolicy.TEAM_AND_EXPLICITLY_SHARED : PaperMemberPolicy.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return paperMemberPolicy;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PaperMemberPolicy paperMemberPolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3936a.f20209a[paperMemberPolicy.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("anyone_with_link");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("only_team");
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("team_and_explicitly_shared");
            }
        }
    }
}
