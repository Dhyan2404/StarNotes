package com.dropbox.core.p006v2.teampolicies;

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
public enum FileLockingPolicyState {
    DISABLED,
    ENABLED,
    OTHER;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<FileLockingPolicyState> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public FileLockingPolicyState deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            FileLockingPolicyState fileLockingPolicyState;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                readTag = StoneSerializer.getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                readTag = CompositeSerializer.readTag(jsonParser);
                z = false;
            }
            if (readTag != null) {
                if ("disabled".equals(readTag)) {
                    fileLockingPolicyState = FileLockingPolicyState.DISABLED;
                } else if ("enabled".equals(readTag)) {
                    fileLockingPolicyState = FileLockingPolicyState.ENABLED;
                } else {
                    fileLockingPolicyState = FileLockingPolicyState.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return fileLockingPolicyState;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(FileLockingPolicyState fileLockingPolicyState, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4415a.f20710a[fileLockingPolicyState.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("disabled");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("enabled");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teampolicies.FileLockingPolicyState$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4415a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20710a;

        static {
            int[] iArr = new int[FileLockingPolicyState.values().length];
            f20710a = iArr;
            try {
                iArr[FileLockingPolicyState.DISABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20710a[FileLockingPolicyState.ENABLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }
}
