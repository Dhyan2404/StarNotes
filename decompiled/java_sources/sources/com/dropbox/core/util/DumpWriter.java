package com.dropbox.core.util;

import com.dropbox.core.json.JsonDateReader;
import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes4.dex */
public abstract class DumpWriter {

    /* loaded from: classes4.dex */
    public static final class Plain extends DumpWriter {

        /* renamed from: a */
        public StringBuilder f16630a;

        /* renamed from: b */
        public boolean f16631b = false;

        public Plain(StringBuilder sb) {
            this.f16630a = sb;
        }

        /* renamed from: b */
        public final void m10137b() {
            if (this.f16631b) {
                this.f16630a.append(", ");
            } else {
                this.f16631b = true;
            }
        }

        @Override // com.dropbox.core.util.DumpWriter
        /* renamed from: f */
        public DumpWriter mo10123f(String str) {
            m10137b();
            StringBuilder sb = this.f16630a;
            sb.append(str);
            sb.append('=');
            this.f16631b = false;
            return this;
        }

        @Override // com.dropbox.core.util.DumpWriter
        public DumpWriter listEnd() {
            this.f16630a.append(IteratorUtils.f104924b);
            this.f16631b = true;
            return this;
        }

        @Override // com.dropbox.core.util.DumpWriter
        public DumpWriter listStart() {
            m10137b();
            this.f16630a.append(IteratorUtils.f104923a);
            this.f16631b = false;
            return this;
        }

        @Override // com.dropbox.core.util.DumpWriter
        public DumpWriter recordEnd() {
            this.f16630a.append(MotionUtils.f31762d);
            this.f16631b = true;
            return this;
        }

        @Override // com.dropbox.core.util.DumpWriter
        public DumpWriter recordStart(String str) {
            if (str != null) {
                this.f16630a.append(str);
            }
            this.f16630a.append(MotionUtils.f31761c);
            this.f16631b = false;
            return this;
        }

        @Override // com.dropbox.core.util.DumpWriter
        public DumpWriter verbatim(String str) {
            m10137b();
            this.f16630a.append(str);
            return this;
        }
    }

    /* renamed from: a */
    public static String m10122a(String str, int i) {
        while (str.length() < i) {
            str = "0" + str;
        }
        return str;
    }

    public static String toStringDate(Date date) {
        if (date == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        GregorianCalendar gregorianCalendar = new GregorianCalendar(JsonDateReader.UTC);
        gregorianCalendar.setTime(date);
        String num = Integer.toString(gregorianCalendar.get(1));
        String m10122a = m10122a(Integer.toString(gregorianCalendar.get(2) + 1), 2);
        String m10122a2 = m10122a(Integer.toString(gregorianCalendar.get(5)), 2);
        String m10122a3 = m10122a(Integer.toString(gregorianCalendar.get(11)), 2);
        String m10122a4 = m10122a(Integer.toString(gregorianCalendar.get(12)), 2);
        String m10122a5 = m10122a(Integer.toString(gregorianCalendar.get(13)), 2);
        sb.append('\"');
        sb.append(num);
        sb.append("/");
        sb.append(m10122a);
        sb.append("/");
        sb.append(m10122a2);
        sb.append(" ");
        sb.append(m10122a3);
        sb.append(":");
        sb.append(m10122a4);
        sb.append(":");
        sb.append(m10122a5);
        sb.append(" UTC");
        sb.append('\"');
        return sb.toString();
    }

    /* renamed from: f */
    public abstract DumpWriter mo10123f(String str);

    public DumpWriter fieldVerbatim(String str, String str2) {
        return mo10123f(str).verbatim(str2);
    }

    public abstract DumpWriter listEnd();

    public abstract DumpWriter listStart();

    public abstract DumpWriter recordEnd();

    public abstract DumpWriter recordStart(String str);

    /* renamed from: v */
    public DumpWriter m10129v(Iterable<? extends Dumpable> iterable) {
        if (iterable == null) {
            verbatim("null");
        } else {
            listStart();
            Iterator<? extends Dumpable> it2 = iterable.iterator();
            while (it2.hasNext()) {
                m10128v(it2.next());
            }
            listEnd();
        }
        return this;
    }

    public abstract DumpWriter verbatim(String str);

    /* renamed from: v */
    public DumpWriter m10131v(String str) {
        if (str == null) {
            verbatim("null");
        } else {
            verbatim(StringUtil.m10140jq(str));
        }
        return this;
    }

    /* renamed from: v */
    public DumpWriter m10126v(int i) {
        return verbatim(Integer.toString(i));
    }

    /* loaded from: classes4.dex */
    public static final class Multiline extends DumpWriter {

        /* renamed from: a */
        public final StringBuilder f16626a;

        /* renamed from: b */
        public final int f16627b;

        /* renamed from: c */
        public int f16628c;

        /* renamed from: d */
        public boolean f16629d;

        public Multiline(StringBuilder sb, int i, int i2, boolean z) {
            this.f16629d = true;
            if (sb == null) {
                throw new IllegalArgumentException("'buf' must not be null");
            }
            if (i < 0) {
                throw new IllegalArgumentException("'indentAmount' must be non-negative");
            }
            if (i2 >= 0) {
                this.f16626a = sb;
                this.f16627b = i;
                this.f16628c = i2;
                this.f16629d = z;
                return;
            }
            throw new IllegalArgumentException("'currentIndent' must be non-negative");
        }

        /* renamed from: b */
        public final void m10134b() {
            int i = this.f16627b;
            int i2 = this.f16628c;
            if (i > i2) {
                throw new IllegalStateException("indent went negative");
            }
            this.f16628c = i2 - i;
        }

        /* renamed from: c */
        public final void m10135c() {
            this.f16628c += this.f16627b;
        }

        /* renamed from: d */
        public final void m10136d() {
            if (this.f16629d) {
                int i = this.f16628c;
                for (int i2 = 0; i2 < i; i2++) {
                    this.f16626a.append(' ');
                }
            }
        }

        @Override // com.dropbox.core.util.DumpWriter
        /* renamed from: f */
        public DumpWriter mo10123f(String str) {
            if (!this.f16629d) {
                throw new AssertionError("called fieldStart() in a bad state");
            }
            m10136d();
            StringBuilder sb = this.f16626a;
            sb.append(str);
            sb.append(CloudStorageConstants.OPERATION_EQUAL);
            this.f16629d = false;
            return this;
        }

        @Override // com.dropbox.core.util.DumpWriter
        public DumpWriter listEnd() {
            if (!this.f16629d) {
                throw new AssertionError("called listEnd() in a bad state");
            }
            m10134b();
            m10136d();
            this.f16626a.append("]\n");
            this.f16629d = true;
            return this;
        }

        @Override // com.dropbox.core.util.DumpWriter
        public DumpWriter listStart() {
            m10136d();
            this.f16626a.append("[\n");
            this.f16629d = true;
            m10135c();
            return this;
        }

        @Override // com.dropbox.core.util.DumpWriter
        public DumpWriter recordEnd() {
            if (!this.f16629d) {
                throw new AssertionError("called recordEnd() in a bad state");
            }
            m10134b();
            m10136d();
            this.f16626a.append("}\n");
            this.f16629d = true;
            return this;
        }

        @Override // com.dropbox.core.util.DumpWriter
        public DumpWriter recordStart(String str) {
            m10136d();
            if (str != null) {
                StringBuilder sb = this.f16626a;
                sb.append(str);
                sb.append(" ");
            }
            this.f16626a.append("{\n");
            this.f16629d = true;
            m10135c();
            return this;
        }

        @Override // com.dropbox.core.util.DumpWriter
        public DumpWriter verbatim(String str) {
            m10136d();
            this.f16626a.append(str);
            this.f16626a.append('\n');
            this.f16629d = true;
            return this;
        }

        public Multiline(StringBuilder sb, int i, boolean z) {
            this(sb, i, 0, z);
        }
    }

    /* renamed from: v */
    public DumpWriter m10127v(long j) {
        return verbatim(Long.toString(j));
    }

    /* renamed from: v */
    public DumpWriter m10133v(boolean z) {
        return verbatim(Boolean.toString(z));
    }

    /* renamed from: v */
    public DumpWriter m10125v(float f) {
        return verbatim(Float.toString(f));
    }

    /* renamed from: v */
    public DumpWriter m10124v(double d) {
        return verbatim(Double.toString(d));
    }

    /* renamed from: v */
    public DumpWriter m10132v(Date date) {
        return verbatim(toStringDate(date));
    }

    /* renamed from: v */
    public DumpWriter m10130v(Long l) {
        return verbatim(l == null ? "null" : Long.toString(l.longValue()));
    }

    /* renamed from: v */
    public DumpWriter m10128v(Dumpable dumpable) {
        if (dumpable == null) {
            verbatim("null");
        } else {
            recordStart(dumpable.getTypeName());
            dumpable.dumpFields(this);
            recordEnd();
        }
        return this;
    }
}
