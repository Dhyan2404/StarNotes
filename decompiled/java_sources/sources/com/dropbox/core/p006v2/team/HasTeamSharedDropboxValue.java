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
public final class HasTeamSharedDropboxValue {
    public static final HasTeamSharedDropboxValue OTHER = new HasTeamSharedDropboxValue().m12386b(Tag.OTHER);

    /* renamed from: a */
    public Tag f18254a;

    /* renamed from: b */
    public Boolean f18255b;

    /* loaded from: classes4.dex */
    public enum Tag {
        HAS_TEAM_SHARED_DROPBOX,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.team.HasTeamSharedDropboxValue$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3095a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18256a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18256a = iArr;
            try {
                iArr[Tag.HAS_TEAM_SHARED_DROPBOX.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18256a[Tag.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.HasTeamSharedDropboxValue$b */
    /* loaded from: classes4.dex */
    public static class C3096b extends UnionSerializer<HasTeamSharedDropboxValue> {

        /* renamed from: b */
        public static final C3096b f18257b = new C3096b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public HasTeamSharedDropboxValue deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            HasTeamSharedDropboxValue hasTeamSharedDropboxValue;
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
            if ("has_team_shared_dropbox".equals(readTag)) {
                StoneSerializer.expectField("has_team_shared_dropbox", jsonParser);
                hasTeamSharedDropboxValue = HasTeamSharedDropboxValue.hasTeamSharedDropbox(StoneSerializers.boolean_().deserialize(jsonParser).booleanValue());
            } else {
                hasTeamSharedDropboxValue = HasTeamSharedDropboxValue.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return hasTeamSharedDropboxValue;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(HasTeamSharedDropboxValue hasTeamSharedDropboxValue, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C3095a.f18256a[hasTeamSharedDropboxValue.tag().ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("has_team_shared_dropbox", jsonGenerator);
            jsonGenerator.writeFieldName("has_team_shared_dropbox");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) hasTeamSharedDropboxValue.f18255b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static HasTeamSharedDropboxValue hasTeamSharedDropbox(boolean z) {
        return new HasTeamSharedDropboxValue().m12387c(Tag.HAS_TEAM_SHARED_DROPBOX, Boolean.valueOf(z));
    }

    /* renamed from: b */
    public final HasTeamSharedDropboxValue m12386b(Tag tag) {
        HasTeamSharedDropboxValue hasTeamSharedDropboxValue = new HasTeamSharedDropboxValue();
        hasTeamSharedDropboxValue.f18254a = tag;
        return hasTeamSharedDropboxValue;
    }

    /* renamed from: c */
    public final HasTeamSharedDropboxValue m12387c(Tag tag, Boolean bool) {
        HasTeamSharedDropboxValue hasTeamSharedDropboxValue = new HasTeamSharedDropboxValue();
        hasTeamSharedDropboxValue.f18254a = tag;
        hasTeamSharedDropboxValue.f18255b = bool;
        return hasTeamSharedDropboxValue;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof HasTeamSharedDropboxValue)) {
            return false;
        }
        HasTeamSharedDropboxValue hasTeamSharedDropboxValue = (HasTeamSharedDropboxValue) obj;
        Tag tag = this.f18254a;
        if (tag != hasTeamSharedDropboxValue.f18254a) {
            return false;
        }
        int i = C3095a.f18256a[tag.ordinal()];
        return i != 1 ? i == 2 : this.f18255b == hasTeamSharedDropboxValue.f18255b;
    }

    public boolean getHasTeamSharedDropboxValue() {
        if (this.f18254a == Tag.HAS_TEAM_SHARED_DROPBOX) {
            return this.f18255b.booleanValue();
        }
        throw new IllegalStateException("Invalid tag: required Tag.HAS_TEAM_SHARED_DROPBOX, but was Tag." + this.f18254a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18254a, this.f18255b});
    }

    public boolean isHasTeamSharedDropbox() {
        return this.f18254a == Tag.HAS_TEAM_SHARED_DROPBOX;
    }

    public boolean isOther() {
        return this.f18254a == Tag.OTHER;
    }

    public Tag tag() {
        return this.f18254a;
    }

    public String toString() {
        return C3096b.f18257b.serialize((C3096b) this, false);
    }

    public String toStringMultiline() {
        return C3096b.f18257b.serialize((C3096b) this, true);
    }
}
