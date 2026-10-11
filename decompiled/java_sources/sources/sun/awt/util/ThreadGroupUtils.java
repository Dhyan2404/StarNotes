package sun.awt.util;

/* loaded from: classes16.dex */
public final class ThreadGroupUtils {
    private ThreadGroupUtils() {
    }

    public static ThreadGroup getRootThreadGroup() {
        ThreadGroup threadGroup;
        ThreadGroup threadGroup2 = Thread.currentThread().getThreadGroup();
        do {
            threadGroup = threadGroup2;
            threadGroup2 = threadGroup2.getParent();
        } while (threadGroup2 != null);
        return threadGroup;
    }
}
