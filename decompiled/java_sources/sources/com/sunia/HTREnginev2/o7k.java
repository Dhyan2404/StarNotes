package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.function.impl.ToAny;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.util.Map;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class o7k extends bak {

    /* renamed from: c */
    public static final o7k f79437c = new o7k(null);

    /* renamed from: a */
    public Function f79438a;

    /* renamed from: b */
    public final Function<BigDecimal, Object> f79439b;

    public o7k(Function<BigDecimal, Object> function) {
        super(BigDecimal.class);
        this.f79438a = new ToAny(BigDecimal.class);
        this.f79439b = function;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object createInstance(Map map, long j) {
        Object obj = map.get("value");
        if (obj == null) {
            obj = map.get("$numberDecimal");
        }
        if (!(obj instanceof BigDecimal)) {
            obj = this.f79438a.apply(obj);
        }
        BigDecimal bigDecimal = (BigDecimal) obj;
        Function<BigDecimal, Object> function = this.f79439b;
        return function != null ? function.apply(bigDecimal) : bigDecimal;
    }

    @Override // com.sunia.HTREnginev2.bak, com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        BigDecimal readBigDecimal = jSONReader.readBigDecimal();
        Function<BigDecimal, Object> function = this.f79439b;
        return function != null ? function.apply(readBigDecimal) : readBigDecimal;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        BigDecimal readBigDecimal = jSONReader.readBigDecimal();
        Function<BigDecimal, Object> function = this.f79439b;
        return function != null ? function.apply(readBigDecimal) : readBigDecimal;
    }
}
