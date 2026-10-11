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
public enum FileCommentNotificationPolicy {
    DISABLED,
    ENABLED,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.FileCommentNotificationPolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3540a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19799a;

        static {
            int[] iArr = new int[FileCommentNotificationPolicy.values().length];
            f19799a = iArr;
            try {
                iArr[FileCommentNotificationPolicy.DISABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19799a[FileCommentNotificationPolicy.ENABLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.FileCommentNotificationPolicy$b */
    /* loaded from: classes4.dex */
    public static class C3541b extends UnionSerializer<FileCommentNotificationPolicy> {

        /* renamed from: b */
        public static final C3541b f19800b = new C3541b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FileCommentNotificationPolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            FileCommentNotificationPolicy fileCommentNotificationPolicy = "disabled".equals(readTag) ? FileCommentNotificationPolicy.DISABLED : "enabled".equals(readTag) ? FileCommentNotificationPolicy.ENABLED : FileCommentNotificationPolicy.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return fileCommentNotificationPolicy;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FileCommentNotificationPolicy fileCommentNotificationPolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3540a.f19799a[fileCommentNotificationPolicy.ordinal()];
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
