package com.bumptech.glide.manager;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.util.Util;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public class RequestTracker {

    /* renamed from: d */
    public static final String f15222d = "RequestTracker";

    /* renamed from: a */
    public final Set<Request> f15223a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: b */
    public final List<Request> f15224b = new ArrayList();

    /* renamed from: c */
    public boolean f15225c;

    @VisibleForTesting
    /* renamed from: a */
    public void m9066a(Request request) {
        this.f15223a.add(request);
    }

    public boolean clearAndRemove(@Nullable Request request) {
        boolean z = true;
        if (request == null) {
            return true;
        }
        boolean remove = this.f15223a.remove(request);
        if (!this.f15224b.remove(request) && !remove) {
            z = false;
        }
        if (z) {
            request.clear();
        }
        return z;
    }

    public void clearRequests() {
        Iterator it2 = Util.getSnapshot(this.f15223a).iterator();
        while (it2.hasNext()) {
            clearAndRemove((Request) it2.next());
        }
        this.f15224b.clear();
    }

    public boolean isPaused() {
        return this.f15225c;
    }

    public void pauseAllRequests() {
        this.f15225c = true;
        for (Request request : Util.getSnapshot(this.f15223a)) {
            if (request.isRunning() || request.isComplete()) {
                request.clear();
                this.f15224b.add(request);
            }
        }
    }

    public void pauseRequests() {
        this.f15225c = true;
        for (Request request : Util.getSnapshot(this.f15223a)) {
            if (request.isRunning()) {
                request.pause();
                this.f15224b.add(request);
            }
        }
    }

    public void restartRequests() {
        for (Request request : Util.getSnapshot(this.f15223a)) {
            if (!request.isComplete() && !request.isCleared()) {
                request.clear();
                if (this.f15225c) {
                    this.f15224b.add(request);
                } else {
                    request.begin();
                }
            }
        }
    }

    public void resumeRequests() {
        this.f15225c = false;
        for (Request request : Util.getSnapshot(this.f15223a)) {
            if (!request.isComplete() && !request.isRunning()) {
                request.begin();
            }
        }
        this.f15224b.clear();
    }

    public void runRequest(@NonNull Request request) {
        this.f15223a.add(request);
        if (!this.f15225c) {
            request.begin();
            return;
        }
        request.clear();
        if (Log.isLoggable(f15222d, 2)) {
            Log.v(f15222d, "Paused, delaying request");
        }
        this.f15224b.add(request);
    }

    public String toString() {
        return super.toString() + "{numRequests=" + this.f15223a.size() + ", isPaused=" + this.f15225c + "}";
    }
}
