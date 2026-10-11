package org.apache.logging.log4j;

import java.util.Arrays;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.apache.logging.log4j.util.PerformanceSensitive;
import org.apache.logging.log4j.util.StringBuilderFormattable;

/* loaded from: classes12.dex */
public final class MarkerManager {

    /* renamed from: a */
    public static final ConcurrentMap<String, Marker> f111190a = new ConcurrentHashMap();

    /* renamed from: c */
    public static void m68618c(final Object obj, final String message) {
        if (obj == null) {
            throw new IllegalArgumentException(message);
        }
    }

    public static void clear() {
        f111190a.clear();
    }

    public static boolean exists(final String key) {
        return f111190a.containsKey(key);
    }

    public static Marker getMarker(final String name) {
        ConcurrentMap<String, Marker> concurrentMap = f111190a;
        Marker marker = concurrentMap.get(name);
        if (marker != null) {
            return marker;
        }
        concurrentMap.putIfAbsent(name, new Log4jMarker(name));
        return concurrentMap.get(name);
    }

    /* loaded from: classes12.dex */
    public static class Log4jMarker implements Marker, StringBuilderFormattable {
        private static final long serialVersionUID = 100;
        private final String name;
        private volatile Marker[] parents;

        private Log4jMarker() {
            this.name = null;
            this.parents = null;
        }

        @PerformanceSensitive({"allocation"})
        private static void addParentInfo(final StringBuilder sb, final Marker... parents) {
            sb.append("[ ");
            int length = parents.length;
            boolean z = true;
            int i = 0;
            while (i < length) {
                Marker marker = parents[i];
                if (!z) {
                    sb.append(", ");
                }
                sb.append(marker.getName());
                Marker[] parents2 = marker instanceof Log4jMarker ? ((Log4jMarker) marker).parents : marker.getParents();
                if (parents2 != null) {
                    addParentInfo(sb, parents2);
                }
                i++;
                z = false;
            }
            sb.append(" ]");
        }

        @PerformanceSensitive({"allocation", "unrolled"})
        private static boolean checkParent(final Marker parent, final Marker marker) {
            if (parent == marker) {
                return true;
            }
            Marker[] parents = parent instanceof Log4jMarker ? ((Log4jMarker) parent).parents : parent.getParents();
            if (parents != null) {
                int length = parents.length;
                if (length == 1) {
                    return checkParent(parents[0], marker);
                }
                if (length == 2) {
                    return checkParent(parents[0], marker) || checkParent(parents[1], marker);
                }
                for (Marker marker2 : parents) {
                    if (checkParent(marker2, marker)) {
                        return true;
                    }
                }
            }
            return false;
        }

        @PerformanceSensitive({"allocation"})
        private static boolean contains(final Marker parent, final Marker... localParents) {
            for (Marker marker : localParents) {
                if (marker == parent) {
                    return true;
                }
            }
            return false;
        }

        @Override // org.apache.logging.log4j.Marker
        public synchronized Marker addParents(final Marker... parentMarkers) {
            MarkerManager.m68618c(parentMarkers, "A parent marker must be specified");
            Marker[] markerArr = this.parents;
            int length = parentMarkers.length;
            if (markerArr != null) {
                int i = 0;
                for (Marker marker : parentMarkers) {
                    if (!contains(marker, markerArr) && !marker.isInstanceOf(this)) {
                        i++;
                    }
                }
                if (i == 0) {
                    return this;
                }
                length = markerArr.length + i;
            }
            Marker[] markerArr2 = new Marker[length];
            if (markerArr != null) {
                System.arraycopy(markerArr, 0, markerArr2, 0, markerArr.length);
            }
            int length2 = markerArr == null ? 0 : markerArr.length;
            for (Marker marker2 : parentMarkers) {
                if (markerArr == null || (!contains(marker2, markerArr) && !marker2.isInstanceOf(this))) {
                    markerArr2[length2] = marker2;
                    length2++;
                }
            }
            this.parents = markerArr2;
            return this;
        }

        @Override // org.apache.logging.log4j.Marker
        public boolean equals(final Object o) {
            if (this == o) {
                return true;
            }
            if (o == null || !(o instanceof Marker)) {
                return false;
            }
            return this.name.equals(((Marker) o).getName());
        }

        @Override // org.apache.logging.log4j.util.StringBuilderFormattable
        public void formatTo(final StringBuilder sb) {
            sb.append(this.name);
            Marker[] markerArr = this.parents;
            if (markerArr != null) {
                addParentInfo(sb, markerArr);
            }
        }

        @Override // org.apache.logging.log4j.Marker
        public String getName() {
            return this.name;
        }

        @Override // org.apache.logging.log4j.Marker
        public Marker[] getParents() {
            Marker[] markerArr = this.parents;
            if (markerArr == null) {
                return null;
            }
            return (Marker[]) Arrays.copyOf(markerArr, markerArr.length);
        }

        @Override // org.apache.logging.log4j.Marker
        public boolean hasParents() {
            return this.parents != null;
        }

        @Override // org.apache.logging.log4j.Marker
        public int hashCode() {
            return this.name.hashCode();
        }

        @Override // org.apache.logging.log4j.Marker
        @PerformanceSensitive({"allocation", "unrolled"})
        public boolean isInstanceOf(final Marker marker) {
            MarkerManager.m68618c(marker, "A marker parameter is required");
            if (this == marker) {
                return true;
            }
            Marker[] markerArr = this.parents;
            if (markerArr != null) {
                int length = markerArr.length;
                if (length == 1) {
                    return checkParent(markerArr[0], marker);
                }
                if (length == 2) {
                    return checkParent(markerArr[0], marker) || checkParent(markerArr[1], marker);
                }
                for (Marker marker2 : markerArr) {
                    if (checkParent(marker2, marker)) {
                        return true;
                    }
                }
            }
            return false;
        }

        @Override // org.apache.logging.log4j.Marker
        public synchronized boolean remove(final Marker parent) {
            MarkerManager.m68618c(parent, "A parent marker must be specified");
            Marker[] markerArr = this.parents;
            if (markerArr == null) {
                return false;
            }
            int length = markerArr.length;
            if (length == 1) {
                if (!markerArr[0].equals(parent)) {
                    return false;
                }
                this.parents = null;
                return true;
            }
            int i = length - 1;
            Marker[] markerArr2 = new Marker[i];
            int i2 = 0;
            for (Marker marker : markerArr) {
                if (!marker.equals(parent)) {
                    if (i2 == i) {
                        return false;
                    }
                    int i3 = i2 + 1;
                    markerArr2[i2] = marker;
                    i2 = i3;
                }
            }
            this.parents = markerArr2;
            return true;
        }

        @Override // org.apache.logging.log4j.Marker
        public Marker setParents(final Marker... markers) {
            if (markers == null || markers.length == 0) {
                this.parents = null;
            } else {
                Marker[] markerArr = new Marker[markers.length];
                System.arraycopy(markers, 0, markerArr, 0, markers.length);
                this.parents = markerArr;
            }
            return this;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            formatTo(sb);
            return sb.toString();
        }

        public Log4jMarker(final String name) {
            MarkerManager.m68618c(name, "Marker name cannot be null.");
            this.name = name;
            this.parents = null;
        }

        @Override // org.apache.logging.log4j.Marker
        @PerformanceSensitive({"allocation", "unrolled"})
        public boolean isInstanceOf(final String markerName) {
            Marker[] markerArr;
            MarkerManager.m68618c(markerName, "A marker name is required");
            if (markerName.equals(getName())) {
                return true;
            }
            Marker marker = (Marker) MarkerManager.f111190a.get(markerName);
            if (marker != null && (markerArr = this.parents) != null) {
                int length = markerArr.length;
                if (length == 1) {
                    return checkParent(markerArr[0], marker);
                }
                if (length == 2) {
                    return checkParent(markerArr[0], marker) || checkParent(markerArr[1], marker);
                }
                for (Marker marker2 : markerArr) {
                    if (checkParent(marker2, marker)) {
                        return true;
                    }
                }
            }
            return false;
        }
    }

    @Deprecated
    public static Marker getMarker(final String name, final String parent) {
        Marker marker = f111190a.get(parent);
        if (marker != null) {
            return getMarker(name, marker);
        }
        throw new IllegalArgumentException("Parent Marker " + parent + " has not been defined");
    }

    @Deprecated
    public static Marker getMarker(final String name, final Marker parent) {
        return getMarker(name).addParents(parent);
    }
}
