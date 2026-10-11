package sun.java2d;

import java.lang.ref.PhantomReference;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Hashtable;
import sun.awt.util.ThreadGroupUtils;
import sun.java2d.Disposer;

/* loaded from: classes16.dex */
public class Disposer implements Runnable {
    public static final int PHANTOM = 1;
    public static final int WEAK = 0;
    private static ArrayList<DisposerRecord> deferredRecords;
    private static Disposer disposerInstance;
    public static volatile boolean pollingQueue;
    private static final ReferenceQueue queue = new ReferenceQueue();
    private static final Hashtable records = new Hashtable();
    public static int refType = 0;

    /* loaded from: classes16.dex */
    public interface PollDisposable {
    }

    static {
        System.err.println("Using WEAK refs");
        disposerInstance = new Disposer();
        AccessController.doPrivileged(new PrivilegedAction() { // from class: com.sunia.HTREnginev2.a6f
            @Override // java.security.PrivilegedAction
            public final Object run() {
                Void lambda$static$0;
                lambda$static$0 = Disposer.lambda$static$0();
                return lambda$static$0;
            }
        });
        deferredRecords = null;
        pollingQueue = false;
    }

    public static void addObjectRecord(Object obj, DisposerRecord disposerRecord) {
        records.put(new WeakReference(obj, queue), disposerRecord);
    }

    public static void addRecord(Object obj, long j, long j2) {
        disposerInstance.add(obj, new DefaultDisposerRecord(j, j2));
    }

    public static void addReference(Reference reference, DisposerRecord disposerRecord) {
        records.put(reference, disposerRecord);
    }

    private static void clearDeferredRecords() {
        ArrayList<DisposerRecord> arrayList = deferredRecords;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        for (int i = 0; i < deferredRecords.size(); i++) {
            try {
                deferredRecords.get(i).dispose();
            } catch (Exception unused) {
                System.out.println("Exception while disposing deferred rec.");
            }
        }
        deferredRecords.clear();
    }

    public static ReferenceQueue getQueue() {
        return queue;
    }

    private static void initIDs() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Void lambda$static$0() {
        Thread thread = new Thread(ThreadGroupUtils.getRootThreadGroup(), disposerInstance, "Java2D Disposer");
        thread.setContextClassLoader(null);
        thread.setDaemon(true);
        thread.setPriority(10);
        thread.start();
        return null;
    }

    public static void pollRemove() {
        if (pollingQueue) {
            return;
        }
        pollingQueue = true;
        int i = 0;
        int i2 = 0;
        while (true) {
            try {
                try {
                    Reference poll = queue.poll();
                    if (poll == null || i >= 10000 || i2 >= 100) {
                        break;
                    }
                    i++;
                    poll.clear();
                    DisposerRecord disposerRecord = (DisposerRecord) records.remove(poll);
                    if (disposerRecord instanceof PollDisposable) {
                        disposerRecord.dispose();
                    } else if (disposerRecord != null) {
                        i2++;
                        if (deferredRecords == null) {
                            deferredRecords = new ArrayList<>(5);
                        }
                        deferredRecords.add(disposerRecord);
                    }
                } catch (Exception unused) {
                    System.out.println("Exception while removing reference.");
                }
            } finally {
                pollingQueue = false;
            }
        }
    }

    public synchronized void add(Object obj, DisposerRecord disposerRecord) {
        if (obj instanceof DisposerTarget) {
            obj = ((DisposerTarget) obj).getDisposerReferent();
        }
        records.put(refType == 1 ? new PhantomReference(obj, queue) : new WeakReference(obj, queue), disposerRecord);
    }

    @Override // java.lang.Runnable
    public void run() {
        while (true) {
            try {
                Reference remove = queue.remove();
                remove.clear();
                ((DisposerRecord) records.remove(remove)).dispose();
                clearDeferredRecords();
            } catch (Exception unused) {
                System.out.println("Exception while removing reference.");
            }
        }
    }

    public static void addRecord(Object obj, DisposerRecord disposerRecord) {
        disposerInstance.add(obj, disposerRecord);
    }
}
