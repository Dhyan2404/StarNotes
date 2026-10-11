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
public enum DateRangeError {
    OTHER;

    /* renamed from: com.dropbox.core.v2.team.DateRangeError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3023a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18134a = new int[DateRangeError.values().length];
    }

    /* renamed from: com.dropbox.core.v2.team.DateRangeError$b */
    /* loaded from: classes4.dex */
    public static class C3024b extends UnionSerializer<DateRangeError> {

        /* renamed from: b */
        public static final C3024b f18135b = new C3024b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DateRangeError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            DateRangeError dateRangeError = DateRangeError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return dateRangeError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DateRangeError dateRangeError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3023a.f18134a[dateRangeError.ordinal()];
            jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
        }
    }
}
