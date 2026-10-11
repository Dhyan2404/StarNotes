package com.dropbox.core.p006v2.team;

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
public enum NamespaceType {
    APP_FOLDER,
    SHARED_FOLDER,
    TEAM_FOLDER,
    TEAM_MEMBER_FOLDER,
    OTHER;

    /* renamed from: com.dropbox.core.v2.team.NamespaceType$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3186a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18417a;

        static {
            int[] iArr = new int[NamespaceType.values().length];
            f18417a = iArr;
            try {
                iArr[NamespaceType.APP_FOLDER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18417a[NamespaceType.SHARED_FOLDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18417a[NamespaceType.TEAM_FOLDER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18417a[NamespaceType.TEAM_MEMBER_FOLDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.NamespaceType$b */
    /* loaded from: classes4.dex */
    public static class C3187b extends UnionSerializer<NamespaceType> {

        /* renamed from: b */
        public static final C3187b f18418b = new C3187b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public NamespaceType deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            NamespaceType namespaceType = "app_folder".equals(readTag) ? NamespaceType.APP_FOLDER : "shared_folder".equals(readTag) ? NamespaceType.SHARED_FOLDER : "team_folder".equals(readTag) ? NamespaceType.TEAM_FOLDER : "team_member_folder".equals(readTag) ? NamespaceType.TEAM_MEMBER_FOLDER : NamespaceType.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return namespaceType;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(NamespaceType namespaceType, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3186a.f18417a[namespaceType.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("app_folder");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("shared_folder");
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString("team_folder");
            } else if (i != 4) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("team_member_folder");
            }
        }
    }
}
