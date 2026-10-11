package com.dropbox.core.p006v2.team;

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
import com.onegravity.rteditor.utils.Constants;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class DevicesActive {

    /* renamed from: android, reason: collision with root package name */
    protected final List<Long> f116570android;
    protected final List<Long> ios;
    protected final List<Long> linux;
    protected final List<Long> macos;
    protected final List<Long> other;
    protected final List<Long> total;
    protected final List<Long> windows;

    /* renamed from: com.dropbox.core.v2.team.DevicesActive$a */
    /* loaded from: classes4.dex */
    public static class C3032a extends StructSerializer<DevicesActive> {

        /* renamed from: b */
        public static final C3032a f18148b = new C3032a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DevicesActive deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            List list = null;
            List list2 = null;
            List list3 = null;
            List list4 = null;
            List list5 = null;
            List list6 = null;
            List list7 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("windows".equals(currentName)) {
                    list = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(jsonParser);
                } else if ("macos".equals(currentName)) {
                    list2 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(jsonParser);
                } else if ("linux".equals(currentName)) {
                    list3 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(jsonParser);
                } else if (Constants.RICH_TEXT_SOURCE_IOS.equals(currentName)) {
                    list4 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(jsonParser);
                } else if ("android".equals(currentName)) {
                    list5 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(jsonParser);
                } else if (com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER.equals(currentName)) {
                    list6 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(jsonParser);
                } else if ("total".equals(currentName)) {
                    list7 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"windows\" missing.");
            }
            if (list2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"macos\" missing.");
            }
            if (list3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"linux\" missing.");
            }
            if (list4 == null) {
                throw new JsonParseException(jsonParser, "Required field \"ios\" missing.");
            }
            if (list5 == null) {
                throw new JsonParseException(jsonParser, "Required field \"android\" missing.");
            }
            if (list6 == null) {
                throw new JsonParseException(jsonParser, "Required field \"other\" missing.");
            }
            if (list7 == null) {
                throw new JsonParseException(jsonParser, "Required field \"total\" missing.");
            }
            DevicesActive devicesActive = new DevicesActive(list, list2, list3, list4, list5, list6, list7);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(devicesActive, devicesActive.toStringMultiline());
            return devicesActive;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DevicesActive devicesActive, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("windows");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize((StoneSerializer) devicesActive.windows, jsonGenerator);
            jsonGenerator.writeFieldName("macos");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize((StoneSerializer) devicesActive.macos, jsonGenerator);
            jsonGenerator.writeFieldName("linux");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize((StoneSerializer) devicesActive.linux, jsonGenerator);
            jsonGenerator.writeFieldName(Constants.RICH_TEXT_SOURCE_IOS);
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize((StoneSerializer) devicesActive.ios, jsonGenerator);
            jsonGenerator.writeFieldName("android");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize((StoneSerializer) devicesActive.f116570android, jsonGenerator);
            jsonGenerator.writeFieldName(com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER);
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize((StoneSerializer) devicesActive.other, jsonGenerator);
            jsonGenerator.writeFieldName("total");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize((StoneSerializer) devicesActive.total, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public DevicesActive(List<Long> list, List<Long> list2, List<Long> list3, List<Long> list4, List<Long> list5, List<Long> list6, List<Long> list7) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'windows' is null");
        }
        Iterator<Long> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'windows' is null");
            }
        }
        this.windows = list;
        if (list2 == null) {
            throw new IllegalArgumentException("Required value for 'macos' is null");
        }
        Iterator<Long> it3 = list2.iterator();
        while (it3.hasNext()) {
            if (it3.next() == null) {
                throw new IllegalArgumentException("An item in list 'macos' is null");
            }
        }
        this.macos = list2;
        if (list3 == null) {
            throw new IllegalArgumentException("Required value for 'linux' is null");
        }
        Iterator<Long> it4 = list3.iterator();
        while (it4.hasNext()) {
            if (it4.next() == null) {
                throw new IllegalArgumentException("An item in list 'linux' is null");
            }
        }
        this.linux = list3;
        if (list4 == null) {
            throw new IllegalArgumentException("Required value for 'ios' is null");
        }
        Iterator<Long> it5 = list4.iterator();
        while (it5.hasNext()) {
            if (it5.next() == null) {
                throw new IllegalArgumentException("An item in list 'ios' is null");
            }
        }
        this.ios = list4;
        if (list5 == null) {
            throw new IllegalArgumentException("Required value for 'android' is null");
        }
        Iterator<Long> it6 = list5.iterator();
        while (it6.hasNext()) {
            if (it6.next() == null) {
                throw new IllegalArgumentException("An item in list 'android' is null");
            }
        }
        this.f116570android = list5;
        if (list6 == null) {
            throw new IllegalArgumentException("Required value for 'other' is null");
        }
        Iterator<Long> it7 = list6.iterator();
        while (it7.hasNext()) {
            if (it7.next() == null) {
                throw new IllegalArgumentException("An item in list 'other' is null");
            }
        }
        this.other = list6;
        if (list7 == null) {
            throw new IllegalArgumentException("Required value for 'total' is null");
        }
        Iterator<Long> it8 = list7.iterator();
        while (it8.hasNext()) {
            if (it8.next() == null) {
                throw new IllegalArgumentException("An item in list 'total' is null");
            }
        }
        this.total = list7;
    }

    public boolean equals(Object obj) {
        List<Long> list;
        List<Long> list2;
        List<Long> list3;
        List<Long> list4;
        List<Long> list5;
        List<Long> list6;
        List<Long> list7;
        List<Long> list8;
        List<Long> list9;
        List<Long> list10;
        List<Long> list11;
        List<Long> list12;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        DevicesActive devicesActive = (DevicesActive) obj;
        List<Long> list13 = this.windows;
        List<Long> list14 = devicesActive.windows;
        return (list13 == list14 || list13.equals(list14)) && ((list = this.macos) == (list2 = devicesActive.macos) || list.equals(list2)) && (((list3 = this.linux) == (list4 = devicesActive.linux) || list3.equals(list4)) && (((list5 = this.ios) == (list6 = devicesActive.ios) || list5.equals(list6)) && (((list7 = this.f116570android) == (list8 = devicesActive.f116570android) || list7.equals(list8)) && (((list9 = this.other) == (list10 = devicesActive.other) || list9.equals(list10)) && ((list11 = this.total) == (list12 = devicesActive.total) || list11.equals(list12))))));
    }

    public List<Long> getAndroid() {
        return this.f116570android;
    }

    public List<Long> getIos() {
        return this.ios;
    }

    public List<Long> getLinux() {
        return this.linux;
    }

    public List<Long> getMacos() {
        return this.macos;
    }

    public List<Long> getOther() {
        return this.other;
    }

    public List<Long> getTotal() {
        return this.total;
    }

    public List<Long> getWindows() {
        return this.windows;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.windows, this.macos, this.linux, this.ios, this.f116570android, this.other, this.total});
    }

    public String toString() {
        return C3032a.f18148b.serialize((C3032a) this, false);
    }

    public String toStringMultiline() {
        return C3032a.f18148b.serialize((C3032a) this, true);
    }
}
