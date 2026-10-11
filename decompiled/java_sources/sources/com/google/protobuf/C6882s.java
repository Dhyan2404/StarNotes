package com.google.protobuf;

import com.google.protobuf.MapEntryLite;
import com.sunia.HTREnginev2.htd;
import java.util.Map;

@htd
/* renamed from: com.google.protobuf.s */
/* loaded from: classes6.dex */
public class C6882s implements InterfaceC6880q {
    /* renamed from: i */
    public static <K, V> int m30318i(int fieldNumber, Object mapField, Object defaultEntry) {
        MapFieldLite mapFieldLite = (MapFieldLite) mapField;
        MapEntryLite mapEntryLite = (MapEntryLite) defaultEntry;
        int i = 0;
        if (mapFieldLite.isEmpty()) {
            return 0;
        }
        for (Map.Entry<K, V> entry : mapFieldLite.entrySet()) {
            i += mapEntryLite.computeMessageSize(fieldNumber, entry.getKey(), entry.getValue());
        }
        return i;
    }

    /* renamed from: j */
    public static <K, V> MapFieldLite<K, V> m30319j(Object destMapField, Object srcMapField) {
        MapFieldLite<K, V> mapFieldLite = (MapFieldLite) destMapField;
        MapFieldLite<K, V> mapFieldLite2 = (MapFieldLite) srcMapField;
        if (!mapFieldLite2.isEmpty()) {
            if (!mapFieldLite.isMutable()) {
                mapFieldLite = mapFieldLite.mutableCopy();
            }
            mapFieldLite.mergeFrom(mapFieldLite2);
        }
        return mapFieldLite;
    }

    @Override // com.google.protobuf.InterfaceC6880q
    /* renamed from: a */
    public Object mo30308a(Object destMapField, Object srcMapField) {
        return m30319j(destMapField, srcMapField);
    }

    @Override // com.google.protobuf.InterfaceC6880q
    /* renamed from: b */
    public MapEntryLite.C6795b<?, ?> mo30309b(Object mapDefaultEntry) {
        return ((MapEntryLite) mapDefaultEntry).m29395b();
    }

    @Override // com.google.protobuf.InterfaceC6880q
    /* renamed from: c */
    public Object mo30310c(Object mapField) {
        ((MapFieldLite) mapField).makeImmutable();
        return mapField;
    }

    @Override // com.google.protobuf.InterfaceC6880q
    /* renamed from: d */
    public Map<?, ?> mo30311d(Object mapField) {
        return (MapFieldLite) mapField;
    }

    @Override // com.google.protobuf.InterfaceC6880q
    /* renamed from: e */
    public Object mo30312e(Object unused) {
        return MapFieldLite.emptyMapField().mutableCopy();
    }

    @Override // com.google.protobuf.InterfaceC6880q
    /* renamed from: f */
    public Map<?, ?> mo30313f(Object mapField) {
        return (MapFieldLite) mapField;
    }

    @Override // com.google.protobuf.InterfaceC6880q
    /* renamed from: g */
    public int mo30314g(int fieldNumber, Object mapField, Object mapDefaultEntry) {
        return m30318i(fieldNumber, mapField, mapDefaultEntry);
    }

    @Override // com.google.protobuf.InterfaceC6880q
    /* renamed from: h */
    public boolean mo30315h(Object mapField) {
        return !((MapFieldLite) mapField).isMutable();
    }
}
