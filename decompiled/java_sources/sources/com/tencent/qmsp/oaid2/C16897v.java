package com.tencent.qmsp.oaid2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import java.util.ArrayList;

/* renamed from: com.tencent.qmsp.oaid2.v */
/* loaded from: classes10.dex */
public class C16897v extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (context == null || intent == null) {
            return;
        }
        boolean z = false;
        int intExtra = intent.getIntExtra("openIdNotifyFlag", 0);
        C16899x.m60250b("shouldUpdateId, notifyFlag : " + intExtra);
        if (intExtra != 1) {
            if (intExtra == 2) {
                ArrayList<String> stringArrayListExtra = intent.getStringArrayListExtra("openIdPackageList");
                if (stringArrayListExtra == null) {
                    return;
                }
                boolean contains = stringArrayListExtra.contains(context.getPackageName());
                if (contains) {
                    C16898w m60251a = C16899x.m60248a().m60251a(intent.getStringExtra("openIdType"));
                    if (m60251a != null) {
                        m60251a.m60247b();
                        return;
                    }
                    return;
                }
                z = contains;
            } else {
                z = true;
            }
            if (intExtra == 0 && z) {
                C16898w m60251a2 = C16899x.m60248a().m60251a(intent.getStringExtra("openIdType"));
                if (m60251a2 != null) {
                    m60251a2.m60247b();
                    return;
                }
                return;
            }
        } else if (TextUtils.equals(intent.getStringExtra("openIdPackage"), context.getPackageName())) {
            z = true;
        }
        if (z) {
            C16898w m60251a3 = C16899x.m60248a().m60251a(intent.getStringExtra("openIdType"));
            if (m60251a3 != null) {
                m60251a3.m60247b();
            }
        }
    }
}
