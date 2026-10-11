package com.dropbox.core.p006v2.team;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* loaded from: classes4.dex */
public enum TeamMembershipType {
    FULL,
    LIMITED;

    /* renamed from: com.dropbox.core.v2.team.TeamMembershipType$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3249a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18539a;

        static {
            int[] iArr = new int[TeamMembershipType.values().length];
            f18539a = iArr;
            try {
                iArr[TeamMembershipType.FULL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18539a[TeamMembershipType.LIMITED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.TeamMembershipType$b */
    /* loaded from: classes4.dex */
    public static class C3250b extends UnionSerializer<TeamMembershipType> {

        /* renamed from: b */
        public static final C3250b f18540b = new C3250b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamMembershipType deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            TeamMembershipType teamMembershipType;
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
            if ("full".equals(readTag)) {
                teamMembershipType = TeamMembershipType.FULL;
            } else {
                if (!"limited".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                teamMembershipType = TeamMembershipType.LIMITED;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return teamMembershipType;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamMembershipType teamMembershipType, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3249a.f18539a[teamMembershipType.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("full");
            } else {
                if (i == 2) {
                    jsonGenerator.writeString("limited");
                    return;
                }
                throw new IllegalArgumentException("Unrecognized tag: " + teamMembershipType);
            }
        }
    }
}
