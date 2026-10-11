package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.reader.FieldReaderList;
import com.alibaba.fastjson2.reader.ObjectReader;
import com.alibaba.fastjson2.util.TypeUtils;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Supplier;

/* loaded from: classes3.dex */
public class adg<T, V> extends FieldReaderList<T, V> {

    /* renamed from: q */
    public final Supplier<List<V>> f64583q;

    /* renamed from: r */
    public final ObjectReader<V> f64584r;

    public adg(Supplier<List<V>> supplier, ObjectReader<V> objectReader, BiConsumer<T, List<V>> biConsumer, Type type, String str) {
        super(str, List.class, List.class, type, TypeUtils.getClass(type), 0, 0L, null, null, null, null, null, biConsumer);
        this.f64583q = supplier;
        this.f64584r = objectReader;
    }

    @Override // com.alibaba.fastjson2.reader.FieldReaderObject, com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, Object obj) {
        this.function.accept(t, obj);
    }

    @Override // com.alibaba.fastjson2.reader.FieldReaderList
    public Collection<V> createList(JSONReader.Context context) {
        return this.f64583q.get();
    }
}
