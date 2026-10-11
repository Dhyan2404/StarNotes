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
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public final class InviteeInfo {
    public static final InviteeInfo OTHER = new InviteeInfo().m11648b(Tag.OTHER);

    /* renamed from: a */
    public Tag f17767a;

    /* renamed from: b */
    public String f17768b;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<InviteeInfo> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public InviteeInfo deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            InviteeInfo inviteeInfo;
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
                if ("email".equals(readTag)) {
                    StoneSerializer.expectField("email", jsonParser);
                    inviteeInfo = InviteeInfo.email(StoneSerializers.string().deserialize(jsonParser));
                } else {
                    inviteeInfo = InviteeInfo.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return inviteeInfo;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(InviteeInfo inviteeInfo, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C2847a.f17769a[inviteeInfo.tag().ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("email", jsonGenerator);
            jsonGenerator.writeFieldName("email");
            StoneSerializers.string().serialize((StoneSerializer<String>) inviteeInfo.f17768b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    /* loaded from: classes4.dex */
    public enum Tag {
        EMAIL,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.sharing.InviteeInfo$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2847a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17769a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17769a = iArr;
            try {
                iArr[Tag.EMAIL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17769a[Tag.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static InviteeInfo email(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$", str)) {
            return new InviteeInfo().m11649c(Tag.EMAIL, str);
        }
        throw new IllegalArgumentException("String does not match pattern");
    }

    /* renamed from: b */
    public final InviteeInfo m11648b(Tag tag) {
        InviteeInfo inviteeInfo = new InviteeInfo();
        inviteeInfo.f17767a = tag;
        return inviteeInfo;
    }

    /* renamed from: c */
    public final InviteeInfo m11649c(Tag tag, String str) {
        InviteeInfo inviteeInfo = new InviteeInfo();
        inviteeInfo.f17767a = tag;
        inviteeInfo.f17768b = str;
        return inviteeInfo;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof InviteeInfo)) {
            return false;
        }
        InviteeInfo inviteeInfo = (InviteeInfo) obj;
        Tag tag = this.f17767a;
        if (tag != inviteeInfo.f17767a) {
            return false;
        }
        int i = C2847a.f17769a[tag.ordinal()];
        if (i != 1) {
            return i == 2;
        }
        String str = this.f17768b;
        String str2 = inviteeInfo.f17768b;
        return str == str2 || str.equals(str2);
    }

    public String getEmailValue() {
        if (this.f17767a == Tag.EMAIL) {
            return this.f17768b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.EMAIL, but was Tag." + this.f17767a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17767a, this.f17768b});
    }

    public boolean isEmail() {
        return this.f17767a == Tag.EMAIL;
    }

    public boolean isOther() {
        return this.f17767a == Tag.OTHER;
    }

    public Tag tag() {
        return this.f17767a;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize((Serializer) this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize((Serializer) this, true);
    }
}
