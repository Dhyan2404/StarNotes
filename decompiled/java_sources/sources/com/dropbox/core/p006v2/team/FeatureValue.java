package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.HasTeamFileEventsValue;
import com.dropbox.core.p006v2.team.HasTeamSelectiveSyncValue;
import com.dropbox.core.p006v2.team.HasTeamSharedDropboxValue;
import com.dropbox.core.p006v2.team.UploadApiRateLimitValue;
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
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class FeatureValue {
    public static final FeatureValue OTHER = new FeatureValue().m12265e(Tag.OTHER);

    /* renamed from: a */
    public Tag f18167a;

    /* renamed from: b */
    public UploadApiRateLimitValue f18168b;

    /* renamed from: c */
    public HasTeamSharedDropboxValue f18169c;

    /* renamed from: d */
    public HasTeamFileEventsValue f18170d;

    /* renamed from: e */
    public HasTeamSelectiveSyncValue f18171e;

    /* loaded from: classes4.dex */
    public enum Tag {
        UPLOAD_API_RATE_LIMIT,
        HAS_TEAM_SHARED_DROPBOX,
        HAS_TEAM_FILE_EVENTS,
        HAS_TEAM_SELECTIVE_SYNC,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.team.FeatureValue$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3045a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18172a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18172a = iArr;
            try {
                iArr[Tag.UPLOAD_API_RATE_LIMIT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18172a[Tag.HAS_TEAM_SHARED_DROPBOX.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18172a[Tag.HAS_TEAM_FILE_EVENTS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18172a[Tag.HAS_TEAM_SELECTIVE_SYNC.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18172a[Tag.OTHER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.FeatureValue$b */
    /* loaded from: classes4.dex */
    public static class C3046b extends UnionSerializer<FeatureValue> {

        /* renamed from: b */
        public static final C3046b f18173b = new C3046b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FeatureValue deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            FeatureValue featureValue;
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
            if ("upload_api_rate_limit".equals(readTag)) {
                StoneSerializer.expectField("upload_api_rate_limit", jsonParser);
                featureValue = FeatureValue.uploadApiRateLimit(UploadApiRateLimitValue.C3261b.f18553b.deserialize(jsonParser));
            } else if ("has_team_shared_dropbox".equals(readTag)) {
                StoneSerializer.expectField("has_team_shared_dropbox", jsonParser);
                featureValue = FeatureValue.hasTeamSharedDropbox(HasTeamSharedDropboxValue.C3096b.f18257b.deserialize(jsonParser));
            } else if ("has_team_file_events".equals(readTag)) {
                StoneSerializer.expectField("has_team_file_events", jsonParser);
                featureValue = FeatureValue.hasTeamFileEvents(HasTeamFileEventsValue.C3092b.f18249b.deserialize(jsonParser));
            } else if ("has_team_selective_sync".equals(readTag)) {
                StoneSerializer.expectField("has_team_selective_sync", jsonParser);
                featureValue = FeatureValue.hasTeamSelectiveSync(HasTeamSelectiveSyncValue.C3094b.f18253b.deserialize(jsonParser));
            } else {
                featureValue = FeatureValue.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return featureValue;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FeatureValue featureValue, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3045a.f18172a[featureValue.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("upload_api_rate_limit", jsonGenerator);
                jsonGenerator.writeFieldName("upload_api_rate_limit");
                UploadApiRateLimitValue.C3261b.f18553b.serialize(featureValue.f18168b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("has_team_shared_dropbox", jsonGenerator);
                jsonGenerator.writeFieldName("has_team_shared_dropbox");
                HasTeamSharedDropboxValue.C3096b.f18257b.serialize(featureValue.f18169c, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 3) {
                jsonGenerator.writeStartObject();
                writeTag("has_team_file_events", jsonGenerator);
                jsonGenerator.writeFieldName("has_team_file_events");
                HasTeamFileEventsValue.C3092b.f18249b.serialize(featureValue.f18170d, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 4) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("has_team_selective_sync", jsonGenerator);
            jsonGenerator.writeFieldName("has_team_selective_sync");
            HasTeamSelectiveSyncValue.C3094b.f18253b.serialize(featureValue.f18171e, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static FeatureValue hasTeamFileEvents(HasTeamFileEventsValue hasTeamFileEventsValue) {
        if (hasTeamFileEventsValue != null) {
            return new FeatureValue().m12266f(Tag.HAS_TEAM_FILE_EVENTS, hasTeamFileEventsValue);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static FeatureValue hasTeamSelectiveSync(HasTeamSelectiveSyncValue hasTeamSelectiveSyncValue) {
        if (hasTeamSelectiveSyncValue != null) {
            return new FeatureValue().m12267g(Tag.HAS_TEAM_SELECTIVE_SYNC, hasTeamSelectiveSyncValue);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static FeatureValue hasTeamSharedDropbox(HasTeamSharedDropboxValue hasTeamSharedDropboxValue) {
        if (hasTeamSharedDropboxValue != null) {
            return new FeatureValue().m12268h(Tag.HAS_TEAM_SHARED_DROPBOX, hasTeamSharedDropboxValue);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static FeatureValue uploadApiRateLimit(UploadApiRateLimitValue uploadApiRateLimitValue) {
        if (uploadApiRateLimitValue != null) {
            return new FeatureValue().m12269i(Tag.UPLOAD_API_RATE_LIMIT, uploadApiRateLimitValue);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: e */
    public final FeatureValue m12265e(Tag tag) {
        FeatureValue featureValue = new FeatureValue();
        featureValue.f18167a = tag;
        return featureValue;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof FeatureValue)) {
            return false;
        }
        FeatureValue featureValue = (FeatureValue) obj;
        Tag tag = this.f18167a;
        if (tag != featureValue.f18167a) {
            return false;
        }
        int i = C3045a.f18172a[tag.ordinal()];
        if (i == 1) {
            UploadApiRateLimitValue uploadApiRateLimitValue = this.f18168b;
            UploadApiRateLimitValue uploadApiRateLimitValue2 = featureValue.f18168b;
            return uploadApiRateLimitValue == uploadApiRateLimitValue2 || uploadApiRateLimitValue.equals(uploadApiRateLimitValue2);
        }
        if (i == 2) {
            HasTeamSharedDropboxValue hasTeamSharedDropboxValue = this.f18169c;
            HasTeamSharedDropboxValue hasTeamSharedDropboxValue2 = featureValue.f18169c;
            return hasTeamSharedDropboxValue == hasTeamSharedDropboxValue2 || hasTeamSharedDropboxValue.equals(hasTeamSharedDropboxValue2);
        }
        if (i == 3) {
            HasTeamFileEventsValue hasTeamFileEventsValue = this.f18170d;
            HasTeamFileEventsValue hasTeamFileEventsValue2 = featureValue.f18170d;
            return hasTeamFileEventsValue == hasTeamFileEventsValue2 || hasTeamFileEventsValue.equals(hasTeamFileEventsValue2);
        }
        if (i != 4) {
            return i == 5;
        }
        HasTeamSelectiveSyncValue hasTeamSelectiveSyncValue = this.f18171e;
        HasTeamSelectiveSyncValue hasTeamSelectiveSyncValue2 = featureValue.f18171e;
        return hasTeamSelectiveSyncValue == hasTeamSelectiveSyncValue2 || hasTeamSelectiveSyncValue.equals(hasTeamSelectiveSyncValue2);
    }

    /* renamed from: f */
    public final FeatureValue m12266f(Tag tag, HasTeamFileEventsValue hasTeamFileEventsValue) {
        FeatureValue featureValue = new FeatureValue();
        featureValue.f18167a = tag;
        featureValue.f18170d = hasTeamFileEventsValue;
        return featureValue;
    }

    /* renamed from: g */
    public final FeatureValue m12267g(Tag tag, HasTeamSelectiveSyncValue hasTeamSelectiveSyncValue) {
        FeatureValue featureValue = new FeatureValue();
        featureValue.f18167a = tag;
        featureValue.f18171e = hasTeamSelectiveSyncValue;
        return featureValue;
    }

    public HasTeamFileEventsValue getHasTeamFileEventsValue() {
        if (this.f18167a == Tag.HAS_TEAM_FILE_EVENTS) {
            return this.f18170d;
        }
        throw new IllegalStateException("Invalid tag: required Tag.HAS_TEAM_FILE_EVENTS, but was Tag." + this.f18167a.name());
    }

    public HasTeamSelectiveSyncValue getHasTeamSelectiveSyncValue() {
        if (this.f18167a == Tag.HAS_TEAM_SELECTIVE_SYNC) {
            return this.f18171e;
        }
        throw new IllegalStateException("Invalid tag: required Tag.HAS_TEAM_SELECTIVE_SYNC, but was Tag." + this.f18167a.name());
    }

    public HasTeamSharedDropboxValue getHasTeamSharedDropboxValue() {
        if (this.f18167a == Tag.HAS_TEAM_SHARED_DROPBOX) {
            return this.f18169c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.HAS_TEAM_SHARED_DROPBOX, but was Tag." + this.f18167a.name());
    }

    public UploadApiRateLimitValue getUploadApiRateLimitValue() {
        if (this.f18167a == Tag.UPLOAD_API_RATE_LIMIT) {
            return this.f18168b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.UPLOAD_API_RATE_LIMIT, but was Tag." + this.f18167a.name());
    }

    /* renamed from: h */
    public final FeatureValue m12268h(Tag tag, HasTeamSharedDropboxValue hasTeamSharedDropboxValue) {
        FeatureValue featureValue = new FeatureValue();
        featureValue.f18167a = tag;
        featureValue.f18169c = hasTeamSharedDropboxValue;
        return featureValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18167a, this.f18168b, this.f18169c, this.f18170d, this.f18171e});
    }

    /* renamed from: i */
    public final FeatureValue m12269i(Tag tag, UploadApiRateLimitValue uploadApiRateLimitValue) {
        FeatureValue featureValue = new FeatureValue();
        featureValue.f18167a = tag;
        featureValue.f18168b = uploadApiRateLimitValue;
        return featureValue;
    }

    public boolean isHasTeamFileEvents() {
        return this.f18167a == Tag.HAS_TEAM_FILE_EVENTS;
    }

    public boolean isHasTeamSelectiveSync() {
        return this.f18167a == Tag.HAS_TEAM_SELECTIVE_SYNC;
    }

    public boolean isHasTeamSharedDropbox() {
        return this.f18167a == Tag.HAS_TEAM_SHARED_DROPBOX;
    }

    public boolean isOther() {
        return this.f18167a == Tag.OTHER;
    }

    public boolean isUploadApiRateLimit() {
        return this.f18167a == Tag.UPLOAD_API_RATE_LIMIT;
    }

    public Tag tag() {
        return this.f18167a;
    }

    public String toString() {
        return C3046b.f18173b.serialize((C3046b) this, false);
    }

    public String toStringMultiline() {
        return C3046b.f18173b.serialize((C3046b) this, true);
    }
}
