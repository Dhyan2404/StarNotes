package org.slf4j;

import org.slf4j.helpers.BasicMarkerFactory;
import org.slf4j.helpers.Util;
import org.slf4j.impl.StaticMarkerBinder;

/* loaded from: classes16.dex */
public class MarkerFactory {

    /* renamed from: a */
    public static IMarkerFactory f116032a;

    static {
        try {
            f116032a = m71917a();
        } catch (Exception e) {
            Util.report("Unexpected failure while binding MarkerFactory", e);
        } catch (NoClassDefFoundError unused) {
            f116032a = new BasicMarkerFactory();
        }
    }

    /* renamed from: a */
    public static IMarkerFactory m71917a() throws NoClassDefFoundError {
        try {
            return StaticMarkerBinder.getSingleton().getMarkerFactory();
        } catch (NoSuchMethodError unused) {
            return StaticMarkerBinder.SINGLETON.getMarkerFactory();
        }
    }

    public static Marker getDetachedMarker(String str) {
        return f116032a.getDetachedMarker(str);
    }

    public static IMarkerFactory getIMarkerFactory() {
        return f116032a;
    }

    public static Marker getMarker(String str) {
        return f116032a.getMarker(str);
    }
}
