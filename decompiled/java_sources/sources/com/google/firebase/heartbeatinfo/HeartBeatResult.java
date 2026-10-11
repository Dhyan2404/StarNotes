package com.google.firebase.heartbeatinfo;

import com.google.auto.value.AutoValue;
import com.sunia.HTREnginev2.C14505uj;
import java.util.List;

@AutoValue
/* loaded from: classes6.dex */
public abstract class HeartBeatResult {
    public static HeartBeatResult create(String str, List<String> list) {
        return new C14505uj(str, list);
    }

    public abstract List<String> getUsedDates();

    public abstract String getUserAgent();
}
