package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.RelocationPath;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
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
public class MoveBatchArg extends C2717m {

    /* renamed from: c */
    public final boolean f17272c;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected boolean allowOwnershipTransfer;
        protected boolean autorename;
        protected final List<RelocationPath> entries;

        public Builder(List<RelocationPath> list) {
            if (list == null) {
                throw new IllegalArgumentException("Required value for 'entries' is null");
            }
            if (list.size() < 1) {
                throw new IllegalArgumentException("List 'entries' has fewer than 1 items");
            }
            Iterator<RelocationPath> it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'entries' is null");
                }
            }
            this.entries = list;
            this.autorename = false;
            this.allowOwnershipTransfer = false;
        }

        public MoveBatchArg build() {
            return new MoveBatchArg(this.entries, this.autorename, this.allowOwnershipTransfer);
        }

        public Builder withAllowOwnershipTransfer(Boolean bool) {
            if (bool != null) {
                this.allowOwnershipTransfer = bool.booleanValue();
            } else {
                this.allowOwnershipTransfer = false;
            }
            return this;
        }

        public Builder withAutorename(Boolean bool) {
            if (bool != null) {
                this.autorename = bool.booleanValue();
            } else {
                this.autorename = false;
            }
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.files.MoveBatchArg$a */
    /* loaded from: classes4.dex */
    public static class C2600a extends StructSerializer<MoveBatchArg> {

        /* renamed from: b */
        public static final C2600a f17273b = new C2600a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MoveBatchArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            List list = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            Boolean bool = Boolean.FALSE;
            Boolean bool2 = bool;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("entries".equals(currentName)) {
                    list = (List) StoneSerializers.list(RelocationPath.C2630a.f17349b).deserialize(jsonParser);
                } else if ("autorename".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("allow_ownership_transfer".equals(currentName)) {
                    bool2 = StoneSerializers.boolean_().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"entries\" missing.");
            }
            MoveBatchArg moveBatchArg = new MoveBatchArg(list, bool.booleanValue(), bool2.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(moveBatchArg, moveBatchArg.mo10904c());
            return moveBatchArg;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MoveBatchArg moveBatchArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("entries");
            StoneSerializers.list(RelocationPath.C2630a.f17349b).serialize((StoneSerializer) moveBatchArg.f17519a, jsonGenerator);
            jsonGenerator.writeFieldName("autorename");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(moveBatchArg.f17520b), jsonGenerator);
            jsonGenerator.writeFieldName("allow_ownership_transfer");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(moveBatchArg.f17272c), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public MoveBatchArg(List<RelocationPath> list, boolean z, boolean z2) {
        super(list, z);
        this.f17272c = z2;
    }

    /* renamed from: e */
    public static Builder m10901e(List<RelocationPath> list) {
        return new Builder(list);
    }

    @Override // com.dropbox.core.p006v2.files.C2717m
    /* renamed from: a */
    public boolean mo10902a() {
        return this.f17520b;
    }

    @Override // com.dropbox.core.p006v2.files.C2717m
    /* renamed from: b */
    public List<RelocationPath> mo10903b() {
        return this.f17519a;
    }

    @Override // com.dropbox.core.p006v2.files.C2717m
    /* renamed from: c */
    public String mo10904c() {
        return C2600a.f17273b.serialize((C2600a) this, true);
    }

    /* renamed from: d */
    public boolean m10905d() {
        return this.f17272c;
    }

    @Override // com.dropbox.core.p006v2.files.C2717m
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        MoveBatchArg moveBatchArg = (MoveBatchArg) obj;
        List<RelocationPath> list = this.f17519a;
        List<RelocationPath> list2 = moveBatchArg.f17519a;
        return (list == list2 || list.equals(list2)) && this.f17520b == moveBatchArg.f17520b && this.f17272c == moveBatchArg.f17272c;
    }

    @Override // com.dropbox.core.p006v2.files.C2717m
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{Boolean.valueOf(this.f17272c)});
    }

    @Override // com.dropbox.core.p006v2.files.C2717m
    public String toString() {
        return C2600a.f17273b.serialize((C2600a) this, false);
    }

    public MoveBatchArg(List<RelocationPath> list) {
        this(list, false, false);
    }
}
