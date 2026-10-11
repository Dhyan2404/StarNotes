package com.alibaba.fastjson2.reader;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.util.Fnv;
import java.lang.reflect.Type;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import org.apache.http.cookie.ClientCookie;

/* loaded from: classes3.dex */
public class ObjectReaderMisc implements ObjectReader {

    /* renamed from: b */
    public static final long f12740b = Fnv.hashCode64("address");

    /* renamed from: c */
    public static final long f12741c = Fnv.hashCode64(ClientCookie.PORT_ATTR);

    /* renamed from: a */
    public final Class f12742a;

    public ObjectReaderMisc(Class cls) {
        this.f12742a = cls;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        InetAddress inetAddress = null;
        if (jSONReader.nextIfNull()) {
            return null;
        }
        if (this.f12742a != InetSocketAddress.class) {
            throw new JSONException(jSONReader.info("not support : " + this.f12742a.getName()));
        }
        jSONReader.nextIfObjectStart();
        int i = 0;
        while (!jSONReader.nextIfObjectEnd()) {
            long readFieldNameHashCode = jSONReader.readFieldNameHashCode();
            if (readFieldNameHashCode == f12740b) {
                inetAddress = (InetAddress) jSONReader.read(InetAddress.class);
            } else if (readFieldNameHashCode == f12741c) {
                i = jSONReader.readInt32().intValue();
            } else {
                jSONReader.skipValue();
            }
        }
        jSONReader.nextIfComma();
        return new InetSocketAddress(inetAddress, i);
    }
}
