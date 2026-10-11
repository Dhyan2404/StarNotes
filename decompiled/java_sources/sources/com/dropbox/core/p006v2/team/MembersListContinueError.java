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
public enum MembersListContinueError {
    INVALID_CURSOR,
    OTHER;

    /* renamed from: com.dropbox.core.v2.team.MembersListContinueError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3157a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18371a;

        static {
            int[] iArr = new int[MembersListContinueError.values().length];
            f18371a = iArr;
            try {
                iArr[MembersListContinueError.INVALID_CURSOR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.MembersListContinueError$b */
    /* loaded from: classes4.dex */
    public static class C3158b extends UnionSerializer<MembersListContinueError> {

        /* renamed from: b */
        public static final C3158b f18372b = new C3158b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MembersListContinueError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            MembersListContinueError membersListContinueError = "invalid_cursor".equals(readTag) ? MembersListContinueError.INVALID_CURSOR : MembersListContinueError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return membersListContinueError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MembersListContinueError membersListContinueError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C3157a.f18371a[membersListContinueError.ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("invalid_cursor");
            }
        }
    }
}
