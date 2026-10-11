package com.google.protobuf;

import com.google.protobuf.MessageLite;
import com.google.protobuf.WireFormat;
import java.io.IOException;
import java.util.AbstractMap;
import java.util.Map;

/* loaded from: classes6.dex */
public class MapEntryLite<K, V> {

    /* renamed from: d */
    public static final int f37709d = 1;

    /* renamed from: e */
    public static final int f37710e = 2;

    /* renamed from: a */
    public final C6795b<K, V> f37711a;

    /* renamed from: b */
    public final K f37712b;

    /* renamed from: c */
    public final V f37713c;

    /* renamed from: com.google.protobuf.MapEntryLite$a */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class C6794a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f37714a;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f37714a = iArr;
            try {
                iArr[WireFormat.FieldType.MESSAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f37714a[WireFormat.FieldType.ENUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f37714a[WireFormat.FieldType.GROUP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.google.protobuf.MapEntryLite$b */
    /* loaded from: classes6.dex */
    public static class C6795b<K, V> {

        /* renamed from: a */
        public final WireFormat.FieldType f37715a;

        /* renamed from: b */
        public final K f37716b;

        /* renamed from: c */
        public final WireFormat.FieldType f37717c;

        /* renamed from: d */
        public final V f37718d;

        public C6795b(WireFormat.FieldType keyType, K defaultKey, WireFormat.FieldType valueType, V defaultValue) {
            this.f37715a = keyType;
            this.f37716b = defaultKey;
            this.f37717c = valueType;
            this.f37718d = defaultValue;
        }
    }

    public MapEntryLite(WireFormat.FieldType keyType, K defaultKey, WireFormat.FieldType valueType, V defaultValue) {
        this.f37711a = new C6795b<>(keyType, defaultKey, valueType, defaultValue);
        this.f37712b = defaultKey;
        this.f37713c = defaultValue;
    }

    /* renamed from: a */
    public static <K, V> int m29391a(C6795b<K, V> metadata, K key, V value) {
        return FieldSet.m29133o(metadata.f37715a, 1, key) + FieldSet.m29133o(metadata.f37717c, 2, value);
    }

    /* renamed from: c */
    public static <K, V> Map.Entry<K, V> m29392c(CodedInputStream input, C6795b<K, V> metadata, ExtensionRegistryLite extensionRegistry) throws IOException {
        Object obj = metadata.f37716b;
        Object obj2 = metadata.f37718d;
        while (true) {
            int readTag = input.readTag();
            if (readTag == 0) {
                break;
            }
            if (readTag == WireFormat.m29722a(1, metadata.f37715a.getWireType())) {
                obj = m29393d(input, extensionRegistry, metadata.f37715a, obj);
            } else if (readTag == WireFormat.m29722a(2, metadata.f37717c.getWireType())) {
                obj2 = m29393d(input, extensionRegistry, metadata.f37717c, obj2);
            } else if (!input.skipField(readTag)) {
                break;
            }
        }
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    /* renamed from: d */
    public static <T> T m29393d(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, WireFormat.FieldType fieldType, T t) throws IOException {
        int i = C6794a.f37714a[fieldType.ordinal()];
        if (i == 1) {
            MessageLite.Builder builder = ((MessageLite) t).toBuilder();
            codedInputStream.readMessage(builder, extensionRegistryLite);
            return (T) builder.buildPartial();
        }
        if (i == 2) {
            return (T) Integer.valueOf(codedInputStream.readEnum());
        }
        if (i != 3) {
            return (T) FieldSet.m29119O(codedInputStream, fieldType, true);
        }
        throw new RuntimeException("Groups are not allowed in maps.");
    }

    /* renamed from: e */
    public static <K, V> void m29394e(CodedOutputStream output, C6795b<K, V> metadata, K key, V value) throws IOException {
        FieldSet.m29120S(output, metadata.f37715a, 1, key);
        FieldSet.m29120S(output, metadata.f37717c, 2, value);
    }

    public static <K, V> MapEntryLite<K, V> newDefaultInstance(WireFormat.FieldType keyType, K defaultKey, WireFormat.FieldType valueType, V defaultValue) {
        return new MapEntryLite<>(keyType, defaultKey, valueType, defaultValue);
    }

    /* renamed from: b */
    public C6795b<K, V> m29395b() {
        return this.f37711a;
    }

    public int computeMessageSize(int fieldNumber, K key, V value) {
        return CodedOutputStream.computeTagSize(fieldNumber) + CodedOutputStream.m28684G(m29391a(this.f37711a, key, value));
    }

    public K getKey() {
        return this.f37712b;
    }

    public V getValue() {
        return this.f37713c;
    }

    public Map.Entry<K, V> parseEntry(ByteString bytes, ExtensionRegistryLite extensionRegistry) throws IOException {
        return m29392c(bytes.newCodedInput(), this.f37711a, extensionRegistry);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void parseInto(MapFieldLite<K, V> map, CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        int pushLimit = input.pushLimit(input.readRawVarint32());
        C6795b<K, V> c6795b = this.f37711a;
        Object obj = c6795b.f37716b;
        Object obj2 = c6795b.f37718d;
        while (true) {
            int readTag = input.readTag();
            if (readTag == 0) {
                break;
            }
            if (readTag == WireFormat.m29722a(1, this.f37711a.f37715a.getWireType())) {
                obj = m29393d(input, extensionRegistry, this.f37711a.f37715a, obj);
            } else if (readTag == WireFormat.m29722a(2, this.f37711a.f37717c.getWireType())) {
                obj2 = m29393d(input, extensionRegistry, this.f37711a.f37717c, obj2);
            } else if (!input.skipField(readTag)) {
                break;
            }
        }
        input.checkLastTagWas(0);
        input.popLimit(pushLimit);
        map.put(obj, obj2);
    }

    public void serializeTo(CodedOutputStream output, int fieldNumber, K key, V value) throws IOException {
        output.writeTag(fieldNumber, 2);
        output.writeUInt32NoTag(m29391a(this.f37711a, key, value));
        m29394e(output, this.f37711a, key, value);
    }

    public MapEntryLite(C6795b<K, V> metadata, K key, V value) {
        this.f37711a = metadata;
        this.f37712b = key;
        this.f37713c = value;
    }
}
