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
import org.apache.poi.ss.util.CellUtil;

/* loaded from: classes4.dex */
public enum LockStatus {
    LOCKED,
    UNLOCKED,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.LockStatus$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3717a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19990a;

        static {
            int[] iArr = new int[LockStatus.values().length];
            f19990a = iArr;
            try {
                iArr[LockStatus.LOCKED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19990a[LockStatus.UNLOCKED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.LockStatus$b */
    /* loaded from: classes4.dex */
    public static class C3718b extends UnionSerializer<LockStatus> {

        /* renamed from: b */
        public static final C3718b f19991b = new C3718b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LockStatus deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            LockStatus lockStatus = CellUtil.LOCKED.equals(readTag) ? LockStatus.LOCKED : "unlocked".equals(readTag) ? LockStatus.UNLOCKED : LockStatus.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return lockStatus;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LockStatus lockStatus, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3717a.f19990a[lockStatus.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString(CellUtil.LOCKED);
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("unlocked");
            }
        }
    }
}
