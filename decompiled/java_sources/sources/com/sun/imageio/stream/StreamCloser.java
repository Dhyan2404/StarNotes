package com.sun.imageio.stream;

import com.sun.imageio.stream.StreamCloser;
import java.io.IOException;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Set;
import java.util.WeakHashMap;
import javax.imageio.stream.ImageInputStream;
import sun.awt.util.ThreadGroupUtils;

/* loaded from: classes9.dex */
public class StreamCloser {
    private static Thread streamCloser;
    private static WeakHashMap<CloseAction, Object> toCloseQueue;

    /* loaded from: classes9.dex */
    public static final class CloseAction {
        private ImageInputStream iis;

        public void performAction() throws IOException {
            ImageInputStream imageInputStream = this.iis;
            if (imageInputStream != null) {
                imageInputStream.close();
            }
        }

        private CloseAction(ImageInputStream imageInputStream) {
            this.iis = imageInputStream;
        }
    }

    public static void addToQueue(CloseAction closeAction) {
        synchronized (StreamCloser.class) {
            if (toCloseQueue == null) {
                toCloseQueue = new WeakHashMap<>();
            }
            toCloseQueue.put(closeAction, null);
            if (streamCloser == null) {
                final Runnable runnable = new Runnable() { // from class: com.sun.imageio.stream.StreamCloser.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (StreamCloser.toCloseQueue != null) {
                            synchronized (StreamCloser.class) {
                                Set keySet = StreamCloser.toCloseQueue.keySet();
                                for (CloseAction closeAction2 : (CloseAction[]) keySet.toArray(new CloseAction[keySet.size()])) {
                                    if (closeAction2 != null) {
                                        try {
                                            closeAction2.performAction();
                                        } catch (IOException unused) {
                                        }
                                    }
                                }
                            }
                        }
                    }
                };
                AccessController.doPrivileged(new PrivilegedAction() { // from class: com.sunia.HTREnginev2.b0n
                    @Override // java.security.PrivilegedAction
                    public final Object run() {
                        Object lambda$addToQueue$0;
                        lambda$addToQueue$0 = StreamCloser.lambda$addToQueue$0(runnable);
                        return lambda$addToQueue$0;
                    }
                });
            }
        }
    }

    public static CloseAction createCloseAction(ImageInputStream imageInputStream) {
        return new CloseAction(imageInputStream);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$addToQueue$0(Runnable runnable) {
        Thread thread = new Thread(ThreadGroupUtils.getRootThreadGroup(), runnable, "StreamCloser", 0L);
        streamCloser = thread;
        thread.setContextClassLoader(null);
        Runtime.getRuntime().addShutdownHook(streamCloser);
        return null;
    }

    public static void removeFromQueue(CloseAction closeAction) {
        synchronized (StreamCloser.class) {
            WeakHashMap<CloseAction, Object> weakHashMap = toCloseQueue;
            if (weakHashMap != null) {
                weakHashMap.remove(closeAction);
            }
        }
    }
}
