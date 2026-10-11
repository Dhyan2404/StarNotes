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
public class RelocationBatchArg extends C2717m {

    /* renamed from: c */
    public final boolean f17299c;

    /* renamed from: d */
    public final boolean f17300d;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected boolean allowOwnershipTransfer;
        protected boolean allowSharedFolder;
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
            this.allowSharedFolder = false;
            this.allowOwnershipTransfer = false;
        }

        public RelocationBatchArg build() {
            return new RelocationBatchArg(this.entries, this.autorename, this.allowSharedFolder, this.allowOwnershipTransfer);
        }

        public Builder withAllowOwnershipTransfer(Boolean bool) {
            if (bool != null) {
                this.allowOwnershipTransfer = bool.booleanValue();
            } else {
                this.allowOwnershipTransfer = false;
            }
            return this;
        }

        public Builder withAllowSharedFolder(Boolean bool) {
            if (bool != null) {
                this.allowSharedFolder = bool.booleanValue();
            } else {
                this.allowSharedFolder = false;
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

    /* renamed from: com.dropbox.core.v2.files.RelocationBatchArg$a */
    /* loaded from: classes4.dex */
    public static class C2610a extends StructSerializer<RelocationBatchArg> {

        /* renamed from: b */
        public static final C2610a f17301b = new C2610a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RelocationBatchArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Boolean bool3 = bool2;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("entries".equals(currentName)) {
                    list = (List) StoneSerializers.list(RelocationPath.C2630a.f17349b).deserialize(jsonParser);
                } else if ("autorename".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("allow_shared_folder".equals(currentName)) {
                    bool2 = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("allow_ownership_transfer".equals(currentName)) {
                    bool3 = StoneSerializers.boolean_().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"entries\" missing.");
            }
            RelocationBatchArg relocationBatchArg = new RelocationBatchArg(list, bool.booleanValue(), bool2.booleanValue(), bool3.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(relocationBatchArg, relocationBatchArg.mo10904c());
            return relocationBatchArg;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RelocationBatchArg relocationBatchArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("entries");
            StoneSerializers.list(RelocationPath.C2630a.f17349b).serialize((StoneSerializer) relocationBatchArg.f17519a, jsonGenerator);
            jsonGenerator.writeFieldName("autorename");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(relocationBatchArg.f17520b), jsonGenerator);
            jsonGenerator.writeFieldName("allow_shared_folder");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(relocationBatchArg.f17299c), jsonGenerator);
            jsonGenerator.writeFieldName("allow_ownership_transfer");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(relocationBatchArg.f17300d), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public RelocationBatchArg(List<RelocationPath> list, boolean z, boolean z2, boolean z3) {
        super(list, z);
        this.f17299c = z2;
        this.f17300d = z3;
    }

    /* renamed from: f */
    public static Builder m10932f(List<RelocationPath> list) {
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
        return C2610a.f17301b.serialize((C2610a) this, true);
    }

    /* renamed from: d */
    public boolean m10933d() {
        return this.f17300d;
    }

    /* renamed from: e */
    public boolean m10934e() {
        return this.f17299c;
    }

    @Override // com.dropbox.core.p006v2.files.C2717m
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        RelocationBatchArg relocationBatchArg = (RelocationBatchArg) obj;
        List<RelocationPath> list = this.f17519a;
        List<RelocationPath> list2 = relocationBatchArg.f17519a;
        return (list == list2 || list.equals(list2)) && this.f17520b == relocationBatchArg.f17520b && this.f17299c == relocationBatchArg.f17299c && this.f17300d == relocationBatchArg.f17300d;
    }

    @Override // com.dropbox.core.p006v2.files.C2717m
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{Boolean.valueOf(this.f17299c), Boolean.valueOf(this.f17300d)});
    }

    @Override // com.dropbox.core.p006v2.files.C2717m
    public String toString() {
        return C2610a.f17301b.serialize((C2610a) this, false);
    }

    public RelocationBatchArg(List<RelocationPath> list) {
        this(list, false, false, false);
    }
}
