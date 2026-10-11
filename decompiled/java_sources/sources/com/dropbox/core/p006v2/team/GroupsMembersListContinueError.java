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
public enum GroupsMembersListContinueError {
    INVALID_CURSOR,
    OTHER;

    /* renamed from: com.dropbox.core.v2.team.GroupsMembersListContinueError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3084a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18234a;

        static {
            int[] iArr = new int[GroupsMembersListContinueError.values().length];
            f18234a = iArr;
            try {
                iArr[GroupsMembersListContinueError.INVALID_CURSOR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.GroupsMembersListContinueError$b */
    /* loaded from: classes4.dex */
    public static class C3085b extends UnionSerializer<GroupsMembersListContinueError> {

        /* renamed from: b */
        public static final C3085b f18235b = new C3085b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GroupsMembersListContinueError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            GroupsMembersListContinueError groupsMembersListContinueError = "invalid_cursor".equals(readTag) ? GroupsMembersListContinueError.INVALID_CURSOR : GroupsMembersListContinueError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return groupsMembersListContinueError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GroupsMembersListContinueError groupsMembersListContinueError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C3084a.f18234a[groupsMembersListContinueError.ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("invalid_cursor");
            }
        }
    }
}
