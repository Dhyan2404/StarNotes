package org.slf4j.helpers;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.slf4j.IMarkerFactory;
import org.slf4j.Marker;

/* loaded from: classes16.dex */
public class BasicMarkerFactory implements IMarkerFactory {

    /* renamed from: a */
    public final ConcurrentMap<String, Marker> f116048a = new ConcurrentHashMap();

    @Override // org.slf4j.IMarkerFactory
    public boolean detachMarker(String str) {
        return (str == null || this.f116048a.remove(str) == null) ? false : true;
    }

    @Override // org.slf4j.IMarkerFactory
    public boolean exists(String str) {
        if (str == null) {
            return false;
        }
        return this.f116048a.containsKey(str);
    }

    @Override // org.slf4j.IMarkerFactory
    public Marker getDetachedMarker(String str) {
        return new BasicMarker(str);
    }

    @Override // org.slf4j.IMarkerFactory
    public Marker getMarker(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Marker name cannot be null");
        }
        Marker marker = this.f116048a.get(str);
        if (marker != null) {
            return marker;
        }
        BasicMarker basicMarker = new BasicMarker(str);
        Marker putIfAbsent = this.f116048a.putIfAbsent(str, basicMarker);
        return putIfAbsent != null ? putIfAbsent : basicMarker;
    }
}
