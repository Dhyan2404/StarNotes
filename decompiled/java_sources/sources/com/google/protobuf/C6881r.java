package com.google.protobuf;

import com.google.protobuf.MapEntryLite;
import java.util.Map;

/* renamed from: com.google.protobuf.r */
/* loaded from: classes6.dex */
public class C6881r implements InterfaceC6880q {
    /* renamed from: i */
    public static <K, V> int m30316i(int number, Object mapField, Object defaultEntryObject) {
        int i = 0;
        if (mapField == null) {
            return 0;
        }
        Map<K, V> map = ((MapField) mapField).getMap();
        MapEntry mapEntry = (MapEntry) defaultEntryObject;
        if (map.isEmpty()) {
            return 0;
        }
        for (Map.Entry<K, V> entry : map.entrySet()) {
            i += CodedOutputStream.computeTagSize(number) + CodedOutputStream.m28684G(MapEntryLite.m29391a(mapEntry.m29388k(), entry.getKey(), entry.getValue()));
        }
        return i;
    }

    /* renamed from: j */
    public static <K, V> Object m30317j(Object destMapField, Object srcMapField) {
        MapField mapField = (MapField) destMapField;
        MapField<K, V> mapField2 = (MapField) srcMapField;
        if (!mapField.isMutable()) {
            mapField.copy();
        }
        mapField.mergeFrom(mapField2);
        return mapField;
    }

    @Override // com.google.protobuf.InterfaceC6880q
    /* renamed from: a */
    public Object mo30308a(Object destMapField, Object srcMapField) {
        return m30317j(destMapField, srcMapField);
    }

    @Override // com.google.protobuf.InterfaceC6880q
    /* renamed from: b */
    public MapEntryLite.C6795b<?, ?> mo30309b(Object mapDefaultEntry) {
        return ((MapEntry) mapDefaultEntry).m29388k();
    }

    @Override // com.google.protobuf.InterfaceC6880q
    /* renamed from: c */
    public Object mo30310c(Object mapField) {
        ((MapField) mapField).makeImmutable();
        return mapField;
    }

    @Override // com.google.protobuf.InterfaceC6880q
    /* renamed from: d */
    public Map<?, ?> mo30311d(Object mapField) {
        return ((MapField) mapField).getMutableMap();
    }

    @Override // com.google.protobuf.InterfaceC6880q
    /* renamed from: e */
    public Object mo30312e(Object mapDefaultEntry) {
        return MapField.newMapField((MapEntry) mapDefaultEntry);
    }

    @Override // com.google.protobuf.InterfaceC6880q
    /* renamed from: f */
    public Map<?, ?> mo30313f(Object mapField) {
        return ((MapField) mapField).getMap();
    }

    @Override // com.google.protobuf.InterfaceC6880q
    /* renamed from: g */
    public int mo30314g(int number, Object mapField, Object mapDefaultEntry) {
        return m30316i(number, mapField, mapDefaultEntry);
    }

    @Override // com.google.protobuf.InterfaceC6880q
    /* renamed from: h */
    public boolean mo30315h(Object mapField) {
        return !((MapField) mapField).isMutable();
    }
}
