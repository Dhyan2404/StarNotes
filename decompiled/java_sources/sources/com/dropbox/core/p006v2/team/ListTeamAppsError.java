package com.dropbox.core.p006v2.team;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.IOException;

/* loaded from: classes4.dex */
public enum ListTeamAppsError {
    RESET,
    OTHER;

    /* renamed from: com.dropbox.core.v2.team.ListTeamAppsError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3131a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18316a;

        static {
            int[] iArr = new int[ListTeamAppsError.values().length];
            f18316a = iArr;
            try {
                iArr[ListTeamAppsError.RESET.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.ListTeamAppsError$b */
    /* loaded from: classes4.dex */
    public static class C3132b extends UnionSerializer<ListTeamAppsError> {

        /* renamed from: b */
        public static final C3132b f18317b = new C3132b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListTeamAppsError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            ListTeamAppsError listTeamAppsError = Constants.RESET.equals(readTag) ? ListTeamAppsError.RESET : ListTeamAppsError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return listTeamAppsError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListTeamAppsError listTeamAppsError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C3131a.f18316a[listTeamAppsError.ordinal()] != 1) {
                jsonGenerator.writeString(com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString(Constants.RESET);
            }
        }
    }
}
