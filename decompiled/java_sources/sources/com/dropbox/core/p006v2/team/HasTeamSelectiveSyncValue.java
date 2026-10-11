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
public final class HasTeamSelectiveSyncValue {
    public static final HasTeamSelectiveSyncValue OTHER = new HasTeamSelectiveSyncValue().m12381b(Tag.OTHER);

    /* renamed from: a */
    public Tag f18250a;

    /* renamed from: b */
    public Boolean f18251b;

    /* loaded from: classes4.dex */
    public enum Tag {
        HAS_TEAM_SELECTIVE_SYNC,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.team.HasTeamSelectiveSyncValue$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3093a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18252a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18252a = iArr;
            try {
                iArr[Tag.HAS_TEAM_SELECTIVE_SYNC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18252a[Tag.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.HasTeamSelectiveSyncValue$b */
    /* loaded from: classes4.dex */
    public static class C3094b extends UnionSerializer<HasTeamSelectiveSyncValue> {

        /* renamed from: b */
        public static final C3094b f18253b = new C3094b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public HasTeamSelectiveSyncValue deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            HasTeamSelectiveSyncValue hasTeamSelectiveSyncValue;
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
            if ("has_team_selective_sync".equals(readTag)) {
                StoneSerializer.expectField("has_team_selective_sync", jsonParser);
                hasTeamSelectiveSyncValue = HasTeamSelectiveSyncValue.hasTeamSelectiveSync(StoneSerializers.boolean_().deserialize(jsonParser).booleanValue());
            } else {
                hasTeamSelectiveSyncValue = HasTeamSelectiveSyncValue.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return hasTeamSelectiveSyncValue;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(HasTeamSelectiveSyncValue hasTeamSelectiveSyncValue, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C3093a.f18252a[hasTeamSelectiveSyncValue.tag().ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("has_team_selective_sync", jsonGenerator);
            jsonGenerator.writeFieldName("has_team_selective_sync");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) hasTeamSelectiveSyncValue.f18251b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static HasTeamSelectiveSyncValue hasTeamSelectiveSync(boolean z) {
        return new HasTeamSelectiveSyncValue().m12382c(Tag.HAS_TEAM_SELECTIVE_SYNC, Boolean.valueOf(z));
    }

    /* renamed from: b */
    public final HasTeamSelectiveSyncValue m12381b(Tag tag) {
        HasTeamSelectiveSyncValue hasTeamSelectiveSyncValue = new HasTeamSelectiveSyncValue();
        hasTeamSelectiveSyncValue.f18250a = tag;
        return hasTeamSelectiveSyncValue;
    }

    /* renamed from: c */
    public final HasTeamSelectiveSyncValue m12382c(Tag tag, Boolean bool) {
        HasTeamSelectiveSyncValue hasTeamSelectiveSyncValue = new HasTeamSelectiveSyncValue();
        hasTeamSelectiveSyncValue.f18250a = tag;
        hasTeamSelectiveSyncValue.f18251b = bool;
        return hasTeamSelectiveSyncValue;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof HasTeamSelectiveSyncValue)) {
            return false;
        }
        HasTeamSelectiveSyncValue hasTeamSelectiveSyncValue = (HasTeamSelectiveSyncValue) obj;
        Tag tag = this.f18250a;
        if (tag != hasTeamSelectiveSyncValue.f18250a) {
            return false;
        }
        int i = C3093a.f18252a[tag.ordinal()];
        return i != 1 ? i == 2 : this.f18251b == hasTeamSelectiveSyncValue.f18251b;
    }

    public boolean getHasTeamSelectiveSyncValue() {
        if (this.f18250a == Tag.HAS_TEAM_SELECTIVE_SYNC) {
            return this.f18251b.booleanValue();
        }
        throw new IllegalStateException("Invalid tag: required Tag.HAS_TEAM_SELECTIVE_SYNC, but was Tag." + this.f18250a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18250a, this.f18251b});
    }

    public boolean isHasTeamSelectiveSync() {
        return this.f18250a == Tag.HAS_TEAM_SELECTIVE_SYNC;
    }

    public boolean isOther() {
        return this.f18250a == Tag.OTHER;
    }

    public Tag tag() {
        return this.f18250a;
    }

    public String toString() {
        return C3094b.f18253b.serialize((C3094b) this, false);
    }

    public String toStringMultiline() {
        return C3094b.f18253b.serialize((C3094b) this, true);
    }
}
