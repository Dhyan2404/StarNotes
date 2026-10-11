package com.dropbox.core.p006v2.sharing;

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
public enum LinkAction {
    CHANGE_ACCESS_LEVEL,
    CHANGE_AUDIENCE,
    REMOVE_EXPIRY,
    REMOVE_PASSWORD,
    SET_EXPIRY,
    SET_PASSWORD,
    OTHER;

    /* renamed from: com.dropbox.core.v2.sharing.LinkAction$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2855a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17783a;

        static {
            int[] iArr = new int[LinkAction.values().length];
            f17783a = iArr;
            try {
                iArr[LinkAction.CHANGE_ACCESS_LEVEL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17783a[LinkAction.CHANGE_AUDIENCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17783a[LinkAction.REMOVE_EXPIRY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17783a[LinkAction.REMOVE_PASSWORD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17783a[LinkAction.SET_EXPIRY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17783a[LinkAction.SET_PASSWORD.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.LinkAction$b */
    /* loaded from: classes4.dex */
    public static class C2856b extends UnionSerializer<LinkAction> {

        /* renamed from: b */
        public static final C2856b f17784b = new C2856b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LinkAction deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            LinkAction linkAction = "change_access_level".equals(readTag) ? LinkAction.CHANGE_ACCESS_LEVEL : "change_audience".equals(readTag) ? LinkAction.CHANGE_AUDIENCE : "remove_expiry".equals(readTag) ? LinkAction.REMOVE_EXPIRY : "remove_password".equals(readTag) ? LinkAction.REMOVE_PASSWORD : "set_expiry".equals(readTag) ? LinkAction.SET_EXPIRY : "set_password".equals(readTag) ? LinkAction.SET_PASSWORD : LinkAction.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return linkAction;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LinkAction linkAction, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C2855a.f17783a[linkAction.ordinal()]) {
                case 1:
                    jsonGenerator.writeString("change_access_level");
                    return;
                case 2:
                    jsonGenerator.writeString("change_audience");
                    return;
                case 3:
                    jsonGenerator.writeString("remove_expiry");
                    return;
                case 4:
                    jsonGenerator.writeString("remove_password");
                    return;
                case 5:
                    jsonGenerator.writeString("set_expiry");
                    return;
                case 6:
                    jsonGenerator.writeString("set_password");
                    return;
                default:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
            }
        }
    }
}
