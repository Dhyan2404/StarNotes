package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class LinkPassword {

    /* renamed from: a */
    public Tag f17791a;

    /* renamed from: b */
    public String f17792b;
    public static final LinkPassword REMOVE_PASSWORD = new LinkPassword().m11678b(Tag.REMOVE_PASSWORD);
    public static final LinkPassword OTHER = new LinkPassword().m11678b(Tag.OTHER);

    /* loaded from: classes4.dex */
    public enum Tag {
        REMOVE_PASSWORD,
        SET_PASSWORD,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.sharing.LinkPassword$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2861a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17793a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17793a = iArr;
            try {
                iArr[Tag.REMOVE_PASSWORD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17793a[Tag.SET_PASSWORD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17793a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.LinkPassword$b */
    /* loaded from: classes4.dex */
    public static class C2862b extends UnionSerializer<LinkPassword> {

        /* renamed from: b */
        public static final C2862b f17794b = new C2862b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LinkPassword deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            LinkPassword linkPassword;
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
            if ("remove_password".equals(readTag)) {
                linkPassword = LinkPassword.REMOVE_PASSWORD;
            } else if ("set_password".equals(readTag)) {
                StoneSerializer.expectField("set_password", jsonParser);
                linkPassword = LinkPassword.setPassword(StoneSerializers.string().deserialize(jsonParser));
            } else {
                linkPassword = LinkPassword.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return linkPassword;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LinkPassword linkPassword, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2861a.f17793a[linkPassword.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("remove_password");
                return;
            }
            if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("set_password", jsonGenerator);
            jsonGenerator.writeFieldName("set_password");
            StoneSerializers.string().serialize((StoneSerializer<String>) linkPassword.f17792b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static LinkPassword setPassword(String str) {
        if (str != null) {
            return new LinkPassword().m11679c(Tag.SET_PASSWORD, str);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final LinkPassword m11678b(Tag tag) {
        LinkPassword linkPassword = new LinkPassword();
        linkPassword.f17791a = tag;
        return linkPassword;
    }

    /* renamed from: c */
    public final LinkPassword m11679c(Tag tag, String str) {
        LinkPassword linkPassword = new LinkPassword();
        linkPassword.f17791a = tag;
        linkPassword.f17792b = str;
        return linkPassword;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof LinkPassword)) {
            return false;
        }
        LinkPassword linkPassword = (LinkPassword) obj;
        Tag tag = this.f17791a;
        if (tag != linkPassword.f17791a) {
            return false;
        }
        int i = C2861a.f17793a[tag.ordinal()];
        if (i == 1) {
            return true;
        }
        if (i != 2) {
            return i == 3;
        }
        String str = this.f17792b;
        String str2 = linkPassword.f17792b;
        return str == str2 || str.equals(str2);
    }

    public String getSetPasswordValue() {
        if (this.f17791a == Tag.SET_PASSWORD) {
            return this.f17792b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SET_PASSWORD, but was Tag." + this.f17791a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17791a, this.f17792b});
    }

    public boolean isOther() {
        return this.f17791a == Tag.OTHER;
    }

    public boolean isRemovePassword() {
        return this.f17791a == Tag.REMOVE_PASSWORD;
    }

    public boolean isSetPassword() {
        return this.f17791a == Tag.SET_PASSWORD;
    }

    public Tag tag() {
        return this.f17791a;
    }

    public String toString() {
        return C2862b.f17794b.serialize((C2862b) this, false);
    }

    public String toStringMultiline() {
        return C2862b.f17794b.serialize((C2862b) this, true);
    }
}
