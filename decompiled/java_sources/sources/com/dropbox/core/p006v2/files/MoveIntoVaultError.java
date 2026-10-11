package com.dropbox.core.p006v2.files;

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
public enum MoveIntoVaultError {
    IS_SHARED_FOLDER,
    OTHER;

    /* renamed from: com.dropbox.core.v2.files.MoveIntoVaultError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2601a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17280a;

        static {
            int[] iArr = new int[MoveIntoVaultError.values().length];
            f17280a = iArr;
            try {
                iArr[MoveIntoVaultError.IS_SHARED_FOLDER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.MoveIntoVaultError$b */
    /* loaded from: classes4.dex */
    public static class C2602b extends UnionSerializer<MoveIntoVaultError> {

        /* renamed from: b */
        public static final C2602b f17281b = new C2602b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MoveIntoVaultError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            MoveIntoVaultError moveIntoVaultError = "is_shared_folder".equals(readTag) ? MoveIntoVaultError.IS_SHARED_FOLDER : MoveIntoVaultError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return moveIntoVaultError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MoveIntoVaultError moveIntoVaultError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C2601a.f17280a[moveIntoVaultError.ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("is_shared_folder");
            }
        }
    }
}
