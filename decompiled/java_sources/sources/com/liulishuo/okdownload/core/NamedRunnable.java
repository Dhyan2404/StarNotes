package com.liulishuo.okdownload.core;

/* loaded from: classes4.dex */
public abstract class NamedRunnable implements Runnable {
    protected final String name;

    public NamedRunnable(String str) {
        this.name = str;
    }

    public abstract void execute() throws InterruptedException;

    public abstract void finished();

    public abstract void interrupted(InterruptedException interruptedException);

    @Override // java.lang.Runnable
    public final void run() {
        String name = Thread.currentThread().getName();
        Thread.currentThread().setName(this.name);
        try {
            try {
                execute();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                interrupted(e);
            }
        } finally {
            Thread.currentThread().setName(name);
            finished();
        }
    }
}
