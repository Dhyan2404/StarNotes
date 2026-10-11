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
public enum TeamNamespacesListContinueError {
    INVALID_ARG,
    OTHER,
    INVALID_CURSOR;

    /* renamed from: com.dropbox.core.v2.team.TeamNamespacesListContinueError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3251a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18541a;

        static {
            int[] iArr = new int[TeamNamespacesListContinueError.values().length];
            f18541a = iArr;
            try {
                iArr[TeamNamespacesListContinueError.INVALID_ARG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18541a[TeamNamespacesListContinueError.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18541a[TeamNamespacesListContinueError.INVALID_CURSOR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.TeamNamespacesListContinueError$b */
    /* loaded from: classes4.dex */
    public static class C3252b extends UnionSerializer<TeamNamespacesListContinueError> {

        /* renamed from: b */
        public static final C3252b f18542b = new C3252b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamNamespacesListContinueError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            TeamNamespacesListContinueError teamNamespacesListContinueError;
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
            if ("invalid_arg".equals(readTag)) {
                teamNamespacesListContinueError = TeamNamespacesListContinueError.INVALID_ARG;
            } else if (Constants.ATTRVAL_OTHER.equals(readTag)) {
                teamNamespacesListContinueError = TeamNamespacesListContinueError.OTHER;
            } else {
                if (!"invalid_cursor".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                teamNamespacesListContinueError = TeamNamespacesListContinueError.INVALID_CURSOR;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return teamNamespacesListContinueError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamNamespacesListContinueError teamNamespacesListContinueError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3251a.f18541a[teamNamespacesListContinueError.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("invalid_arg");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                if (i == 3) {
                    jsonGenerator.writeString("invalid_cursor");
                    return;
                }
                throw new IllegalArgumentException("Unrecognized tag: " + teamNamespacesListContinueError);
            }
        }
    }
}
