package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.MemberAddResult;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public final class MembersAddJobStatus {
    public static final MembersAddJobStatus IN_PROGRESS = new MembersAddJobStatus().m12514c(Tag.IN_PROGRESS);

    /* renamed from: a */
    public Tag f18346a;

    /* renamed from: b */
    public List<MemberAddResult> f18347b;

    /* renamed from: c */
    public String f18348c;

    /* loaded from: classes4.dex */
    public enum Tag {
        IN_PROGRESS,
        COMPLETE,
        FAILED
    }

    /* renamed from: com.dropbox.core.v2.team.MembersAddJobStatus$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3145a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18349a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18349a = iArr;
            try {
                iArr[Tag.IN_PROGRESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18349a[Tag.COMPLETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18349a[Tag.FAILED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.MembersAddJobStatus$b */
    /* loaded from: classes4.dex */
    public static class C3146b extends UnionSerializer<MembersAddJobStatus> {

        /* renamed from: b */
        public static final C3146b f18350b = new C3146b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MembersAddJobStatus deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            MembersAddJobStatus failed;
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
            if ("in_progress".equals(readTag)) {
                failed = MembersAddJobStatus.IN_PROGRESS;
            } else if ("complete".equals(readTag)) {
                StoneSerializer.expectField("complete", jsonParser);
                failed = MembersAddJobStatus.complete((List) StoneSerializers.list(MemberAddResult.C3141b.f18342b).deserialize(jsonParser));
            } else {
                if (!"failed".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                StoneSerializer.expectField("failed", jsonParser);
                failed = MembersAddJobStatus.failed(StoneSerializers.string().deserialize(jsonParser));
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return failed;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MembersAddJobStatus membersAddJobStatus, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3145a.f18349a[membersAddJobStatus.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("in_progress");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("complete", jsonGenerator);
                jsonGenerator.writeFieldName("complete");
                StoneSerializers.list(MemberAddResult.C3141b.f18342b).serialize((StoneSerializer) membersAddJobStatus.f18347b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 3) {
                throw new IllegalArgumentException("Unrecognized tag: " + membersAddJobStatus.tag());
            }
            jsonGenerator.writeStartObject();
            writeTag("failed", jsonGenerator);
            jsonGenerator.writeFieldName("failed");
            StoneSerializers.string().serialize((StoneSerializer<String>) membersAddJobStatus.f18348c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static MembersAddJobStatus complete(List<MemberAddResult> list) {
        if (list == null) {
            throw new IllegalArgumentException("Value is null");
        }
        Iterator<MemberAddResult> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list is null");
            }
        }
        return new MembersAddJobStatus().m12515d(Tag.COMPLETE, list);
    }

    public static MembersAddJobStatus failed(String str) {
        if (str != null) {
            return new MembersAddJobStatus().m12516e(Tag.FAILED, str);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final MembersAddJobStatus m12514c(Tag tag) {
        MembersAddJobStatus membersAddJobStatus = new MembersAddJobStatus();
        membersAddJobStatus.f18346a = tag;
        return membersAddJobStatus;
    }

    /* renamed from: d */
    public final MembersAddJobStatus m12515d(Tag tag, List<MemberAddResult> list) {
        MembersAddJobStatus membersAddJobStatus = new MembersAddJobStatus();
        membersAddJobStatus.f18346a = tag;
        membersAddJobStatus.f18347b = list;
        return membersAddJobStatus;
    }

    /* renamed from: e */
    public final MembersAddJobStatus m12516e(Tag tag, String str) {
        MembersAddJobStatus membersAddJobStatus = new MembersAddJobStatus();
        membersAddJobStatus.f18346a = tag;
        membersAddJobStatus.f18348c = str;
        return membersAddJobStatus;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof MembersAddJobStatus)) {
            return false;
        }
        MembersAddJobStatus membersAddJobStatus = (MembersAddJobStatus) obj;
        Tag tag = this.f18346a;
        if (tag != membersAddJobStatus.f18346a) {
            return false;
        }
        int i = C3145a.f18349a[tag.ordinal()];
        if (i == 1) {
            return true;
        }
        if (i == 2) {
            List<MemberAddResult> list = this.f18347b;
            List<MemberAddResult> list2 = membersAddJobStatus.f18347b;
            return list == list2 || list.equals(list2);
        }
        if (i != 3) {
            return false;
        }
        String str = this.f18348c;
        String str2 = membersAddJobStatus.f18348c;
        return str == str2 || str.equals(str2);
    }

    public List<MemberAddResult> getCompleteValue() {
        if (this.f18346a == Tag.COMPLETE) {
            return this.f18347b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.COMPLETE, but was Tag." + this.f18346a.name());
    }

    public String getFailedValue() {
        if (this.f18346a == Tag.FAILED) {
            return this.f18348c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FAILED, but was Tag." + this.f18346a.name());
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f18346a, this.f18347b, this.f18348c});
    }

    public boolean isComplete() {
        return this.f18346a == Tag.COMPLETE;
    }

    public boolean isFailed() {
        return this.f18346a == Tag.FAILED;
    }

    public boolean isInProgress() {
        return this.f18346a == Tag.IN_PROGRESS;
    }

    public Tag tag() {
        return this.f18346a;
    }

    public String toString() {
        return C3146b.f18350b.serialize((C3146b) this, false);
    }

    public String toStringMultiline() {
        return C3146b.f18350b.serialize((C3146b) this, true);
    }
}
