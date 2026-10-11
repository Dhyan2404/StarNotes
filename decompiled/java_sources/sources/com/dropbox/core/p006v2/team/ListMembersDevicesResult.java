package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.MemberDevices;
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
public class ListMembersDevicesResult {
    protected final String cursor;
    protected final List<MemberDevices> devices;
    protected final boolean hasMore;

    /* renamed from: com.dropbox.core.v2.team.ListMembersDevicesResult$a */
    /* loaded from: classes4.dex */
    public static class C3130a extends StructSerializer<ListMembersDevicesResult> {

        /* renamed from: b */
        public static final C3130a f18315b = new C3130a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListMembersDevicesResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Boolean bool = null;
            String str2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("devices".equals(currentName)) {
                    list = (List) StoneSerializers.list(MemberDevices.C3142a.f18343b).deserialize(jsonParser);
                } else if ("has_more".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("cursor".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"devices\" missing.");
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"has_more\" missing.");
            }
            ListMembersDevicesResult listMembersDevicesResult = new ListMembersDevicesResult(list, bool.booleanValue(), str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(listMembersDevicesResult, listMembersDevicesResult.toStringMultiline());
            return listMembersDevicesResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListMembersDevicesResult listMembersDevicesResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("devices");
            StoneSerializers.list(MemberDevices.C3142a.f18343b).serialize((StoneSerializer) listMembersDevicesResult.devices, jsonGenerator);
            jsonGenerator.writeFieldName("has_more");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(listMembersDevicesResult.hasMore), jsonGenerator);
            if (listMembersDevicesResult.cursor != null) {
                jsonGenerator.writeFieldName("cursor");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) listMembersDevicesResult.cursor, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ListMembersDevicesResult(List<MemberDevices> list, boolean z, String str) {
        if (list != null) {
            Iterator<MemberDevices> it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'devices' is null");
                }
            }
            this.devices = list;
            this.hasMore = z;
            this.cursor = str;
            return;
        }
        throw new IllegalArgumentException("Required value for 'devices' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ListMembersDevicesResult listMembersDevicesResult = (ListMembersDevicesResult) obj;
        List<MemberDevices> list = this.devices;
        List<MemberDevices> list2 = listMembersDevicesResult.devices;
        if ((list == list2 || list.equals(list2)) && this.hasMore == listMembersDevicesResult.hasMore) {
            String str = this.cursor;
            String str2 = listMembersDevicesResult.cursor;
            if (str == str2) {
                return true;
            }
            if (str != null && str.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    public String getCursor() {
        return this.cursor;
    }

    public List<MemberDevices> getDevices() {
        return this.devices;
    }

    public boolean getHasMore() {
        return this.hasMore;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.devices, Boolean.valueOf(this.hasMore), this.cursor});
    }

    public String toString() {
        return C3130a.f18315b.serialize((C3130a) this, false);
    }

    public String toStringMultiline() {
        return C3130a.f18315b.serialize((C3130a) this, true);
    }

    public ListMembersDevicesResult(List<MemberDevices> list, boolean z) {
        this(list, z, null);
    }
}
