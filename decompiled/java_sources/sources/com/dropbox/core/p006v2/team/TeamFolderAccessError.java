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
public enum TeamFolderAccessError {
    INVALID_TEAM_FOLDER_ID,
    NO_ACCESS,
    OTHER;

    /* renamed from: com.dropbox.core.v2.team.TeamFolderAccessError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3213a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18465a;

        static {
            int[] iArr = new int[TeamFolderAccessError.values().length];
            f18465a = iArr;
            try {
                iArr[TeamFolderAccessError.INVALID_TEAM_FOLDER_ID.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18465a[TeamFolderAccessError.NO_ACCESS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.TeamFolderAccessError$b */
    /* loaded from: classes4.dex */
    public static class C3214b extends UnionSerializer<TeamFolderAccessError> {

        /* renamed from: b */
        public static final C3214b f18466b = new C3214b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamFolderAccessError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            TeamFolderAccessError teamFolderAccessError = "invalid_team_folder_id".equals(readTag) ? TeamFolderAccessError.INVALID_TEAM_FOLDER_ID : "no_access".equals(readTag) ? TeamFolderAccessError.NO_ACCESS : TeamFolderAccessError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return teamFolderAccessError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamFolderAccessError teamFolderAccessError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3213a.f18465a[teamFolderAccessError.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("invalid_team_folder_id");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("no_access");
            }
        }
    }
}
