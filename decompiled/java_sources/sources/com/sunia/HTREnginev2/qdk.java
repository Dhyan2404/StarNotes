package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.writer.ObjectWriter;
import java.lang.reflect.Type;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.regex.Pattern;
import org.apache.http.cookie.ClientCookie;

/* loaded from: classes3.dex */
public final class qdk implements ObjectWriter {

    /* renamed from: a */
    public static final qdk f81928a = new qdk();

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        String pattern;
        if (obj == null) {
            jSONWriter.writeNull();
            return;
        }
        String name = obj.getClass().getName();
        if (name.equals("java.util.regex.Pattern")) {
            pattern = ((Pattern) obj).pattern();
        } else {
            if (name.equals("net.sf.json.JSONNull")) {
                jSONWriter.writeNull();
                return;
            }
            if (!name.equals("java.net.Inet6Address")) {
                if (name.equals("com.fasterxml.jackson.databind.node.ArrayNode")) {
                    String obj3 = obj.toString();
                    if (jSONWriter.isUTF8()) {
                        jSONWriter.writeRaw(obj3.getBytes(StandardCharsets.UTF_8));
                        return;
                    } else {
                        jSONWriter.writeRaw(obj3);
                        return;
                    }
                }
                if (!name.equals("java.net.Inet4Address")) {
                    if (!name.equals("java.text.SimpleDateFormat")) {
                        if (!name.equals("java.net.InetSocketAddress")) {
                            throw new JSONException("not support class : " + name);
                        }
                        InetSocketAddress inetSocketAddress = (InetSocketAddress) obj;
                        jSONWriter.startObject();
                        jSONWriter.writeName("address");
                        jSONWriter.writeColon();
                        jSONWriter.writeAny(inetSocketAddress.getAddress());
                        jSONWriter.writeName(ClientCookie.PORT_ATTR);
                        jSONWriter.writeColon();
                        jSONWriter.writeInt32(inetSocketAddress.getPort());
                        jSONWriter.endObject();
                        return;
                    }
                    pattern = ((SimpleDateFormat) obj).toPattern();
                }
            }
            pattern = ((InetAddress) obj).getHostName();
        }
        jSONWriter.writeString(pattern);
    }
}
