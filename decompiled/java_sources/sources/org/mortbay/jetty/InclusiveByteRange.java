package org.mortbay.jetty;

import java.util.Enumeration;
import java.util.List;
import java.util.StringTokenizer;
import org.mortbay.log.Log;
import org.mortbay.util.LazyList;

/* loaded from: classes13.dex */
public class InclusiveByteRange {

    /* renamed from: a */
    public long f114682a;

    /* renamed from: b */
    public long f114683b;

    public InclusiveByteRange(long j, long j2) {
        this.f114682a = j;
        this.f114683b = j2;
    }

    public static List satisfiableRanges(Enumeration enumeration, long j) {
        long parseLong;
        long j2;
        Object obj = null;
        while (enumeration.hasMoreElements()) {
            StringTokenizer stringTokenizer = new StringTokenizer((String) enumeration.nextElement(), "=,", false);
            String str = null;
            while (true) {
                try {
                    if (stringTokenizer.hasMoreTokens()) {
                        str = stringTokenizer.nextToken().trim();
                        int indexOf = str.indexOf(45);
                        if (indexOf >= 0) {
                            int i = indexOf + 1;
                            if (str.indexOf("-", i) < 0) {
                                if (indexOf == 0) {
                                    if (i >= str.length()) {
                                        Log.warn("Bad range format: {}", str);
                                        break;
                                    }
                                    j2 = Long.parseLong(str.substring(i).trim());
                                    parseLong = -1;
                                } else if (i < str.length()) {
                                    parseLong = Long.parseLong(str.substring(0, indexOf).trim());
                                    j2 = Long.parseLong(str.substring(i).trim());
                                } else {
                                    parseLong = Long.parseLong(str.substring(0, indexOf).trim());
                                    j2 = -1;
                                }
                                if ((parseLong != -1 || j2 != -1) && (parseLong == -1 || j2 == -1 || parseLong <= j2)) {
                                    if (parseLong < j) {
                                        obj = LazyList.add(obj, new InclusiveByteRange(parseLong, j2));
                                    }
                                }
                            }
                        }
                        if (!HttpHeaderValues.BYTES.equals(str)) {
                            Log.warn("Bad range format: {}", str);
                            break;
                        }
                    }
                } catch (Exception e) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("Bad range format: ");
                    stringBuffer.append(str);
                    Log.warn(stringBuffer.toString());
                    Log.ignore(e);
                }
            }
        }
        return LazyList.getList(obj, true);
    }

    public static String to416HeaderRangeString(long j) {
        StringBuffer stringBuffer = new StringBuffer(40);
        stringBuffer.append("bytes */");
        stringBuffer.append(j);
        return stringBuffer.toString();
    }

    public long getFirst() {
        return this.f114682a;
    }

    public long getLast() {
        return this.f114683b;
    }

    public long getSize(long j) {
        return (getLast(j) - getFirst(j)) + 1;
    }

    public String toHeaderRangeString(long j) {
        StringBuffer stringBuffer = new StringBuffer(40);
        stringBuffer.append("bytes ");
        stringBuffer.append(getFirst(j));
        stringBuffer.append('-');
        stringBuffer.append(getLast(j));
        stringBuffer.append("/");
        stringBuffer.append(j);
        return stringBuffer.toString();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(60);
        stringBuffer.append(Long.toString(this.f114682a));
        stringBuffer.append(":");
        stringBuffer.append(Long.toString(this.f114683b));
        return stringBuffer.toString();
    }

    public long getFirst(long j) {
        long j2 = this.f114682a;
        if (j2 >= 0) {
            return j2;
        }
        long j3 = j - this.f114683b;
        if (j3 < 0) {
            return 0L;
        }
        return j3;
    }

    public long getLast(long j) {
        if (this.f114682a < 0) {
            return j - 1;
        }
        long j2 = this.f114683b;
        return (j2 < 0 || j2 >= j) ? j - 1 : j2;
    }
}
