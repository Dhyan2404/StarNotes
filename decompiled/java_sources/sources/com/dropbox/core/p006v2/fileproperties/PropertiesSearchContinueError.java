package com.dropbox.core.p006v2.fileproperties;

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
public enum PropertiesSearchContinueError {
    RESET,
    OTHER;

    /* renamed from: com.dropbox.core.v2.fileproperties.PropertiesSearchContinueError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2435a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16924a;

        static {
            int[] iArr = new int[PropertiesSearchContinueError.values().length];
            f16924a = iArr;
            try {
                iArr[PropertiesSearchContinueError.RESET.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.fileproperties.PropertiesSearchContinueError$b */
    /* loaded from: classes4.dex */
    public static class C2436b extends UnionSerializer<PropertiesSearchContinueError> {

        /* renamed from: b */
        public static final C2436b f16925b = new C2436b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PropertiesSearchContinueError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            PropertiesSearchContinueError propertiesSearchContinueError = Constants.RESET.equals(readTag) ? PropertiesSearchContinueError.RESET : PropertiesSearchContinueError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return propertiesSearchContinueError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PropertiesSearchContinueError propertiesSearchContinueError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C2435a.f16924a[propertiesSearchContinueError.ordinal()] != 1) {
                jsonGenerator.writeString(com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString(Constants.RESET);
            }
        }
    }
}
