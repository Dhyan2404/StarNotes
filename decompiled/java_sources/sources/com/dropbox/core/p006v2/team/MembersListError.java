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
public enum MembersListError {
    OTHER;

    /* renamed from: com.dropbox.core.v2.team.MembersListError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3159a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18373a = new int[MembersListError.values().length];
    }

    /* renamed from: com.dropbox.core.v2.team.MembersListError$b */
    /* loaded from: classes4.dex */
    public static class C3160b extends UnionSerializer<MembersListError> {

        /* renamed from: b */
        public static final C3160b f18374b = new C3160b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MembersListError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            MembersListError membersListError = MembersListError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return membersListError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MembersListError membersListError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3159a.f18373a[membersListError.ordinal()];
            jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
        }
    }
}
