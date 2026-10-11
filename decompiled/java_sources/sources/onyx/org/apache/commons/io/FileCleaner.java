package onyx.org.apache.commons.io;

import java.io.File;

@Deprecated
/* loaded from: classes11.dex */
public class FileCleaner {

    /* renamed from: a */
    public static final FileCleaningTracker f104165a = new FileCleaningTracker();

    @Deprecated
    public static synchronized void exitWhenFinished() {
        synchronized (FileCleaner.class) {
            f104165a.exitWhenFinished();
        }
    }

    public static FileCleaningTracker getInstance() {
        return f104165a;
    }

    @Deprecated
    public static int getTrackCount() {
        return f104165a.getTrackCount();
    }

    @Deprecated
    public static void track(File file, Object obj) {
        f104165a.track(file, obj);
    }

    @Deprecated
    public static void track(File file, Object obj, FileDeleteStrategy fileDeleteStrategy) {
        f104165a.track(file, obj, fileDeleteStrategy);
    }

    @Deprecated
    public static void track(String str, Object obj) {
        f104165a.track(str, obj);
    }

    @Deprecated
    public static void track(String str, Object obj, FileDeleteStrategy fileDeleteStrategy) {
        f104165a.track(str, obj, fileDeleteStrategy);
    }
}
