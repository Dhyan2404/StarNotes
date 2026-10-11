package com.tencent.beacon.base.net.p066b;

import com.tencent.beacon.base.net.p066b.p067a.C14925b;
import com.tencent.beacon.base.net.p066b.p067a.p069b.C14927b;
import com.tencent.beacon.base.net.p066b.p067a.p069b.C14928c;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.base.util.C14957f;
import com.tencent.beacon.p059a.p061b.C14882j;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.util.zip.GZIPOutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;

/* renamed from: com.tencent.beacon.base.net.b.a */
/* loaded from: classes10.dex */
public final class C14920a {

    /* renamed from: a */
    private static final C14957f<C14928c> f92680a = new C14957f<>(5);

    /* renamed from: a */
    public static byte[] m59144a(int i, byte[] bArr) throws Exception {
        if (i == 1) {
            return m59151f(bArr);
        }
        if (i == 2) {
            return m59148c(bArr);
        }
        if (i == 3) {
            return m59145a(bArr);
        }
        return m59148c(bArr);
    }

    /* renamed from: b */
    public static byte[] m59146b(int i, byte[] bArr) throws Exception {
        if (i == 1) {
            return m59150e(bArr);
        }
        if (i == 2) {
            return m59149d(bArr);
        }
        if (i == 3) {
            return m59147b(bArr);
        }
        return m59149d(bArr);
    }

    /* renamed from: c */
    private static byte[] m59148c(byte[] bArr) throws Exception {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        gZIPOutputStream.write(bArr);
        gZIPOutputStream.finish();
        gZIPOutputStream.close();
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        byteArrayOutputStream.close();
        return byteArray;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0097  */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static byte[] m59149d(byte[] r10) throws java.lang.Exception {
        /*
            r0 = 0
            r1 = 0
            java.io.ByteArrayInputStream r2 = new java.io.ByteArrayInputStream     // Catch: java.lang.Throwable -> L49 java.lang.Exception -> L4d
            r2.<init>(r10)     // Catch: java.lang.Throwable -> L49 java.lang.Exception -> L4d
            java.util.zip.GZIPInputStream r3 = new java.util.zip.GZIPInputStream     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L45
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L45
            r4 = 1024(0x400, float:1.435E-42)
            byte[] r5 = new byte[r4]     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3e
            java.io.ByteArrayOutputStream r6 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3e
            r6.<init>()     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3e
        L15:
            int r7 = r3.read(r5, r0, r4)     // Catch: java.lang.Throwable -> L32 java.lang.Exception -> L36
            r8 = -1
            if (r7 == r8) goto L20
            r6.write(r5, r0, r7)     // Catch: java.lang.Throwable -> L32 java.lang.Exception -> L36
            goto L15
        L20:
            byte[] r1 = r6.toByteArray()     // Catch: java.lang.Throwable -> L32 java.lang.Exception -> L36
            r6.flush()     // Catch: java.lang.Throwable -> L32 java.lang.Exception -> L36
            r6.close()
            r3.close()
            r2.close()
            goto L9b
        L32:
            r10 = move-exception
            r1 = r6
            goto L9c
        L36:
            r4 = move-exception
            r5 = r4
            r4 = r1
            r1 = r6
            goto L53
        L3b:
            r10 = move-exception
            goto L9c
        L3e:
            r4 = move-exception
            r5 = r4
            r4 = r1
            goto L53
        L42:
            r10 = move-exception
            r3 = r1
            goto L9c
        L45:
            r3 = move-exception
            r4 = r3
            r3 = r1
            goto L51
        L49:
            r10 = move-exception
            r2 = r1
            r3 = r2
            goto L9c
        L4d:
            r2 = move-exception
            r4 = r2
            r2 = r1
            r3 = r2
        L51:
            r5 = r4
            r4 = r3
        L53:
            com.tencent.beacon.a.b.j r6 = com.tencent.beacon.p059a.p061b.C14882j.m58961e()     // Catch: java.lang.Throwable -> L3b
            java.lang.String r7 = "509"
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L3b
            r8.<init>()     // Catch: java.lang.Throwable -> L3b
            java.lang.String r9 = "unzipData length: "
            r8.append(r9)     // Catch: java.lang.Throwable -> L3b
            int r10 = r10.length     // Catch: java.lang.Throwable -> L3b
            r8.append(r10)     // Catch: java.lang.Throwable -> L3b
            java.lang.String r10 = r8.toString()     // Catch: java.lang.Throwable -> L3b
            r6.m58954a(r7, r10, r5)     // Catch: java.lang.Throwable -> L3b
            com.tencent.beacon.base.util.C14954c.m59393a(r5)     // Catch: java.lang.Throwable -> L3b
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L3b
            r10.<init>()     // Catch: java.lang.Throwable -> L3b
            java.lang.String r6 = "unGzip error "
            r10.append(r6)     // Catch: java.lang.Throwable -> L3b
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> L3b
            r10.append(r5)     // Catch: java.lang.Throwable -> L3b
            java.lang.String r10 = r10.toString()     // Catch: java.lang.Throwable -> L3b
            java.lang.Object[] r0 = new java.lang.Object[r0]     // Catch: java.lang.Throwable -> L3b
            com.tencent.beacon.base.util.C14954c.m59395b(r10, r0)     // Catch: java.lang.Throwable -> L3b
            if (r1 == 0) goto L90
            r1.close()
        L90:
            if (r3 == 0) goto L95
            r3.close()
        L95:
            if (r2 == 0) goto L9a
            r2.close()
        L9a:
            r1 = r4
        L9b:
            return r1
        L9c:
            if (r1 == 0) goto La1
            r1.close()
        La1:
            if (r3 == 0) goto La6
            r3.close()
        La6:
            if (r2 == 0) goto Lab
            r2.close()
        Lab:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.beacon.base.net.p066b.C14920a.m59149d(byte[]):byte[]");
    }

    /* renamed from: e */
    private static byte[] m59150e(byte[] bArr) throws Exception {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        ZipInputStream zipInputStream = new ZipInputStream(byteArrayInputStream);
        byte[] bArr2 = null;
        while (zipInputStream.getNextEntry() != null) {
            byte[] bArr3 = new byte[1024];
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            while (true) {
                int read = zipInputStream.read(bArr3, 0, 1024);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr3, 0, read);
                }
            }
            bArr2 = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.flush();
            byteArrayOutputStream.close();
        }
        zipInputStream.close();
        byteArrayInputStream.close();
        return bArr2;
    }

    /* renamed from: f */
    private static byte[] m59151f(byte[] bArr) throws Exception {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ZipOutputStream zipOutputStream = new ZipOutputStream(byteArrayOutputStream);
        ZipEntry zipEntry = new ZipEntry("zip");
        zipEntry.setSize(bArr.length);
        zipOutputStream.putNextEntry(zipEntry);
        zipOutputStream.write(bArr);
        zipOutputStream.closeEntry();
        zipOutputStream.close();
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        byteArrayOutputStream.close();
        return byteArray;
    }

    /* renamed from: a */
    public static byte[] m59145a(byte[] bArr) throws Exception {
        C14925b c14925b = new C14925b();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        BufferedInputStream bufferedInputStream = new BufferedInputStream(byteArrayInputStream);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(byteArrayOutputStream);
        try {
            try {
                C14928c mo59406a = f92680a.mo59406a();
                if (mo59406a == null) {
                    mo59406a = new C14928c();
                }
                C14928c c14928c = mo59406a;
                c14928c.m59224g(c14925b.f92720k);
                c14928c.m59226h(c14925b.f92712c);
                c14928c.m59229j(c14925b.f92717h);
                c14928c.m59228i(c14925b.f92721l);
                c14928c.m59218c(c14925b.f92714e, c14925b.f92715f, c14925b.f92716g);
                c14928c.m59210a(false);
                c14928c.m59215b(bufferedOutputStream);
                long length = bArr.length;
                for (int i = 0; i < 8; i++) {
                    bufferedOutputStream.write(((int) (length >>> (i * 8))) & 255);
                }
                c14928c.m59208a(bufferedInputStream, bufferedOutputStream, -1L, -1L, null);
                bufferedOutputStream.flush();
                f92680a.mo59407a(c14928c);
            } catch (Exception e) {
                StringBuilder sb = new StringBuilder();
                sb.append("lzma zip error msg: ");
                sb.append(e.getMessage());
                String sb2 = sb.toString();
                C14954c.m59395b(sb2, new Object[0]);
                C14882j.m58961e().m58953a("521", sb2);
            }
            bufferedOutputStream.close();
            bufferedInputStream.close();
            byteArrayInputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th) {
            bufferedOutputStream.close();
            bufferedInputStream.close();
            byteArrayInputStream.close();
            byteArrayOutputStream.close();
            throw th;
        }
    }

    /* renamed from: b */
    public static byte[] m59147b(byte[] bArr) throws Exception {
        byte[] bArr2;
        new C14925b();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        BufferedInputStream bufferedInputStream = new BufferedInputStream(byteArrayInputStream);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(byteArrayOutputStream);
        try {
            try {
                bArr2 = new byte[5];
            } catch (Exception e) {
                StringBuilder sb = new StringBuilder();
                sb.append("lzma unZip error msg: ");
                sb.append(e.getMessage());
                String sb2 = sb.toString();
                C14954c.m59395b(sb2, new Object[0]);
                C14882j.m58961e().m58953a("521", sb2);
            }
            if (byteArrayInputStream.read(bArr2, 0, 5) == 5) {
                C14927b c14927b = new C14927b();
                c14927b.m59190a(bArr2);
                long j = 0;
                for (int i = 0; i < 8; i++) {
                    int read = bufferedInputStream.read();
                    if (read < 0) {
                        throw new Exception("Can't read stream size");
                    }
                    j |= read << (i * 8);
                }
                if (c14927b.m59189a(bufferedInputStream, bufferedOutputStream, j)) {
                    bufferedOutputStream.flush();
                    bufferedOutputStream.close();
                    bufferedInputStream.close();
                    byteArrayInputStream.close();
                    byteArrayOutputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
                throw new Exception("Error in data stream");
            }
            throw new Exception("input file is too short");
        } catch (Throwable th) {
            bufferedOutputStream.close();
            bufferedInputStream.close();
            byteArrayInputStream.close();
            byteArrayOutputStream.close();
            throw th;
        }
    }
}
