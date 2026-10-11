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
public enum LinkAudience {
    PUBLIC,
    TEAM,
    NO_ONE,
    PASSWORD,
    MEMBERS,
    OTHER;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<LinkAudience> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public LinkAudience deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            LinkAudience linkAudience;
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
                if ("public".equals(readTag)) {
                    linkAudience = LinkAudience.PUBLIC;
                } else if ("team".equals(readTag)) {
                    linkAudience = LinkAudience.TEAM;
                } else if ("no_one".equals(readTag)) {
                    linkAudience = LinkAudience.NO_ONE;
                } else if ("password".equals(readTag)) {
                    linkAudience = LinkAudience.PASSWORD;
                } else if ("members".equals(readTag)) {
                    linkAudience = LinkAudience.MEMBERS;
                } else {
                    linkAudience = LinkAudience.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return linkAudience;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(LinkAudience linkAudience, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2857a.f17785a[linkAudience.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("public");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("team");
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString("no_one");
                return;
            }
            if (i == 4) {
                jsonGenerator.writeString("password");
            } else if (i != 5) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("members");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.LinkAudience$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2857a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17785a;

        static {
            int[] iArr = new int[LinkAudience.values().length];
            f17785a = iArr;
            try {
                iArr[LinkAudience.PUBLIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17785a[LinkAudience.TEAM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17785a[LinkAudience.NO_ONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17785a[LinkAudience.PASSWORD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17785a[LinkAudience.MEMBERS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }
}
