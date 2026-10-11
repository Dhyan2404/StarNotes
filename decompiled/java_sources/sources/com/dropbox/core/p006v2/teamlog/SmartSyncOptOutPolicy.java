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
public enum SmartSyncOptOutPolicy {
    DEFAULT,
    OPTED_OUT,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.SmartSyncOptOutPolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4228a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20504a;

        static {
            int[] iArr = new int[SmartSyncOptOutPolicy.values().length];
            f20504a = iArr;
            try {
                iArr[SmartSyncOptOutPolicy.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20504a[SmartSyncOptOutPolicy.OPTED_OUT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.SmartSyncOptOutPolicy$b */
    /* loaded from: classes4.dex */
    public static class C4229b extends UnionSerializer<SmartSyncOptOutPolicy> {

        /* renamed from: b */
        public static final C4229b f20505b = new C4229b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SmartSyncOptOutPolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            SmartSyncOptOutPolicy smartSyncOptOutPolicy = "default".equals(readTag) ? SmartSyncOptOutPolicy.DEFAULT : "opted_out".equals(readTag) ? SmartSyncOptOutPolicy.OPTED_OUT : SmartSyncOptOutPolicy.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return smartSyncOptOutPolicy;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SmartSyncOptOutPolicy smartSyncOptOutPolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4228a.f20504a[smartSyncOptOutPolicy.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("default");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("opted_out");
            }
        }
    }
}
