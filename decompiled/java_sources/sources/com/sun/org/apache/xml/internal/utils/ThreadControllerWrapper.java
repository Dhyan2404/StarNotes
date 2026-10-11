package com.sun.org.apache.xml.internal.utils;

/* loaded from: classes10.dex */
public class ThreadControllerWrapper {
    private static ThreadController m_tpool = new ThreadController();

    /* loaded from: classes10.dex */
    public static class ThreadController {
        public Thread run(Runnable runnable, int i) {
            Thread thread = new Thread(runnable);
            thread.start();
            return thread;
        }

        public void waitThread(Thread thread, Runnable runnable) throws InterruptedException {
            thread.join();
        }
    }

    public static Thread runThread(Runnable runnable, int i) {
        return m_tpool.run(runnable, i);
    }

    public static void waitThread(Thread thread, Runnable runnable) throws InterruptedException {
        m_tpool.waitThread(thread, runnable);
    }
}
