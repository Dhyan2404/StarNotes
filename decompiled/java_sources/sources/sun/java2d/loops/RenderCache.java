package sun.java2d.loops;

/* loaded from: classes16.dex */
public final class RenderCache {
    private Entry[] entries;

    /* loaded from: classes16.dex */
    public final class Entry {
        private CompositeType comp;
        private SurfaceType dst;
        private SurfaceType src;
        private Object value;

        public Entry(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2, Object obj) {
            this.src = surfaceType;
            this.comp = compositeType;
            this.dst = surfaceType2;
            this.value = obj;
        }

        public Object getValue() {
            return this.value;
        }

        public boolean matches(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
            return this.src == surfaceType && this.comp == compositeType && this.dst == surfaceType2;
        }
    }

    public RenderCache(int i) {
        this.entries = new Entry[i];
    }

    public synchronized Object get(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        int length = this.entries.length - 1;
        for (int i = length; i >= 0; i--) {
            Entry entry = this.entries[i];
            if (entry == null) {
                break;
            }
            if (entry.matches(surfaceType, compositeType, surfaceType2)) {
                if (i < length - 4) {
                    Entry[] entryArr = this.entries;
                    System.arraycopy(entryArr, i + 1, entryArr, i, length - i);
                    this.entries[length] = entry;
                }
                return entry.getValue();
            }
        }
        return null;
    }

    public synchronized void put(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2, Object obj) {
        Entry entry = new Entry(surfaceType, compositeType, surfaceType2, obj);
        Entry[] entryArr = this.entries;
        int length = entryArr.length - 1;
        System.arraycopy(entryArr, 1, entryArr, 0, length);
        this.entries[length] = entry;
    }
}
