package org.greenrobot.eventbus;

/* loaded from: classes13.dex */
public interface MainThreadSupport {
    Poster createPoster(EventBus eventBus);

    boolean isMainThread();
}
