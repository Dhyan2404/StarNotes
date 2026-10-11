package com.dropbox.core.p006v2.team;

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
public final class HasTeamFileEventsValue {
    public static final HasTeamFileEventsValue OTHER = new HasTeamFileEventsValue().m12376b(Tag.OTHER);

    /* renamed from: a */
    public Tag f18246a;

    /* renamed from: b */
    public Boolean f18247b;

    /* loaded from: classes4.dex */
    public enum Tag {
        ENABLED,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.team.HasTeamFileEventsValue$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3091a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18248a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18248a = iArr;
            try {
                iArr[Tag.ENABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18248a[Tag.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.HasTeamFileEventsValue$b */
    /* loaded from: classes4.dex */
    public static class C3092b extends UnionSerializer<HasTeamFileEventsValue> {

        /* renamed from: b */
        public static final C3092b f18249b = new C3092b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public HasTeamFileEventsValue deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            HasTeamFileEventsValue hasTeamFileEventsValue;
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
            if ("enabled".equals(readTag)) {
                StoneSerializer.expectField("enabled", jsonParser);
                hasTeamFileEventsValue = HasTeamFileEventsValue.enabled(StoneSerializers.boolean_().deserialize(jsonParser).booleanValue());
            } else {
                hasTeamFileEventsValue = HasTeamFileEventsValue.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return hasTeamFileEventsValue;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(HasTeamFileEventsValue hasTeamFileEventsValue, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C3091a.f18248a[hasTeamFileEventsValue.tag().ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("enabled", jsonGenerator);
            jsonGenerator.writeFieldName("enabled");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) hasTeamFileEventsValue.f18247b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static HasTeamFileEventsValue enabled(boolean z) {
        return new HasTeamFileEventsValue().m12377c(Tag.ENABLED, Boolean.valueOf(z));
    }

    /* renamed from: b */
    public final HasTeamFileEventsValue m12376b(Tag tag) {
        HasTeamFileEventsValue hasTeamFileEventsValue = new HasTeamFileEventsValue();
        hasTeamFileEventsValue.f18246a = tag;
        return hasTeamFileEventsValue;
    }

    /* renamed from: c */
    public final HasTeamFileEventsValue m12377c(Tag tag, Boolean bool) {
        HasTeamFileEventsValue hasTeamFileEventsValue = new HasTeamFileEventsValue();
        hasTeamFileEventsValue.f18246a = tag;
        hasTeamFileEventsValue.f18247b = bool;
        return hasTeamFileEventsValue;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof HasTeamFileEventsValue)) {
            return false;
        }
        HasTeamFileEventsValue hasTeamFileEventsValue = (HasTeamFileEventsValue) obj;
        Tag tag = this.f18246a;
        if (tag != hasTeamFileEventsValue.f18246a) {
            return false;
        }
        int i = C3091a.f18248a[tag.ordinal()];
        return i != 1 ? i == 2 : this.f18247b == hasTeamFileEventsValue.f18247b;
    }

    public boolean getEnabledValue() {
        if (this.f18246a == Tag.ENABLED) {
            return this.f18247b.booleanValue();
        }
        throw new IllegalStateException("Invalid tag: required Tag.ENABLED, but was Tag." + this.f18246a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18246a, this.f18247b});
    }

    public boolean isEnabled() {
        return this.f18246a == Tag.ENABLED;
    }

    public boolean isOther() {
        return this.f18246a == Tag.OTHER;
    }

    public Tag tag() {
        return this.f18246a;
    }

    public String toString() {
        return C3092b.f18249b.serialize((C3092b) this, false);
    }

    public String toStringMultiline() {
        return C3092b.f18249b.serialize((C3092b) this, true);
    }
}
