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
public enum TeamNamespacesListError {
    INVALID_ARG,
    OTHER;

    /* renamed from: com.dropbox.core.v2.team.TeamNamespacesListError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3253a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18543a;

        static {
            int[] iArr = new int[TeamNamespacesListError.values().length];
            f18543a = iArr;
            try {
                iArr[TeamNamespacesListError.INVALID_ARG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.TeamNamespacesListError$b */
    /* loaded from: classes4.dex */
    public static class C3254b extends UnionSerializer<TeamNamespacesListError> {

        /* renamed from: b */
        public static final C3254b f18544b = new C3254b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamNamespacesListError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            TeamNamespacesListError teamNamespacesListError = "invalid_arg".equals(readTag) ? TeamNamespacesListError.INVALID_ARG : TeamNamespacesListError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return teamNamespacesListError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamNamespacesListError teamNamespacesListError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C3253a.f18543a[teamNamespacesListError.ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("invalid_arg");
            }
        }
    }
}
