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
public enum TeamFolderListContinueError {
    INVALID_CURSOR,
    OTHER;

    /* renamed from: com.dropbox.core.v2.team.TeamFolderListContinueError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3229a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18500a;

        static {
            int[] iArr = new int[TeamFolderListContinueError.values().length];
            f18500a = iArr;
            try {
                iArr[TeamFolderListContinueError.INVALID_CURSOR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.TeamFolderListContinueError$b */
    /* loaded from: classes4.dex */
    public static class C3230b extends UnionSerializer<TeamFolderListContinueError> {

        /* renamed from: b */
        public static final C3230b f18501b = new C3230b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamFolderListContinueError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            TeamFolderListContinueError teamFolderListContinueError = "invalid_cursor".equals(readTag) ? TeamFolderListContinueError.INVALID_CURSOR : TeamFolderListContinueError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return teamFolderListContinueError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamFolderListContinueError teamFolderListContinueError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C3229a.f18500a[teamFolderListContinueError.ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("invalid_cursor");
            }
        }
    }
}
