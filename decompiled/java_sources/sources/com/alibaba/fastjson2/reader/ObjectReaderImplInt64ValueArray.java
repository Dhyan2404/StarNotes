package com.alibaba.fastjson2.reader;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONFactory;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.util.Fnv;
import com.sunia.HTREnginev2.bak;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class ObjectReaderImplInt64ValueArray extends bak {

    /* renamed from: a */
    public final Function<long[], Object> f12684a;

    /* renamed from: b */
    public static final ObjectReaderImplInt64ValueArray f12683b = new ObjectReaderImplInt64ValueArray(long[].class, null);
    public static final long HASH_TYPE = Fnv.hashCode64("[J");

    public ObjectReaderImplInt64ValueArray(Class cls, Function<long[], Object> function) {
        super(cls);
        this.f12684a = function;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object createInstance(Collection collection) {
        long longValue;
        long[] jArr = new long[collection.size()];
        int i = 0;
        for (Object obj : collection) {
            if (obj == null) {
                longValue = 0;
            } else if (obj instanceof Number) {
                longValue = ((Number) obj).longValue();
            } else {
                Function typeConvert = JSONFactory.defaultObjectReaderProvider.getTypeConvert(obj.getClass(), Long.TYPE);
                if (typeConvert == null) {
                    throw new JSONException("can not cast to long " + obj.getClass());
                }
                longValue = ((Long) typeConvert.apply(obj)).longValue();
            }
            jArr[i] = longValue;
            i++;
        }
        Function<long[], Object> function = this.f12684a;
        return function != null ? function.apply(jArr) : jArr;
    }

    @Override // com.sunia.HTREnginev2.bak, com.alibaba.fastjson2.reader.ObjectReader
    public /* bridge */ /* synthetic */ Class getObjectClass() {
        return super.getObjectClass();
    }

    @Override // com.sunia.HTREnginev2.bak, com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        Function<long[], Object> function;
        long[] readInt64ValueArray = jSONReader.readInt64ValueArray();
        return (readInt64ValueArray == null || (function = this.f12684a) == null) ? readInt64ValueArray : function.apply(readInt64ValueArray);
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        Function<long[], Object> function;
        long[] readInt64ValueArray = jSONReader.readInt64ValueArray();
        return (readInt64ValueArray == null || (function = this.f12684a) == null) ? readInt64ValueArray : function.apply(readInt64ValueArray);
    }
}
