package com.sunia.HTREnginev2;

import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Date;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.atomic.AtomicInteger;
import xcrash.Util;
import xcrash.XCrash;

/* loaded from: classes16.dex */
public class ygg {

    /* renamed from: m */
    public static final ygg f90695m = new ygg();

    /* renamed from: a */
    public String f90696a = IStyleSheet.CLASS_PLACEHOLDER;

    /* renamed from: b */
    public String f90697b = ".clean.xcrash";

    /* renamed from: c */
    public String f90698c = ".dirty.xcrash";

    /* renamed from: d */
    public String f90699d = null;

    /* renamed from: e */
    public int f90700e = 0;

    /* renamed from: f */
    public int f90701f = 0;

    /* renamed from: g */
    public int f90702g = 0;

    /* renamed from: h */
    public int f90703h = 1;

    /* renamed from: i */
    public int f90704i = 0;

    /* renamed from: j */
    public int f90705j = 0;

    /* renamed from: k */
    public int f90706k = 0;

    /* renamed from: l */
    public AtomicInteger f90707l = new AtomicInteger();

    /* renamed from: com.sunia.HTREnginev2.ygg$a */
    /* loaded from: classes16.dex */
    public class C14704a implements FilenameFilter {
        public C14704a() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            StringBuilder sb = new StringBuilder();
            sb.append(ygg.this.f90696a);
            sb.append("_");
            return str.startsWith(sb.toString()) && str.endsWith(ygg.this.f90698c);
        }
    }

    /* renamed from: com.sunia.HTREnginev2.ygg$b */
    /* loaded from: classes16.dex */
    public class RunnableC14705b implements Runnable {
        public RunnableC14705b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ygg.this.m58411h();
        }
    }

    /* renamed from: com.sunia.HTREnginev2.ygg$c */
    /* loaded from: classes16.dex */
    public class C14706c extends TimerTask {
        public C14706c() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            ygg.this.m58411h();
        }
    }

    /* renamed from: com.sunia.HTREnginev2.ygg$d */
    /* loaded from: classes16.dex */
    public class C14707d implements FilenameFilter {
        public C14707d() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            StringBuilder sb = new StringBuilder();
            sb.append(ygg.this.f90696a);
            sb.append("_");
            return str.startsWith(sb.toString()) && str.endsWith(ygg.this.f90697b);
        }
    }

    /* renamed from: com.sunia.HTREnginev2.ygg$e */
    /* loaded from: classes16.dex */
    public class C14708e implements FilenameFilter {
        public C14708e() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            StringBuilder sb = new StringBuilder();
            sb.append(ygg.this.f90696a);
            sb.append("_");
            return str.startsWith(sb.toString()) && str.endsWith(ygg.this.f90697b);
        }
    }

    /* renamed from: com.sunia.HTREnginev2.ygg$f */
    /* loaded from: classes16.dex */
    public class C14709f implements FilenameFilter {

        /* renamed from: e */
        public final /* synthetic */ String f90713e;

        public C14709f(String str) {
            this.f90713e = str;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.startsWith("tombstone_") && str.endsWith(this.f90713e);
        }
    }

    /* renamed from: com.sunia.HTREnginev2.ygg$g */
    /* loaded from: classes16.dex */
    public class C14710g implements Comparator<File> {
        public C14710g() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(File file, File file2) {
            return file.getName().compareTo(file2.getName());
        }
    }

    /* renamed from: com.sunia.HTREnginev2.ygg$h */
    /* loaded from: classes16.dex */
    public class C14711h implements FilenameFilter {
        public C14711h() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            StringBuilder sb = new StringBuilder();
            sb.append(ygg.this.f90696a);
            sb.append("_");
            return str.startsWith(sb.toString()) && str.endsWith(ygg.this.f90697b);
        }
    }

    /* renamed from: com.sunia.HTREnginev2.ygg$i */
    /* loaded from: classes16.dex */
    public class C14712i implements FilenameFilter {
        public C14712i() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            StringBuilder sb = new StringBuilder();
            sb.append(ygg.this.f90696a);
            sb.append("_");
            return str.startsWith(sb.toString()) && str.endsWith(ygg.this.f90698c);
        }
    }

    /* renamed from: com.sunia.HTREnginev2.ygg$j */
    /* loaded from: classes16.dex */
    public class C14713j implements FilenameFilter {
        public C14713j() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            StringBuilder sb = new StringBuilder();
            sb.append(ygg.this.f90696a);
            sb.append("_");
            return str.startsWith(sb.toString()) && str.endsWith(ygg.this.f90697b);
        }
    }

    /* renamed from: l */
    public static ygg m58407l() {
        return f90695m;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0067 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m58408e(java.lang.String r10, java.lang.String r11) {
        /*
            r9 = this;
            r9 = 0
            java.io.RandomAccessFile r0 = new java.io.RandomAccessFile     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L4f
            java.lang.String r1 = "rws"
            r0.<init>(r10, r1)     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L4f
            long r9 = r0.length()     // Catch: java.lang.Exception -> L49 java.lang.Throwable -> L64
            r1 = 0
            int r9 = (r9 > r1 ? 1 : (r9 == r1 ? 0 : -1))
            r10 = 1
            if (r9 <= 0) goto L39
            java.nio.channels.FileChannel r3 = r0.getChannel()     // Catch: java.lang.Exception -> L49 java.lang.Throwable -> L64
            java.nio.channels.FileChannel$MapMode r4 = java.nio.channels.FileChannel.MapMode.READ_ONLY     // Catch: java.lang.Exception -> L49 java.lang.Throwable -> L64
            r5 = 0
            long r7 = r0.length()     // Catch: java.lang.Exception -> L49 java.lang.Throwable -> L64
            java.nio.MappedByteBuffer r9 = r3.map(r4, r5, r7)     // Catch: java.lang.Exception -> L49 java.lang.Throwable -> L64
            long r3 = r0.length()     // Catch: java.lang.Exception -> L49 java.lang.Throwable -> L64
        L27:
            int r5 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r5 <= 0) goto L38
            int r5 = (int) r3     // Catch: java.lang.Exception -> L49 java.lang.Throwable -> L64
            int r5 = r5 - r10
            byte r5 = r9.get(r5)     // Catch: java.lang.Exception -> L49 java.lang.Throwable -> L64
            if (r5 == 0) goto L34
            goto L38
        L34:
            r5 = 1
            long r3 = r3 - r5
            goto L27
        L38:
            r1 = r3
        L39:
            r0.seek(r1)     // Catch: java.lang.Exception -> L49 java.lang.Throwable -> L64
            java.lang.String r9 = "UTF-8"
            byte[] r9 = r11.getBytes(r9)     // Catch: java.lang.Exception -> L49 java.lang.Throwable -> L64
            r0.write(r9)     // Catch: java.lang.Exception -> L49 java.lang.Throwable -> L64
            r0.close()     // Catch: java.lang.Exception -> L48
        L48:
            return r10
        L49:
            r9 = move-exception
            goto L52
        L4b:
            r10 = move-exception
            r0 = r9
            r9 = r10
            goto L65
        L4f:
            r10 = move-exception
            r0 = r9
            r9 = r10
        L52:
            xcrash.ILogger r10 = xcrash.XCrash.m72106c()     // Catch: java.lang.Throwable -> L64
            java.lang.String r11 = "xcrash"
            java.lang.String r1 = "FileManager appendText failed"
            r10.mo57488e(r11, r1, r9)     // Catch: java.lang.Throwable -> L64
            if (r0 == 0) goto L62
            r0.close()     // Catch: java.lang.Exception -> L62
        L62:
            r9 = 0
            return r9
        L64:
            r9 = move-exception
        L65:
            if (r0 == 0) goto L6a
            r0.close()     // Catch: java.lang.Exception -> L6a
        L6a:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.ygg.m58408e(java.lang.String, java.lang.String):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00ab A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m58409f(java.io.File r15) {
        /*
            r14 = this;
            r0 = 1024(0x400, float:1.435E-42)
            r1 = 0
            r2 = 0
            byte[] r3 = new byte[r0]     // Catch: java.lang.Throwable -> L96 java.lang.Exception -> L98
            java.util.Arrays.fill(r3, r2)     // Catch: java.lang.Throwable -> L96 java.lang.Exception -> L98
            int r4 = r14.f90705j     // Catch: java.lang.Throwable -> L96 java.lang.Exception -> L98
            long r4 = (long) r4     // Catch: java.lang.Throwable -> L96 java.lang.Exception -> L98
            long r6 = r15.length()     // Catch: java.lang.Throwable -> L96 java.lang.Exception -> L98
            int r8 = r14.f90705j     // Catch: java.lang.Throwable -> L96 java.lang.Exception -> L98
            int r8 = r8 * r0
            long r8 = (long) r8     // Catch: java.lang.Throwable -> L96 java.lang.Exception -> L98
            int r0 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            r8 = 0
            r10 = 1024(0x400, double:5.06E-321)
            if (r0 <= 0) goto L27
            long r4 = r6 / r10
            long r12 = r6 % r10
            int r0 = (r12 > r8 ? 1 : (r12 == r8 ? 0 : -1))
            if (r0 == 0) goto L27
            r12 = 1
            long r4 = r4 + r12
        L27:
            java.io.FileOutputStream r0 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L96 java.lang.Exception -> L98
            java.io.File r12 = r15.getAbsoluteFile()     // Catch: java.lang.Throwable -> L96 java.lang.Exception -> L98
            r0.<init>(r12, r2)     // Catch: java.lang.Throwable -> L96 java.lang.Exception -> L98
            r1 = r2
        L31:
            long r12 = (long) r1
            int r12 = (r12 > r4 ? 1 : (r12 == r4 ? 0 : -1))
            if (r12 >= 0) goto L4e
            int r1 = r1 + 1
            long r12 = (long) r1
            int r12 = (r12 > r4 ? 1 : (r12 == r4 ? 0 : -1))
            if (r12 != 0) goto L4a
            long r12 = r6 % r10
            int r12 = (r12 > r8 ? 1 : (r12 == r8 ? 0 : -1))
            if (r12 == 0) goto L4a
            long r12 = r6 % r10
            int r12 = (int) r12     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L93
            r0.write(r3, r2, r12)     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L93
            goto L31
        L4a:
            r0.write(r3)     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L93
            goto L31
        L4e:
            r0.flush()     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L93
            java.util.Locale r1 = java.util.Locale.US     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L93
            java.lang.String r3 = "%s/%s_%020d%s"
            r4 = 4
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L93
            java.lang.String r5 = r14.f90699d     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L93
            r4[r2] = r5     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L93
            java.lang.String r5 = r14.f90696a     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L93
            r6 = 1
            r4[r6] = r5     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L93
            java.util.Date r5 = new java.util.Date     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L93
            r5.<init>()     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L93
            long r5 = r5.getTime()     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L93
            r7 = 1000(0x3e8, double:4.94E-321)
            long r5 = r5 * r7
            int r7 = r14.m58415m()     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L93
            long r7 = (long) r7     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L93
            long r5 = r5 + r7
            java.lang.Long r5 = java.lang.Long.valueOf(r5)     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L93
            r6 = 2
            r4[r6] = r5     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L93
            java.lang.String r14 = r14.f90697b     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L93
            r5 = 3
            r4[r5] = r14     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L93
            java.lang.String r14 = java.lang.String.format(r1, r3, r4)     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L93
            java.io.File r1 = new java.io.File     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L93
            r1.<init>(r14)     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L93
            boolean r2 = r15.renameTo(r1)     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L93
            r0.close()     // Catch: java.lang.Exception -> La9
            goto La9
        L90:
            r14 = move-exception
            r1 = r0
            goto Laf
        L93:
            r14 = move-exception
            r1 = r0
            goto L99
        L96:
            r14 = move-exception
            goto Laf
        L98:
            r14 = move-exception
        L99:
            xcrash.ILogger r0 = xcrash.XCrash.m72106c()     // Catch: java.lang.Throwable -> L96
            java.lang.String r3 = "xcrash"
            java.lang.String r4 = "FileManager cleanTheDirtyFile failed"
            r0.mo57488e(r3, r4, r14)     // Catch: java.lang.Throwable -> L96
            if (r1 == 0) goto La9
            r1.close()     // Catch: java.lang.Exception -> La9
        La9:
            if (r2 != 0) goto Lae
            r15.delete()     // Catch: java.lang.Exception -> Lae
        Lae:
            return r2
        Laf:
            if (r1 == 0) goto Lb4
            r1.close()     // Catch: java.lang.Exception -> Lb4
        Lb4:
            throw r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.ygg.m58409f(java.io.File):boolean");
    }

    /* renamed from: g */
    public File m58410g(String str) {
        String str2 = this.f90699d;
        if (str2 == null || !Util.m72086a(str2)) {
            return null;
        }
        File file = new File(str);
        File[] listFiles = new File(this.f90699d).listFiles(new C14707d());
        if (listFiles != null) {
            for (int length = listFiles.length; length > 0; length--) {
                File file2 = listFiles[length - 1];
                try {
                } catch (Exception e) {
                    XCrash.m72106c().mo57488e("xcrash", "FileManager createLogFile by renameTo failed", e);
                }
                if (file2.renameTo(file)) {
                    return file;
                }
                file2.delete();
            }
        }
        try {
            if (file.createNewFile()) {
                return file;
            }
            XCrash.m72106c().mo57487e("xcrash", "FileManager createLogFile by createNewFile failed, file already exists");
            return null;
        } catch (Exception e2) {
            XCrash.m72106c().mo57488e("xcrash", "FileManager createLogFile by createNewFile failed", e2);
            return null;
        }
    }

    /* renamed from: h */
    public final void m58411h() {
        if (Util.m72086a(this.f90699d)) {
            File file = new File(this.f90699d);
            try {
                m58413j(file);
            } catch (Exception e) {
                XCrash.m72106c().mo57488e("xcrash", "FileManager doMaintainTombstone failed", e);
            }
            try {
                m58412i(file);
            } catch (Exception e2) {
                XCrash.m72106c().mo57488e("xcrash", "FileManager doMaintainPlaceholder failed", e2);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0086 A[LOOP:0: B:9:0x0020->B:20:0x0086, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x008a A[EDGE_INSN: B:21:0x008a->B:22:0x008a BREAK  A[LOOP:0: B:9:0x0020->B:20:0x0086], SYNTHETIC] */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m58412i(java.io.File r19) {
        /*
            r18 = this;
            r0 = r18
            r1 = r19
            com.sunia.HTREnginev2.ygg$h r2 = new com.sunia.HTREnginev2.ygg$h
            r2.<init>()
            java.io.File[] r2 = r1.listFiles(r2)
            if (r2 != 0) goto L10
            return
        L10:
            com.sunia.HTREnginev2.ygg$i r3 = new com.sunia.HTREnginev2.ygg$i
            r3.<init>()
            java.io.File[] r3 = r1.listFiles(r3)
            if (r3 != 0) goto L1c
            return
        L1c:
            int r4 = r2.length
            int r5 = r3.length
            r6 = 0
            r7 = r6
        L20:
            int r8 = r0.f90704i
            if (r4 >= r8) goto L88
            r8 = 2
            if (r5 <= 0) goto L38
            int r9 = r5 + (-1)
            r9 = r3[r9]
            boolean r9 = r0.m58409f(r9)
            if (r9 == 0) goto L33
            int r4 = r4 + 1
        L33:
            int r5 = r5 + (-1)
        L35:
            r17 = r7
            goto L7e
        L38:
            java.io.File r9 = new java.io.File     // Catch: java.lang.Exception -> L35
            java.util.Locale r10 = java.util.Locale.US     // Catch: java.lang.Exception -> L35
            java.lang.String r11 = "%s/%s_%020d%s"
            r12 = 4
            java.lang.Object[] r12 = new java.lang.Object[r12]     // Catch: java.lang.Exception -> L35
            java.lang.String r13 = r0.f90699d     // Catch: java.lang.Exception -> L35
            r12[r6] = r13     // Catch: java.lang.Exception -> L35
            java.lang.String r13 = r0.f90696a     // Catch: java.lang.Exception -> L35
            r14 = 1
            r12[r14] = r13     // Catch: java.lang.Exception -> L35
            java.util.Date r13 = new java.util.Date     // Catch: java.lang.Exception -> L35
            r13.<init>()     // Catch: java.lang.Exception -> L35
            long r13 = r13.getTime()     // Catch: java.lang.Exception -> L35
            r15 = 1000(0x3e8, double:4.94E-321)
            long r13 = r13 * r15
            int r15 = r18.m58415m()     // Catch: java.lang.Exception -> L35
            r17 = r7
            long r6 = (long) r15
            long r13 = r13 + r6
            java.lang.Long r6 = java.lang.Long.valueOf(r13)     // Catch: java.lang.Exception -> L7e
            r12[r8] = r6     // Catch: java.lang.Exception -> L7e
            java.lang.String r6 = r0.f90698c     // Catch: java.lang.Exception -> L7e
            r7 = 3
            r12[r7] = r6     // Catch: java.lang.Exception -> L7e
            java.lang.String r6 = java.lang.String.format(r10, r11, r12)     // Catch: java.lang.Exception -> L7e
            r9.<init>(r6)     // Catch: java.lang.Exception -> L7e
            boolean r6 = r9.createNewFile()     // Catch: java.lang.Exception -> L7e
            if (r6 == 0) goto L7e
            boolean r6 = r0.m58409f(r9)     // Catch: java.lang.Exception -> L7e
            if (r6 == 0) goto L7e
            int r4 = r4 + 1
        L7e:
            int r7 = r17 + 1
            int r6 = r0.f90704i
            int r6 = r6 * r8
            if (r7 <= r6) goto L86
            goto L8a
        L86:
            r6 = 0
            goto L20
        L88:
            r17 = r7
        L8a:
            if (r7 <= 0) goto L9e
            com.sunia.HTREnginev2.ygg$j r2 = new com.sunia.HTREnginev2.ygg$j
            r2.<init>()
            java.io.File[] r2 = r1.listFiles(r2)
            com.sunia.HTREnginev2.ygg$a r3 = new com.sunia.HTREnginev2.ygg$a
            r3.<init>()
            java.io.File[] r3 = r1.listFiles(r3)
        L9e:
            if (r2 == 0) goto Lb4
            int r1 = r2.length
            int r4 = r0.f90704i
            if (r1 <= r4) goto Lb4
            r1 = 0
        La6:
            int r4 = r2.length
            int r5 = r0.f90704i
            int r4 = r4 - r5
            if (r1 >= r4) goto Lb4
            r4 = r2[r1]
            r4.delete()
            int r1 = r1 + 1
            goto La6
        Lb4:
            if (r3 == 0) goto Lc2
            int r0 = r3.length
            r6 = 0
        Lb8:
            if (r6 >= r0) goto Lc2
            r1 = r3[r6]
            r1.delete()
            int r6 = r6 + 1
            goto Lb8
        Lc2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.ygg.m58412i(java.io.File):void");
    }

    /* renamed from: j */
    public final void m58413j(File file) {
        m58414k(file, Util.f116425m, this.f90701f);
        m58414k(file, Util.f116424l, this.f90700e);
        m58414k(file, Util.f116426n, this.f90702g);
        m58414k(file, Util.f116427o, this.f90703h);
    }

    /* renamed from: k */
    public final boolean m58414k(File file, String str, int i) {
        File[] listFiles = file.listFiles(new C14709f(str));
        boolean z = true;
        if (listFiles != null && listFiles.length > i) {
            if (i > 0) {
                Arrays.sort(listFiles, new C14710g());
            }
            for (int i2 = 0; i2 < listFiles.length - i; i2++) {
                if (!m58419q(listFiles[i2])) {
                    z = false;
                }
            }
        }
        return z;
    }

    /* renamed from: m */
    public final int m58415m() {
        int incrementAndGet = this.f90707l.incrementAndGet();
        if (incrementAndGet >= 999) {
            this.f90707l.set(0);
        }
        return incrementAndGet;
    }

    /* renamed from: n */
    public void m58416n(String str, int i, int i2, int i3, int i4, int i5, int i6) {
        File[] listFiles;
        this.f90699d = str;
        this.f90700e = i;
        this.f90701f = i2;
        this.f90702g = i3;
        this.f90704i = i4;
        this.f90705j = i5;
        this.f90706k = i6;
        try {
            File file = new File(str);
            if (file.exists() && file.isDirectory() && (listFiles = file.listFiles()) != null) {
                int i7 = 0;
                int i8 = 0;
                int i9 = 0;
                int i10 = 0;
                int i11 = 0;
                int i12 = 0;
                for (File file2 : listFiles) {
                    if (file2.isFile()) {
                        String name = file2.getName();
                        if (!name.startsWith("tombstone_")) {
                            if (name.startsWith(this.f90696a + "_")) {
                                if (name.endsWith(this.f90697b)) {
                                    i11++;
                                } else if (name.endsWith(this.f90698c)) {
                                    i12++;
                                }
                            }
                        } else if (name.endsWith(Util.f116424l)) {
                            i7++;
                        } else if (name.endsWith(Util.f116425m)) {
                            i8++;
                        } else if (name.endsWith(Util.f116426n)) {
                            i9++;
                        } else if (name.endsWith(Util.f116427o)) {
                            i10++;
                        }
                    }
                }
                int i13 = this.f90700e;
                if (i7 <= i13 && i8 <= this.f90701f && i9 <= this.f90702g && i10 <= this.f90703h && i11 == this.f90704i && i12 == 0) {
                    this.f90706k = -1;
                    return;
                }
                if (i7 <= i13 + 10) {
                    int i14 = this.f90701f;
                    if (i8 <= i14 + 10) {
                        int i15 = this.f90702g;
                        if (i9 <= i15 + 10) {
                            int i16 = this.f90703h;
                            if (i10 <= i16 + 10) {
                                int i17 = this.f90704i;
                                if (i11 <= i17 + 10 && i12 <= 10) {
                                    if (i7 > i13 || i8 > i14 || i9 > i15 || i10 > i16 || i11 > i17 || i12 > 0) {
                                        this.f90706k = 0;
                                        return;
                                    }
                                    return;
                                }
                            }
                        }
                    }
                }
                m58411h();
                this.f90706k = -1;
            }
        } catch (Exception e) {
            XCrash.m72106c().mo57488e("xcrash", "FileManager init failed", e);
        }
    }

    /* renamed from: o */
    public void m58417o() {
        int i;
        if (this.f90699d == null || (i = this.f90706k) < 0) {
            return;
        }
        try {
            if (i == 0) {
                new Thread(new RunnableC14705b(), "xcrash_file_mgr").start();
            } else {
                new Timer("xcrash_file_mgr").schedule(new C14706c(), this.f90706k);
            }
        } catch (Exception e) {
            XCrash.m72106c().mo57488e("xcrash", "FileManager maintain start failed", e);
        }
    }

    /* renamed from: p */
    public boolean m58418p() {
        if (!Util.m72086a(this.f90699d)) {
            return false;
        }
        try {
            return m58414k(new File(this.f90699d), Util.f116426n, this.f90702g);
        } catch (Exception e) {
            XCrash.m72106c().mo57488e("xcrash", "FileManager maintainAnr failed", e);
            return false;
        }
    }

    /* renamed from: q */
    public boolean m58419q(File file) {
        if (file == null) {
            return false;
        }
        if (this.f90699d == null || this.f90704i <= 0) {
            try {
                return file.delete();
            } catch (Exception unused) {
                return false;
            }
        }
        try {
            File[] listFiles = new File(this.f90699d).listFiles(new C14708e());
            if (listFiles != null && listFiles.length >= this.f90704i) {
                try {
                    return file.delete();
                } catch (Exception unused2) {
                    return false;
                }
            }
            File file2 = new File(String.format(Locale.US, "%s/%s_%020d%s", this.f90699d, this.f90696a, Long.valueOf((new Date().getTime() * 1000) + m58415m()), this.f90698c));
            if (file.renameTo(file2)) {
                return m58409f(file2);
            }
            try {
                return file.delete();
            } catch (Exception unused3) {
                return false;
            }
        } catch (Exception e) {
            XCrash.m72106c().mo57488e("xcrash", "FileManager recycleLogFile failed", e);
            try {
                return file.delete();
            } catch (Exception unused4) {
                return false;
            }
        }
    }
}
