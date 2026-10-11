package org.greenrobot.eventbus.meta;

import org.greenrobot.eventbus.SubscriberMethod;

/* loaded from: classes13.dex */
public class SimpleSubscriberInfo extends AbstractSubscriberInfo {

    /* renamed from: d */
    public final SubscriberMethodInfo[] f113932d;

    public SimpleSubscriberInfo(Class cls, boolean z, SubscriberMethodInfo[] subscriberMethodInfoArr) {
        super(cls, null, z);
        this.f113932d = subscriberMethodInfoArr;
    }

    @Override // org.greenrobot.eventbus.meta.SubscriberInfo
    public synchronized SubscriberMethod[] getSubscriberMethods() {
        SubscriberMethod[] subscriberMethodArr;
        int length = this.f113932d.length;
        subscriberMethodArr = new SubscriberMethod[length];
        for (int i = 0; i < length; i++) {
            SubscriberMethodInfo subscriberMethodInfo = this.f113932d[i];
            subscriberMethodArr[i] = createSubscriberMethod(subscriberMethodInfo.f113933a, subscriberMethodInfo.f113935c, subscriberMethodInfo.f113934b, subscriberMethodInfo.f113936d, subscriberMethodInfo.f113937e);
        }
        return subscriberMethodArr;
    }
}
