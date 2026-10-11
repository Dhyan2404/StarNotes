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
public enum ListTeamDevicesError {
    RESET,
    OTHER;

    /* renamed from: com.dropbox.core.v2.team.ListTeamDevicesError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3135a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18324a;

        static {
            int[] iArr = new int[ListTeamDevicesError.values().length];
            f18324a = iArr;
            try {
                iArr[ListTeamDevicesError.RESET.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.ListTeamDevicesError$b */
    /* loaded from: classes4.dex */
    public static class C3136b extends UnionSerializer<ListTeamDevicesError> {

        /* renamed from: b */
        public static final C3136b f18325b = new C3136b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListTeamDevicesError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            ListTeamDevicesError listTeamDevicesError = Constants.RESET.equals(readTag) ? ListTeamDevicesError.RESET : ListTeamDevicesError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return listTeamDevicesError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListTeamDevicesError listTeamDevicesError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C3135a.f18324a[listTeamDevicesError.ordinal()] != 1) {
                jsonGenerator.writeString(com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString(Constants.RESET);
            }
        }
    }
}
