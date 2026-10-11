package org.mortbay.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes13.dex */
public class RolloverFileOutputStream extends FilterOutputStream {

    /* renamed from: l */
    public static Timer f115334l = null;

    /* renamed from: m */
    public static final String f115335m = "yyyy_mm_dd";

    /* renamed from: n */
    public static /* synthetic */ Class f115336n;

    /* renamed from: e */
    public C20430a f115337e;

    /* renamed from: f */
    public SimpleDateFormat f115338f;

    /* renamed from: g */
    public SimpleDateFormat f115339g;

    /* renamed from: h */
    public String f115340h;

    /* renamed from: i */
    public File f115341i;

    /* renamed from: j */
    public boolean f115342j;

    /* renamed from: k */
    public int f115343k;

    /* renamed from: org.mortbay.util.RolloverFileOutputStream$a */
    /* loaded from: classes13.dex */
    public class C20430a extends TimerTask {
        public C20430a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            try {
                RolloverFileOutputStream.this.m71657H();
                RolloverFileOutputStream.this.m71658w();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public RolloverFileOutputStream(String str) throws IOException {
        this(str, true, Integer.getInteger("ROLLOVERFILE_RETAIN_DAYS", 31).intValue());
    }

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    /* renamed from: H */
    public final synchronized void m71657H() throws IOException {
        this.f115340h = new File(this.f115340h).getCanonicalPath();
        File file = new File(this.f115340h);
        File file2 = new File(file.getParent());
        if (!file2.isDirectory() || !file2.canWrite()) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Cannot write log directory ");
            stringBuffer.append(file2);
            throw new IOException(stringBuffer.toString());
        }
        Date date = new Date();
        String name = file.getName();
        int indexOf = name.toLowerCase().indexOf(f115335m);
        if (indexOf >= 0) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(name.substring(0, indexOf));
            stringBuffer2.append(this.f115339g.format(date));
            stringBuffer2.append(name.substring(indexOf + 10));
            file = new File(file2, stringBuffer2.toString());
        }
        if (file.exists() && !file.canWrite()) {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append("Cannot write log file ");
            stringBuffer3.append(file);
            throw new IOException(stringBuffer3.toString());
        }
        if (((FilterOutputStream) this).out == null || !file.equals(this.f115341i)) {
            this.f115341i = file;
            if (!this.f115342j && file.exists()) {
                StringBuffer stringBuffer4 = new StringBuffer();
                stringBuffer4.append(file.toString());
                stringBuffer4.append(".");
                stringBuffer4.append(this.f115338f.format(date));
                file.renameTo(new File(stringBuffer4.toString()));
            }
            OutputStream outputStream = ((FilterOutputStream) this).out;
            ((FilterOutputStream) this).out = new FileOutputStream(file.toString(), this.f115342j);
            if (outputStream != null) {
                outputStream.close();
            }
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Class cls = f115336n;
        if (cls == null) {
            cls = class$("org.mortbay.util.RolloverFileOutputStream");
            f115336n = cls;
        }
        synchronized (cls) {
            try {
                try {
                    super.close();
                    ((FilterOutputStream) this).out = null;
                    this.f115341i = null;
                    this.f115337e.cancel();
                } catch (Throwable th) {
                    ((FilterOutputStream) this).out = null;
                    this.f115341i = null;
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public String getDatedFilename() {
        File file = this.f115341i;
        if (file == null) {
            return null;
        }
        return file.toString();
    }

    public String getFilename() {
        return this.f115340h;
    }

    public int getRetainDays() {
        return this.f115343k;
    }

    /* renamed from: w */
    public final void m71658w() {
        if (this.f115343k > 0) {
            long currentTimeMillis = System.currentTimeMillis();
            File file = new File(this.f115340h);
            File file2 = new File(file.getParent());
            String name = file.getName();
            int indexOf = name.toLowerCase().indexOf(f115335m);
            if (indexOf < 0) {
                return;
            }
            String substring = name.substring(0, indexOf);
            String substring2 = name.substring(indexOf + 10);
            for (String str : file2.list()) {
                if (str.startsWith(substring) && str.indexOf(substring2, substring.length()) >= 0) {
                    File file3 = new File(file2, str);
                    if ((currentTimeMillis - file3.lastModified()) / 86400000 > this.f115343k) {
                        file3.delete();
                    }
                }
            }
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        ((FilterOutputStream) this).out.write(bArr);
    }

    public RolloverFileOutputStream(String str, boolean z) throws IOException {
        this(str, z, Integer.getInteger("ROLLOVERFILE_RETAIN_DAYS", 31).intValue());
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        ((FilterOutputStream) this).out.write(bArr, i, i2);
    }

    public RolloverFileOutputStream(String str, boolean z, int i) throws IOException {
        this(str, z, i, TimeZone.getDefault());
    }

    public RolloverFileOutputStream(String str, boolean z, int i, TimeZone timeZone) throws IOException {
        this(str, z, i, timeZone, null, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RolloverFileOutputStream(String str, boolean z, int i, TimeZone timeZone, String str2, String str3) throws IOException {
        super(null);
        this.f115339g = new SimpleDateFormat(str2 == null ? System.getProperty("ROLLOVERFILE_DATE_FORMAT", "yyyy_MM_dd") : str2);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str3 == null ? System.getProperty("ROLLOVERFILE_BACKUP_FORMAT", "HHmmssSSS") : str3);
        this.f115338f = simpleDateFormat;
        simpleDateFormat.setTimeZone(timeZone);
        this.f115339g.setTimeZone(timeZone);
        if (str != null) {
            str = str.trim();
            if (str.length() == 0) {
                str = null;
            }
        }
        if (str != null) {
            this.f115340h = str;
            this.f115342j = z;
            this.f115343k = i;
            m71657H();
            Class cls = f115336n;
            if (cls == null) {
                cls = class$("org.mortbay.util.RolloverFileOutputStream");
                f115336n = cls;
            }
            synchronized (cls) {
                if (f115334l == null) {
                    f115334l = new Timer(true);
                }
                this.f115337e = new C20430a();
                Calendar calendar = Calendar.getInstance();
                calendar.setTimeZone(timeZone);
                GregorianCalendar gregorianCalendar = new GregorianCalendar(calendar.get(1), calendar.get(2), calendar.get(5), 23, 0);
                gregorianCalendar.setTimeZone(timeZone);
                gregorianCalendar.add(10, 1);
                f115334l.scheduleAtFixedRate(this.f115337e, gregorianCalendar.getTime(), 86400000L);
            }
            return;
        }
        throw new IllegalArgumentException("Invalid filename");
    }
}
