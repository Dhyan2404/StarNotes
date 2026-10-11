package com.dropbox.core.p006v2.team;

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
public enum TeamFolderTeamSharedDropboxError {
    DISALLOWED,
    OTHER;

    /* renamed from: com.dropbox.core.v2.team.TeamFolderTeamSharedDropboxError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3239a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18518a;

        static {
            int[] iArr = new int[TeamFolderTeamSharedDropboxError.values().length];
            f18518a = iArr;
            try {
                iArr[TeamFolderTeamSharedDropboxError.DISALLOWED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.TeamFolderTeamSharedDropboxError$b */
    /* loaded from: classes4.dex */
    public static class C3240b extends UnionSerializer<TeamFolderTeamSharedDropboxError> {

        /* renamed from: b */
        public static final C3240b f18519b = new C3240b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamFolderTeamSharedDropboxError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            TeamFolderTeamSharedDropboxError teamFolderTeamSharedDropboxError = "disallowed".equals(readTag) ? TeamFolderTeamSharedDropboxError.DISALLOWED : TeamFolderTeamSharedDropboxError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return teamFolderTeamSharedDropboxError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamFolderTeamSharedDropboxError teamFolderTeamSharedDropboxError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C3239a.f18518a[teamFolderTeamSharedDropboxError.ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("disallowed");
            }
        }
    }
}
