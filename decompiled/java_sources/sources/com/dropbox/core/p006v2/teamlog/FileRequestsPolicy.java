package com.dropbox.core.p006v2.teamlog;

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
public enum FileRequestsPolicy {
    DISABLED,
    ENABLED,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.FileRequestsPolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3594a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19853a;

        static {
            int[] iArr = new int[FileRequestsPolicy.values().length];
            f19853a = iArr;
            try {
                iArr[FileRequestsPolicy.DISABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19853a[FileRequestsPolicy.ENABLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.FileRequestsPolicy$b */
    /* loaded from: classes4.dex */
    public static class C3595b extends UnionSerializer<FileRequestsPolicy> {

        /* renamed from: b */
        public static final C3595b f19854b = new C3595b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FileRequestsPolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            FileRequestsPolicy fileRequestsPolicy = "disabled".equals(readTag) ? FileRequestsPolicy.DISABLED : "enabled".equals(readTag) ? FileRequestsPolicy.ENABLED : FileRequestsPolicy.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return fileRequestsPolicy;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FileRequestsPolicy fileRequestsPolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3594a.f19853a[fileRequestsPolicy.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("disabled");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("enabled");
            }
        }
    }
}
