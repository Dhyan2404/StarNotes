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
public final class MembersAddLaunch {

    /* renamed from: a */
    public Tag f18351a;

    /* renamed from: b */
    public String f18352b;

    /* renamed from: c */
    public List<MemberAddResult> f18353c;

    /* loaded from: classes4.dex */
    public enum Tag {
        ASYNC_JOB_ID,
        COMPLETE
    }

    /* renamed from: com.dropbox.core.v2.team.MembersAddLaunch$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3147a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18354a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18354a = iArr;
            try {
                iArr[Tag.ASYNC_JOB_ID.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18354a[Tag.COMPLETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.MembersAddLaunch$b */
    /* loaded from: classes4.dex */
    public static class C3148b extends UnionSerializer<MembersAddLaunch> {

        /* renamed from: b */
        public static final C3148b f18355b = new C3148b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MembersAddLaunch deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            MembersAddLaunch complete;
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
            if ("async_job_id".equals(readTag)) {
                StoneSerializer.expectField("async_job_id", jsonParser);
                complete = MembersAddLaunch.asyncJobId(StoneSerializers.string().deserialize(jsonParser));
            } else {
                if (!"complete".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                StoneSerializer.expectField("complete", jsonParser);
                complete = MembersAddLaunch.complete((List) StoneSerializers.list(MemberAddResult.C3141b.f18342b).deserialize(jsonParser));
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return complete;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MembersAddLaunch membersAddLaunch, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3147a.f18354a[membersAddLaunch.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("async_job_id", jsonGenerator);
                jsonGenerator.writeFieldName("async_job_id");
                StoneSerializers.string().serialize((StoneSerializer<String>) membersAddLaunch.f18352b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                throw new IllegalArgumentException("Unrecognized tag: " + membersAddLaunch.tag());
            }
            jsonGenerator.writeStartObject();
            writeTag("complete", jsonGenerator);
            jsonGenerator.writeFieldName("complete");
            StoneSerializers.list(MemberAddResult.C3141b.f18342b).serialize((StoneSerializer) membersAddLaunch.f18353c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static MembersAddLaunch asyncJobId(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() >= 1) {
            return new MembersAddLaunch().m12522d(Tag.ASYNC_JOB_ID, str);
        }
        throw new IllegalArgumentException("String is shorter than 1");
    }

    public static MembersAddLaunch complete(List<MemberAddResult> list) {
        if (list == null) {
            throw new IllegalArgumentException("Value is null");
        }
        Iterator<MemberAddResult> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list is null");
            }
        }
        return new MembersAddLaunch().m12523e(Tag.COMPLETE, list);
    }

    /* renamed from: c */
    public final MembersAddLaunch m12521c(Tag tag) {
        MembersAddLaunch membersAddLaunch = new MembersAddLaunch();
        membersAddLaunch.f18351a = tag;
        return membersAddLaunch;
    }

    /* renamed from: d */
    public final MembersAddLaunch m12522d(Tag tag, String str) {
        MembersAddLaunch membersAddLaunch = new MembersAddLaunch();
        membersAddLaunch.f18351a = tag;
        membersAddLaunch.f18352b = str;
        return membersAddLaunch;
    }

    /* renamed from: e */
    public final MembersAddLaunch m12523e(Tag tag, List<MemberAddResult> list) {
        MembersAddLaunch membersAddLaunch = new MembersAddLaunch();
        membersAddLaunch.f18351a = tag;
        membersAddLaunch.f18353c = list;
        return membersAddLaunch;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof MembersAddLaunch)) {
            return false;
        }
        MembersAddLaunch membersAddLaunch = (MembersAddLaunch) obj;
        Tag tag = this.f18351a;
        if (tag != membersAddLaunch.f18351a) {
            return false;
        }
        int i = C3147a.f18354a[tag.ordinal()];
        if (i == 1) {
            String str = this.f18352b;
            String str2 = membersAddLaunch.f18352b;
            return str == str2 || str.equals(str2);
        }
        if (i != 2) {
            return false;
        }
        List<MemberAddResult> list = this.f18353c;
        List<MemberAddResult> list2 = membersAddLaunch.f18353c;
        return list == list2 || list.equals(list2);
    }

    public String getAsyncJobIdValue() {
        if (this.f18351a == Tag.ASYNC_JOB_ID) {
            return this.f18352b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ASYNC_JOB_ID, but was Tag." + this.f18351a.name());
    }

    public List<MemberAddResult> getCompleteValue() {
        if (this.f18351a == Tag.COMPLETE) {
            return this.f18353c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.COMPLETE, but was Tag." + this.f18351a.name());
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f18351a, this.f18352b, this.f18353c});
    }

    public boolean isAsyncJobId() {
        return this.f18351a == Tag.ASYNC_JOB_ID;
    }

    public boolean isComplete() {
        return this.f18351a == Tag.COMPLETE;
    }

    public Tag tag() {
        return this.f18351a;
    }

    public String toString() {
        return C3148b.f18355b.serialize((C3148b) this, false);
    }

    public String toStringMultiline() {
        return C3148b.f18355b.serialize((C3148b) this, true);
    }
}
