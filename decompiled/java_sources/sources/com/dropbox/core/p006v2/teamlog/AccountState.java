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
public enum AccountState {
    LOCKED,
    UNLOCKED,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.AccountState$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3346a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18718a;

        static {
            int[] iArr = new int[AccountState.values().length];
            f18718a = iArr;
            try {
                iArr[AccountState.LOCKED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18718a[AccountState.UNLOCKED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.AccountState$b */
    /* loaded from: classes4.dex */
    public static class C3347b extends UnionSerializer<AccountState> {

        /* renamed from: b */
        public static final C3347b f18719b = new C3347b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AccountState deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            AccountState accountState = CellUtil.LOCKED.equals(readTag) ? AccountState.LOCKED : "unlocked".equals(readTag) ? AccountState.UNLOCKED : AccountState.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return accountState;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(AccountState accountState, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3346a.f18718a[accountState.ordinal()];
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
