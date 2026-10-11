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
public enum AccessInheritance {
    INHERIT,
    NO_INHERIT,
    OTHER;

    /* renamed from: com.dropbox.core.v2.sharing.AccessInheritance$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2793a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17651a;

        static {
            int[] iArr = new int[AccessInheritance.values().length];
            f17651a = iArr;
            try {
                iArr[AccessInheritance.INHERIT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17651a[AccessInheritance.NO_INHERIT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.AccessInheritance$b */
    /* loaded from: classes4.dex */
    public static class C2794b extends UnionSerializer<AccessInheritance> {

        /* renamed from: b */
        public static final C2794b f17652b = new C2794b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AccessInheritance deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            AccessInheritance accessInheritance = "inherit".equals(readTag) ? AccessInheritance.INHERIT : "no_inherit".equals(readTag) ? AccessInheritance.NO_INHERIT : AccessInheritance.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return accessInheritance;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(AccessInheritance accessInheritance, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2793a.f17651a[accessInheritance.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("inherit");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("no_inherit");
            }
        }
    }
}
