package androidx.constraintlayout.core.parser;

import com.google.android.material.motion.MotionUtils;
import org.apache.commons.text.AlphabetConverter;

/* loaded from: classes3.dex */
public class CLElement {
    protected static int BASE_INDENT = 2;
    protected static int MAX_LINE = 80;

    /* renamed from: e */
    public final char[] f3079e;

    /* renamed from: f */
    public int f3080f;
    protected CLContainer mContainer;
    protected long start = -1;
    protected long end = Long.MAX_VALUE;

    public CLElement(char[] cArr) {
        this.f3079e = cArr;
    }

    public void addIndent(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            sb.append(' ');
        }
    }

    public String content() {
        String str = new String(this.f3079e);
        long j = this.end;
        if (j != Long.MAX_VALUE) {
            long j2 = this.start;
            if (j >= j2) {
                return str.substring((int) j2, ((int) j) + 1);
            }
        }
        long j3 = this.start;
        return str.substring((int) j3, ((int) j3) + 1);
    }

    public CLElement getContainer() {
        return this.mContainer;
    }

    public String getDebugName() {
        if (!CLParser.f3086d) {
            return "";
        }
        return getStrClass() + AlphabetConverter.f109940d;
    }

    public long getEnd() {
        return this.end;
    }

    public float getFloat() {
        if (this instanceof CLNumber) {
            return ((CLNumber) this).getFloat();
        }
        return Float.NaN;
    }

    public int getInt() {
        if (this instanceof CLNumber) {
            return ((CLNumber) this).getInt();
        }
        return 0;
    }

    public int getLine() {
        return this.f3080f;
    }

    public long getStart() {
        return this.start;
    }

    public String getStrClass() {
        String cls = getClass().toString();
        return cls.substring(cls.lastIndexOf(46) + 1);
    }

    public boolean isDone() {
        return this.end != Long.MAX_VALUE;
    }

    public boolean isStarted() {
        return this.start > -1;
    }

    public boolean notStarted() {
        return this.start == -1;
    }

    public void setContainer(CLContainer cLContainer) {
        this.mContainer = cLContainer;
    }

    public void setEnd(long j) {
        if (this.end != Long.MAX_VALUE) {
            return;
        }
        this.end = j;
        if (CLParser.f3086d) {
            System.out.println("closing " + hashCode() + AlphabetConverter.f109940d + this);
        }
        CLContainer cLContainer = this.mContainer;
        if (cLContainer != null) {
            cLContainer.add(this);
        }
    }

    public void setLine(int i) {
        this.f3080f = i;
    }

    public void setStart(long j) {
        this.start = j;
    }

    public String toFormattedJSON(int i, int i2) {
        return "";
    }

    public String toJSON() {
        return "";
    }

    public String toString() {
        long j = this.start;
        long j2 = this.end;
        if (j > j2 || j2 == Long.MAX_VALUE) {
            return getClass() + " (INVALID, " + this.start + "-" + this.end + MotionUtils.f31762d;
        }
        return getStrClass() + " (" + this.start + " : " + this.end + ") <<" + new String(this.f3079e).substring((int) this.start, ((int) this.end) + 1) + ">>";
    }
}
