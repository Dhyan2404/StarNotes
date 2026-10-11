package com.sunia.HTREnginev2;

import java.lang.Thread;
import org.apache.logging.log4j.message.ThreadInformation;
import org.apache.logging.log4j.util.StringBuilders;

/* renamed from: com.sunia.HTREnginev2.no */
/* loaded from: classes12.dex */
public class C14150no implements ThreadInformation {

    /* renamed from: i */
    public static final int f78837i = 32;

    /* renamed from: j */
    public static final int f78838j = 31;

    /* renamed from: a */
    public final long f78839a;

    /* renamed from: b */
    public final String f78840b;

    /* renamed from: c */
    public final String f78841c;

    /* renamed from: d */
    public final Thread.State f78842d;

    /* renamed from: e */
    public final int f78843e;

    /* renamed from: f */
    public final boolean f78844f;

    /* renamed from: g */
    public final boolean f78845g;

    /* renamed from: h */
    public final String f78846h;

    public C14150no(final Thread thread) {
        this.f78839a = thread.getId();
        this.f78840b = thread.getName();
        this.f78841c = thread.toString();
        this.f78842d = thread.getState();
        this.f78843e = thread.getPriority();
        this.f78844f = thread.isAlive();
        this.f78845g = thread.isDaemon();
        ThreadGroup threadGroup = thread.getThreadGroup();
        this.f78846h = threadGroup == null ? null : threadGroup.getName();
    }

    public boolean equals(final Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        C14150no c14150no = (C14150no) o;
        if (this.f78839a != c14150no.f78839a) {
            return false;
        }
        String str = this.f78840b;
        return str == null ? c14150no.f78840b == null : str.equals(c14150no.f78840b);
    }

    public int hashCode() {
        long j = this.f78839a;
        int i = ((int) (j ^ (j >>> 32))) * 31;
        String str = this.f78840b;
        return i + (str != null ? str.hashCode() : 0);
    }

    @Override // org.apache.logging.log4j.message.ThreadInformation
    public void printStack(final StringBuilder sb, final StackTraceElement[] trace) {
        for (StackTraceElement stackTraceElement : trace) {
            sb.append("\tat ");
            sb.append(stackTraceElement);
            sb.append('\n');
        }
    }

    @Override // org.apache.logging.log4j.message.ThreadInformation
    public void printThreadInfo(final StringBuilder sb) {
        StringBuilders.appendDqValue(sb, this.f78840b).append(' ');
        if (this.f78845g) {
            sb.append("daemon ");
        }
        sb.append("prio=");
        sb.append(this.f78843e);
        sb.append(" tid=");
        sb.append(this.f78839a);
        sb.append(' ');
        String str = this.f78846h;
        if (str != null) {
            StringBuilders.appendKeyDqValue(sb, "group", str);
        }
        sb.append('\n');
        sb.append("\tThread state: ");
        sb.append(this.f78842d.name());
        sb.append('\n');
    }
}
