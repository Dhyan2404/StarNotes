package com.tencent.qcloud.core.logger;

import android.util.Log;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.hwr.data.constant.HwrRecognizerConstant;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes10.dex */
class FileLogItem {
    private String msg;
    private int priority;
    private String tag;
    private String threadName;
    private Throwable throwable;
    private long timestamp = System.currentTimeMillis();
    private long threadId = Thread.currentThread().getId();

    public FileLogItem(String str, int i, String str2, Throwable th) {
        this.threadName = null;
        this.priority = i;
        this.tag = str;
        this.msg = str2;
        this.throwable = th;
        this.threadName = Thread.currentThread().getName();
    }

    private static String getPriorityString(int i) {
        return i != 2 ? i != 3 ? i != 4 ? i != 5 ? i != 6 ? HwrRecognizerConstant.RECOGNIZER_UNKNOWN : "ERROR" : "WARN" : "INFO" : "DEBUG" : "VERBOSE";
    }

    private static String timeUtils(long j, String str) {
        Date date = new Date(j);
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.setTime(date);
        return new SimpleDateFormat(str, Locale.CHINA).format(gregorianCalendar.getTime());
    }

    public long getLength() {
        return (this.msg != null ? r2.length() : 0) + 40;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getPriorityString(this.priority));
        sb.append("/");
        sb.append(timeUtils(this.timestamp, DateTimeUtil.FORMAT_YYYYMMDD_HHMMSS));
        sb.append(IteratorUtils.f104923a);
        sb.append(this.threadName);
        sb.append(" ");
        sb.append(this.threadId);
        sb.append(IteratorUtils.f104924b);
        sb.append(IteratorUtils.f104923a);
        sb.append(this.tag);
        sb.append(IteratorUtils.f104924b);
        sb.append(IteratorUtils.f104923a);
        sb.append(this.msg);
        sb.append(IteratorUtils.f104924b);
        if (this.throwable != null) {
            sb.append(" * Exception :\n");
            sb.append(Log.getStackTraceString(this.throwable));
        }
        sb.append("\n");
        return sb.toString();
    }
}
