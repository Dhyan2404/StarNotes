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
public enum FedAdminRole {
    NOT_ENTERPRISE_ADMIN,
    ENTERPRISE_ADMIN,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.FedAdminRole$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3526a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19778a;

        static {
            int[] iArr = new int[FedAdminRole.values().length];
            f19778a = iArr;
            try {
                iArr[FedAdminRole.NOT_ENTERPRISE_ADMIN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19778a[FedAdminRole.ENTERPRISE_ADMIN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.FedAdminRole$b */
    /* loaded from: classes4.dex */
    public static class C3527b extends UnionSerializer<FedAdminRole> {

        /* renamed from: b */
        public static final C3527b f19779b = new C3527b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FedAdminRole deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            FedAdminRole fedAdminRole = "not_enterprise_admin".equals(readTag) ? FedAdminRole.NOT_ENTERPRISE_ADMIN : "enterprise_admin".equals(readTag) ? FedAdminRole.ENTERPRISE_ADMIN : FedAdminRole.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return fedAdminRole;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FedAdminRole fedAdminRole, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3526a.f19778a[fedAdminRole.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("not_enterprise_admin");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("enterprise_admin");
            }
        }
    }
}
