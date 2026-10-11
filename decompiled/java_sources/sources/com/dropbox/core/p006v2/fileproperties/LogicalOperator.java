package com.dropbox.core.p006v2.fileproperties;

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
public enum LogicalOperator {
    OR_OPERATOR,
    OTHER;

    /* renamed from: com.dropbox.core.v2.fileproperties.LogicalOperator$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2429a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16914a;

        static {
            int[] iArr = new int[LogicalOperator.values().length];
            f16914a = iArr;
            try {
                iArr[LogicalOperator.OR_OPERATOR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.fileproperties.LogicalOperator$b */
    /* loaded from: classes4.dex */
    public static class C2430b extends UnionSerializer<LogicalOperator> {

        /* renamed from: b */
        public static final C2430b f16915b = new C2430b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LogicalOperator deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            LogicalOperator logicalOperator = "or_operator".equals(readTag) ? LogicalOperator.OR_OPERATOR : LogicalOperator.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return logicalOperator;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LogicalOperator logicalOperator, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C2429a.f16914a[logicalOperator.ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("or_operator");
            }
        }
    }
}
