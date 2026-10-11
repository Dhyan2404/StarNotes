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
public enum MembersGetInfoError {
    OTHER;

    /* renamed from: com.dropbox.core.v2.team.MembersGetInfoError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3151a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18358a = new int[MembersGetInfoError.values().length];
    }

    /* renamed from: com.dropbox.core.v2.team.MembersGetInfoError$b */
    /* loaded from: classes4.dex */
    public static class C3152b extends UnionSerializer<MembersGetInfoError> {

        /* renamed from: b */
        public static final C3152b f18359b = new C3152b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MembersGetInfoError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            MembersGetInfoError membersGetInfoError = MembersGetInfoError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return membersGetInfoError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MembersGetInfoError membersGetInfoError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3151a.f18358a[membersGetInfoError.ordinal()];
            jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
        }
    }
}
