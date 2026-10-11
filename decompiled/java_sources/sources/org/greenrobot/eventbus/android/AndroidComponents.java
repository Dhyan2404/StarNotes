package org.greenrobot.eventbus.android;

import org.greenrobot.eventbus.Logger;
import org.greenrobot.eventbus.MainThreadSupport;

/* loaded from: classes13.dex */
public abstract class AndroidComponents {

    /* renamed from: a */
    public static final AndroidComponents f113926a;
    public final MainThreadSupport defaultMainThreadSupport;
    public final Logger logger;

    static {
        f113926a = AndroidDependenciesDetector.isAndroidSDKAvailable() ? AndroidDependenciesDetector.instantiateAndroidComponents() : null;
    }

    public AndroidComponents(Logger logger, MainThreadSupport mainThreadSupport) {
        this.logger = logger;
        this.defaultMainThreadSupport = mainThreadSupport;
    }

    public static boolean areAvailable() {
        return f113926a != null;
    }

    public static AndroidComponents get() {
        return f113926a;
    }
}
