package org.apache.poi.poifs.nio;

import java.io.IOException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.security.AccessController;
import java.security.PrivilegedAction;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.poifs.nio.CleanerUtil;
import org.apache.poi.util.SuppressForbidden;

@SuppressForbidden("uses java.security features deprecated in java 17 - no other option though")
/* loaded from: classes12.dex */
public final class CleanerUtil {
    private static final BufferCleaner CLEANER;
    private static final Logger LOG = LogManager.getLogger((Class<?>) FileBackedDataSource.class);
    public static final String UNMAP_NOT_SUPPORTED_REASON;
    public static final boolean UNMAP_SUPPORTED;

    @FunctionalInterface
    /* loaded from: classes12.dex */
    public interface BufferCleaner {
        void freeBuffer(ByteBuffer byteBuffer) throws IOException;
    }

    static {
        Object doPrivileged = AccessController.doPrivileged((PrivilegedAction<Object>) new PrivilegedAction() { // from class: com.sunia.HTREnginev2.oud
            @Override // java.security.PrivilegedAction
            public final Object run() {
                Object unmapHackImpl;
                unmapHackImpl = CleanerUtil.unmapHackImpl();
                return unmapHackImpl;
            }
        });
        if (doPrivileged instanceof BufferCleaner) {
            CLEANER = (BufferCleaner) doPrivileged;
            UNMAP_SUPPORTED = true;
            UNMAP_NOT_SUPPORTED_REASON = null;
        } else {
            CLEANER = null;
            UNMAP_SUPPORTED = false;
            UNMAP_NOT_SUPPORTED_REASON = doPrivileged.toString();
        }
    }

    private CleanerUtil() {
    }

    public static BufferCleaner getCleaner() {
        return CLEANER;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$newBufferCleaner$1(Class cls, final Method method, final Method method2, final ByteBuffer byteBuffer) throws IOException {
        if (!byteBuffer.isDirect()) {
            throw new IllegalArgumentException("unmapping only works with direct buffers");
        }
        if (cls.isInstance(byteBuffer)) {
            Throwable th = (Throwable) AccessController.doPrivileged(new PrivilegedAction() { // from class: com.sunia.HTREnginev2.pud
                @Override // java.security.PrivilegedAction
                public final Object run() {
                    Throwable lambda$null$0;
                    lambda$null$0 = CleanerUtil.lambda$null$0(method, byteBuffer, method2);
                    return lambda$null$0;
                }
            });
            if (th != null) {
                throw new IOException("Unable to unmap the mapped buffer", th);
            }
        } else {
            throw new IllegalArgumentException("buffer is not an instance of " + cls.getName());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Throwable lambda$null$0(Method method, ByteBuffer byteBuffer, Method method2) {
        try {
            Object invoke = method.invoke(byteBuffer, new Object[0]);
            if (invoke == null) {
                return null;
            }
            method2.invoke(invoke, new Object[0]);
            return null;
        } catch (Throwable th) {
            return th;
        }
    }

    private static BufferCleaner newBufferCleaner(final Class cls, final Method method, final Method method2) {
        return new BufferCleaner() { // from class: com.sunia.HTREnginev2.nud
            @Override // org.apache.poi.poifs.nio.CleanerUtil.BufferCleaner
            public final void freeBuffer(ByteBuffer byteBuffer) {
                CleanerUtil.lambda$newBufferCleaner$1(cls, method, method2, byteBuffer);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressForbidden("Java 9 Jigsaw allows access to sun.misc.Cleaner, so setAccessible works")
    public static Object unmapHackImpl() {
        try {
            Class<?> cls = Class.forName("sun.nio.ch.DirectBuffer");
            Method method = cls.getMethod("cleaner", new Class[0]);
            method.setAccessible(true);
            Method method2 = Class.forName("sun.misc.Cleaner").getMethod("clean", new Class[0]);
            method2.setAccessible(true);
            return newBufferCleaner(cls, method, method2);
        } catch (Exception e) {
            LOG.atError().withThrowable(e).log();
            return null;
        }
    }
}
