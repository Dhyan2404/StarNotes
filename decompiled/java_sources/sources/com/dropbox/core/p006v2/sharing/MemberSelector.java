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
public final class MemberSelector {
    public static final MemberSelector OTHER = new MemberSelector().m11781c(Tag.OTHER);

    /* renamed from: a */
    public Tag f17869a;

    /* renamed from: b */
    public String f17870b;

    /* renamed from: c */
    public String f17871c;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<MemberSelector> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public MemberSelector deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            MemberSelector memberSelector;
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
                if ("dropbox_id".equals(readTag)) {
                    StoneSerializer.expectField("dropbox_id", jsonParser);
                    memberSelector = MemberSelector.dropboxId(StoneSerializers.string().deserialize(jsonParser));
                } else if ("email".equals(readTag)) {
                    StoneSerializer.expectField("email", jsonParser);
                    memberSelector = MemberSelector.email(StoneSerializers.string().deserialize(jsonParser));
                } else {
                    memberSelector = MemberSelector.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return memberSelector;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(MemberSelector memberSelector, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2896a.f17872a[memberSelector.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("dropbox_id", jsonGenerator);
                jsonGenerator.writeFieldName("dropbox_id");
                StoneSerializers.string().serialize((StoneSerializer<String>) memberSelector.f17870b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("email", jsonGenerator);
            jsonGenerator.writeFieldName("email");
            StoneSerializers.string().serialize((StoneSerializer<String>) memberSelector.f17871c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    /* loaded from: classes4.dex */
    public enum Tag {
        DROPBOX_ID,
        EMAIL,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.sharing.MemberSelector$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2896a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17872a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17872a = iArr;
            try {
                iArr[Tag.DROPBOX_ID.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17872a[Tag.EMAIL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17872a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static MemberSelector dropboxId(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() >= 1) {
            return new MemberSelector().m11782d(Tag.DROPBOX_ID, str);
        }
        throw new IllegalArgumentException("String is shorter than 1");
    }

    public static MemberSelector email(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$", str)) {
            return new MemberSelector().m11783e(Tag.EMAIL, str);
        }
        throw new IllegalArgumentException("String does not match pattern");
    }

    /* renamed from: c */
    public final MemberSelector m11781c(Tag tag) {
        MemberSelector memberSelector = new MemberSelector();
        memberSelector.f17869a = tag;
        return memberSelector;
    }

    /* renamed from: d */
    public final MemberSelector m11782d(Tag tag, String str) {
        MemberSelector memberSelector = new MemberSelector();
        memberSelector.f17869a = tag;
        memberSelector.f17870b = str;
        return memberSelector;
    }

    /* renamed from: e */
    public final MemberSelector m11783e(Tag tag, String str) {
        MemberSelector memberSelector = new MemberSelector();
        memberSelector.f17869a = tag;
        memberSelector.f17871c = str;
        return memberSelector;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof MemberSelector)) {
            return false;
        }
        MemberSelector memberSelector = (MemberSelector) obj;
        Tag tag = this.f17869a;
        if (tag != memberSelector.f17869a) {
            return false;
        }
        int i = C2896a.f17872a[tag.ordinal()];
        if (i == 1) {
            String str = this.f17870b;
            String str2 = memberSelector.f17870b;
            return str == str2 || str.equals(str2);
        }
        if (i != 2) {
            return i == 3;
        }
        String str3 = this.f17871c;
        String str4 = memberSelector.f17871c;
        return str3 == str4 || str3.equals(str4);
    }

    public String getDropboxIdValue() {
        if (this.f17869a == Tag.DROPBOX_ID) {
            return this.f17870b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.DROPBOX_ID, but was Tag." + this.f17869a.name());
    }

    public String getEmailValue() {
        if (this.f17869a == Tag.EMAIL) {
            return this.f17871c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.EMAIL, but was Tag." + this.f17869a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17869a, this.f17870b, this.f17871c});
    }

    public boolean isDropboxId() {
        return this.f17869a == Tag.DROPBOX_ID;
    }

    public boolean isEmail() {
        return this.f17869a == Tag.EMAIL;
    }

    public boolean isOther() {
        return this.f17869a == Tag.OTHER;
    }

    public Tag tag() {
        return this.f17869a;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize((Serializer) this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize((Serializer) this, true);
    }
}
