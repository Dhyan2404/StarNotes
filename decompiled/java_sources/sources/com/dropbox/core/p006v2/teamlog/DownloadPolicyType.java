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
public enum DownloadPolicyType {
    ALLOW,
    DISALLOW,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.DownloadPolicyType$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3479a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18872a;

        static {
            int[] iArr = new int[DownloadPolicyType.values().length];
            f18872a = iArr;
            try {
                iArr[DownloadPolicyType.ALLOW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18872a[DownloadPolicyType.DISALLOW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.DownloadPolicyType$b */
    /* loaded from: classes4.dex */
    public static class C3480b extends UnionSerializer<DownloadPolicyType> {

        /* renamed from: b */
        public static final C3480b f18873b = new C3480b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DownloadPolicyType deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            DownloadPolicyType downloadPolicyType = "allow".equals(readTag) ? DownloadPolicyType.ALLOW : "disallow".equals(readTag) ? DownloadPolicyType.DISALLOW : DownloadPolicyType.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return downloadPolicyType;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DownloadPolicyType downloadPolicyType, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3479a.f18872a[downloadPolicyType.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("allow");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("disallow");
            }
        }
    }
}
