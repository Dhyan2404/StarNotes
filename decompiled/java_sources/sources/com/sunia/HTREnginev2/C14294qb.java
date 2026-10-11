package com.sunia.HTREnginev2;

import android.content.Context;
import android.os.FileObserver;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import java.io.BufferedReader;
import java.io.FileReader;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xmlresolver.logging.AbstractLogger;
import xcrash.ICrashCallback;
import xcrash.Util;
import xcrash.XCrash;

/* renamed from: com.sunia.HTREnginev2.qb */
/* loaded from: classes16.dex */
public class C14294qb {

    /* renamed from: u */
    public static final C14294qb f81829u = new C14294qb();

    /* renamed from: e */
    public Context f81834e;

    /* renamed from: f */
    public int f81835f;

    /* renamed from: g */
    public String f81836g;

    /* renamed from: h */
    public String f81837h;

    /* renamed from: i */
    public String f81838i;

    /* renamed from: j */
    public String f81839j;

    /* renamed from: k */
    public boolean f81840k;

    /* renamed from: l */
    public int f81841l;

    /* renamed from: m */
    public int f81842m;

    /* renamed from: n */
    public int f81843n;

    /* renamed from: o */
    public boolean f81844o;

    /* renamed from: p */
    public boolean f81845p;

    /* renamed from: q */
    public ICrashCallback f81846q;

    /* renamed from: r */
    public ICrashCallback f81847r;

    /* renamed from: a */
    public final Date f81830a = new Date();

    /* renamed from: b */
    public final Pattern f81831b = Pattern.compile("^-----\\spid\\s(\\d+)\\sat\\s(.*)\\s-----$");

    /* renamed from: c */
    public final Pattern f81832c = Pattern.compile("^Cmd\\sline:\\s+(.*)$");

    /* renamed from: d */
    public final long f81833d = 15000;

    /* renamed from: s */
    public long f81848s = 0;

    /* renamed from: t */
    public FileObserver f81849t = null;

    /* renamed from: com.sunia.HTREnginev2.qb$a */
    /* loaded from: classes16.dex */
    public class a extends FileObserver {
        public a(String str, int i) {
            super(str, i);
        }

        @Override // android.os.FileObserver
        public void onEvent(int i, String str) {
            if (str != null) {
                try {
                    String str2 = "/data/anr/" + str;
                    if (str2.contains(AbstractLogger.TRACE)) {
                        C14294qb.this.m56670e(str2);
                    }
                } catch (Exception e) {
                    XCrash.m72106c().mo57488e("xcrash", "AnrHandler fileObserver onEvent failed", e);
                }
            }
        }
    }

    /* renamed from: c */
    public static C14294qb m56667c() {
        return f81829u;
    }

    /* renamed from: b */
    public final String m56668b(Date date, String str) {
        return Util.m72094i(this.f81830a, date, Util.f116422j, this.f81837h, this.f81838i) + "pid: " + this.f81835f + "  >>> " + this.f81836g + " <<<\n\n" + Util.f116417e + "\n" + str + "\n" + Util.f116418f + "\n\n";
    }

    /* renamed from: d */
    public final String m56669d(String str, long j) {
        BufferedReader bufferedReader;
        Date parse;
        String group;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(DateTimeUtil.FORMAT_YYYYMMDD_HHMMSS, Locale.US);
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader2 = null;
        try {
            bufferedReader = new BufferedReader(new FileReader(str));
            boolean z = false;
            while (true) {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    if (!z && readLine.startsWith("----- pid ")) {
                        Matcher matcher = this.f81831b.matcher(readLine);
                        if (matcher.find() && matcher.groupCount() == 2) {
                            String group2 = matcher.group(1);
                            String group3 = matcher.group(2);
                            if (group2 != null && group3 != null && this.f81835f == Integer.parseInt(group2) && (parse = simpleDateFormat.parse(group3)) != null && Math.abs(parse.getTime() - j) <= 15000) {
                                String readLine2 = bufferedReader.readLine();
                                if (readLine2 == null) {
                                    break;
                                }
                                Matcher matcher2 = this.f81832c.matcher(readLine2);
                                if (matcher2.find() && matcher2.groupCount() == 1 && (group = matcher2.group(1)) != null && group.equals(this.f81836g)) {
                                    sb.append(readLine2);
                                    sb.append('\n');
                                    sb.append("Mode: Watching /data/anr/*\n");
                                    z = true;
                                }
                            }
                        }
                    } else if (!z) {
                        continue;
                    } else {
                        if (readLine.startsWith("----- end ")) {
                            break;
                        }
                        sb.append(readLine);
                        sb.append('\n');
                    }
                } catch (Exception unused) {
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (Exception unused2) {
                        }
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    bufferedReader2 = bufferedReader;
                    if (bufferedReader2 != null) {
                        try {
                            bufferedReader2.close();
                        } catch (Exception unused3) {
                        }
                    }
                    throw th;
                }
            }
            String sb2 = sb.toString();
            try {
                bufferedReader.close();
            } catch (Exception unused4) {
            }
            return sb2;
        } catch (Exception unused5) {
            bufferedReader = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0112 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x011a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m56670e(java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.C14294qb.m56670e(java.lang.String):void");
    }

    /* renamed from: f */
    public void m56671f(Context context, int i, String str, String str2, String str3, String str4, boolean z, int i2, int i3, int i4, boolean z2, boolean z3, ICrashCallback iCrashCallback, ICrashCallback iCrashCallback2) {
    }

    /* renamed from: g */
    public void m56672g() {
        FileObserver fileObserver = this.f81849t;
        if (fileObserver != null) {
            try {
                try {
                    fileObserver.stopWatching();
                } catch (Exception e) {
                    XCrash.m72106c().mo57488e("xcrash", "AnrHandler fileObserver stopWatching failed", e);
                }
            } finally {
                this.f81849t = null;
            }
        }
    }
}
