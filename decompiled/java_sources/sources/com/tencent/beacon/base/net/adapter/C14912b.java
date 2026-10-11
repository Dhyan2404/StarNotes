package com.tencent.beacon.base.net.adapter;

import com.tencent.beacon.base.net.BResponse;
import com.tencent.beacon.base.net.C14950d;
import com.tencent.beacon.base.net.call.Callback;
import com.tencent.beacon.base.net.call.HttpRequestEntity;
import com.tencent.beacon.base.net.call.JceRequestEntity;
import com.tencent.beacon.base.net.p066b.C14935d;
import com.tencent.beacon.base.util.C14954c;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;

/* renamed from: com.tencent.beacon.base.net.adapter.b */
/* loaded from: classes10.dex */
public class C14912b extends AbstractNetAdapter {
    /* renamed from: a */
    private BResponse m59131a(String str, String str2, Map<String, String> map, byte[] bArr) throws IOException {
        HttpURLConnection m59132a = m59132a(str, str2, map);
        m59132a.connect();
        OutputStream outputStream = m59132a.getOutputStream();
        if (outputStream != null && bArr != null) {
            outputStream.write(bArr);
            outputStream.close();
        }
        return new BResponse(m59132a.getHeaderFields(), m59132a.getResponseCode(), m59132a.getResponseMessage(), m59133a(m59132a.getInputStream()));
    }

    private byte[] buildBody(HttpRequestEntity httpRequestEntity) throws UnsupportedEncodingException {
        int i = C14911a.f92665a[httpRequestEntity.bodyType().ordinal()];
        if (i == 1) {
            return httpRequestEntity.content();
        }
        if (i == 2) {
            return C14935d.m59300b(httpRequestEntity.formParams()).getBytes("UTF-8");
        }
        if (i != 3) {
            return null;
        }
        return httpRequestEntity.json().getBytes("UTF-8");
    }

    @Override // com.tencent.beacon.base.net.adapter.AbstractNetAdapter
    public void request(JceRequestEntity jceRequestEntity, Callback<byte[]> callback) {
        String name = jceRequestEntity.getType().name();
        try {
            byte[] content = jceRequestEntity.getContent();
            if (content != null && content.length >= 65535) {
                String str = jceRequestEntity.getType().toString();
                StringBuilder sb = new StringBuilder();
                sb.append("content length is too long:");
                sb.append(content.length);
                callback.onFailure(new C14950d(str, "406", -1, sb.toString()));
                return;
            }
            BResponse m59131a = m59131a(jceRequestEntity.getUrl(), "POST", jceRequestEntity.getHeader(), content);
            int i = m59131a.code;
            if (i != 200) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("response status code != 2XX. msg: ");
                sb2.append(m59131a.msg);
                callback.onFailure(new C14950d(name, "452", i, sb2.toString()));
                return;
            }
            C14935d.m59297a(m59131a.headers);
            callback.onResponse(m59131a.body);
        } catch (ConnectException e) {
            C14954c.m59393a(e);
            callback.onFailure(new C14950d(name, "451", -1, "https connect timeout: " + e.getMessage(), e));
        } catch (Throwable th) {
            C14954c.m59393a(th);
            callback.onFailure(new C14950d(name, "499", -1, "https connect error: " + th.getMessage(), th));
        }
    }

    /*  JADX ERROR: Types fix failed
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "changeArg" is null
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:439)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:232)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:212)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:183)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:112)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:447)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:232)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:212)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:183)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:112)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:232)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:212)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:183)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:112)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:466)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:232)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:212)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:188)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:112)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:83)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:56)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryPossibleTypes(FixTypesVisitor.java:183)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:242)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:221)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:91)
        */
    /* JADX WARN: Failed to calculate best type for var: r0v1 ??
    java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "changeArg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:439)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:232)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:212)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:183)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:112)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:447)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:232)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:212)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:183)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:112)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:232)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:212)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:183)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:112)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.arrayPutListener(TypeUpdate.java:609)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:232)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:212)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:188)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:112)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:83)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:56)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:145)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:123)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:101)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:101)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
     */
    /* JADX WARN: Not initialized variable reg: 3, insn: 0x0045: MOVE (r6 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]), block:B:22:0x0045 */
    /* renamed from: a */
    private byte[] m59133a(java.io.InputStream r8) throws java.io.IOException {
        /*
            r7 = this;
            r7 = 1
            r0 = 2
            r1 = 0
            r2 = 0
            java.io.ByteArrayOutputStream r3 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L33
            r3.<init>()     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L33
            r2 = 2048(0x800, float:2.87E-42)
            byte[] r2 = new byte[r2]     // Catch: java.io.IOException -> L2f java.lang.Throwable -> L44
        Ld:
            int r4 = r8.read(r2)     // Catch: java.io.IOException -> L2f java.lang.Throwable -> L44
            r5 = -1
            if (r4 == r5) goto L18
            r3.write(r2, r1, r4)     // Catch: java.io.IOException -> L2f java.lang.Throwable -> L44
            goto Ld
        L18:
            r3.flush()     // Catch: java.io.IOException -> L2f java.lang.Throwable -> L44
            byte[] r2 = r3.toByteArray()     // Catch: java.io.IOException -> L2f java.lang.Throwable -> L44
            r3.close()     // Catch: java.io.IOException -> L2f java.lang.Throwable -> L44
            r8.close()     // Catch: java.io.IOException -> L2f java.lang.Throwable -> L44
            java.io.Closeable[] r0 = new java.io.Closeable[r0]
            r0[r1] = r8
            r0[r7] = r3
            com.tencent.beacon.base.util.C14953b.m59365a(r0)
            return r2
        L2f:
            r2 = move-exception
            goto L37
        L31:
            r3 = move-exception
            goto L48
        L33:
            r3 = move-exception
            r6 = r3
            r3 = r2
            r2 = r6
        L37:
            com.tencent.beacon.base.util.C14954c.m59393a(r2)     // Catch: java.lang.Throwable -> L44
            java.io.Closeable[] r0 = new java.io.Closeable[r0]
            r0[r1] = r8
            r0[r7] = r3
            com.tencent.beacon.base.util.C14953b.m59365a(r0)
            throw r2
        L44:
            r2 = move-exception
            r6 = r3
            r3 = r2
            r2 = r6
        L48:
            java.io.Closeable[] r0 = new java.io.Closeable[r0]
            r0[r1] = r8
            r0[r7] = r2
            com.tencent.beacon.base.util.C14953b.m59365a(r0)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.beacon.base.net.adapter.C14912b.m59133a(java.io.InputStream):byte[]");
    }

    @Override // com.tencent.beacon.base.net.adapter.AbstractNetAdapter
    public void request(HttpRequestEntity httpRequestEntity, Callback<BResponse> callback) {
        String tag = httpRequestEntity.tag();
        try {
            BResponse m59131a = m59131a(httpRequestEntity.url(), httpRequestEntity.method().name(), httpRequestEntity.headers(), buildBody(httpRequestEntity));
            int i = m59131a.code;
            if (i != 200) {
                StringBuilder sb = new StringBuilder();
                sb.append("response status code != 2XX. msg: ");
                sb.append(m59131a.msg);
                callback.onFailure(new C14950d(tag, "452", i, sb.toString()));
            } else {
                callback.onResponse(m59131a);
            }
        } catch (ConnectException e) {
            C14954c.m59393a(e);
            callback.onFailure(new C14950d(tag, "451", -1, "https connect timeout: " + e.getMessage(), e));
        } catch (Throwable th) {
            C14954c.m59393a(th);
            callback.onFailure(new C14950d(tag, "499", -1, "https connect error: " + th.getMessage(), th));
        }
    }

    /* renamed from: a */
    private HttpURLConnection m59132a(String str, String str2, Map<String, String> map) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setConnectTimeout(30000);
        httpURLConnection.setReadTimeout(10000);
        httpURLConnection.setRequestMethod(str2);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setInstanceFollowRedirects(false);
        for (Map.Entry<String, String> entry : map.entrySet()) {
            httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
        }
        return httpURLConnection;
    }
}
