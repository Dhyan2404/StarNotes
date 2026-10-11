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
public enum TeamMembershipType {
    FULL,
    FREE,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.TeamMembershipType$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4287a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20563a;

        static {
            int[] iArr = new int[TeamMembershipType.values().length];
            f20563a = iArr;
            try {
                iArr[TeamMembershipType.FULL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20563a[TeamMembershipType.FREE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.TeamMembershipType$b */
    /* loaded from: classes4.dex */
    public static class C4288b extends UnionSerializer<TeamMembershipType> {

        /* renamed from: b */
        public static final C4288b f20564b = new C4288b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamMembershipType deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            TeamMembershipType teamMembershipType = "full".equals(readTag) ? TeamMembershipType.FULL : "free".equals(readTag) ? TeamMembershipType.FREE : TeamMembershipType.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return teamMembershipType;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamMembershipType teamMembershipType, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4287a.f20563a[teamMembershipType.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("full");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("free");
            }
        }
    }
}
