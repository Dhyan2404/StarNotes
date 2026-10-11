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
import java.util.Date;

/* loaded from: classes4.dex */
public final class LinkExpiry {

    /* renamed from: a */
    public Tag f17786a;

    /* renamed from: b */
    public Date f17787b;
    public static final LinkExpiry REMOVE_EXPIRY = new LinkExpiry().m11671b(Tag.REMOVE_EXPIRY);
    public static final LinkExpiry OTHER = new LinkExpiry().m11671b(Tag.OTHER);

    /* loaded from: classes4.dex */
    public enum Tag {
        REMOVE_EXPIRY,
        SET_EXPIRY,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.sharing.LinkExpiry$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2858a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17788a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17788a = iArr;
            try {
                iArr[Tag.REMOVE_EXPIRY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17788a[Tag.SET_EXPIRY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17788a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.LinkExpiry$b */
    /* loaded from: classes4.dex */
    public static class C2859b extends UnionSerializer<LinkExpiry> {

        /* renamed from: b */
        public static final C2859b f17789b = new C2859b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LinkExpiry deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            LinkExpiry linkExpiry;
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
            if ("remove_expiry".equals(readTag)) {
                linkExpiry = LinkExpiry.REMOVE_EXPIRY;
            } else if ("set_expiry".equals(readTag)) {
                StoneSerializer.expectField("set_expiry", jsonParser);
                linkExpiry = LinkExpiry.setExpiry(StoneSerializers.timestamp().deserialize(jsonParser));
            } else {
                linkExpiry = LinkExpiry.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return linkExpiry;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LinkExpiry linkExpiry, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2858a.f17788a[linkExpiry.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("remove_expiry");
                return;
            }
            if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("set_expiry", jsonGenerator);
            jsonGenerator.writeFieldName("set_expiry");
            StoneSerializers.timestamp().serialize((StoneSerializer<Date>) linkExpiry.f17787b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static LinkExpiry setExpiry(Date date) {
        if (date != null) {
            return new LinkExpiry().m11672c(Tag.SET_EXPIRY, date);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final LinkExpiry m11671b(Tag tag) {
        LinkExpiry linkExpiry = new LinkExpiry();
        linkExpiry.f17786a = tag;
        return linkExpiry;
    }

    /* renamed from: c */
    public final LinkExpiry m11672c(Tag tag, Date date) {
        LinkExpiry linkExpiry = new LinkExpiry();
        linkExpiry.f17786a = tag;
        linkExpiry.f17787b = date;
        return linkExpiry;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof LinkExpiry)) {
            return false;
        }
        LinkExpiry linkExpiry = (LinkExpiry) obj;
        Tag tag = this.f17786a;
        if (tag != linkExpiry.f17786a) {
            return false;
        }
        int i = C2858a.f17788a[tag.ordinal()];
        if (i == 1) {
            return true;
        }
        if (i != 2) {
            return i == 3;
        }
        Date date = this.f17787b;
        Date date2 = linkExpiry.f17787b;
        return date == date2 || date.equals(date2);
    }

    public Date getSetExpiryValue() {
        if (this.f17786a == Tag.SET_EXPIRY) {
            return this.f17787b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SET_EXPIRY, but was Tag." + this.f17786a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17786a, this.f17787b});
    }

    public boolean isOther() {
        return this.f17786a == Tag.OTHER;
    }

    public boolean isRemoveExpiry() {
        return this.f17786a == Tag.REMOVE_EXPIRY;
    }

    public boolean isSetExpiry() {
        return this.f17786a == Tag.SET_EXPIRY;
    }

    public Tag tag() {
        return this.f17786a;
    }

    public String toString() {
        return C2859b.f17789b.serialize((C2859b) this, false);
    }

    public String toStringMultiline() {
        return C2859b.f17789b.serialize((C2859b) this, true);
    }
}
