package org.apache.poi.ss.formula;

import java.util.HashMap;
import java.util.Map;
import okhttp3.internal.ws.WebSocketProtocol;

/* loaded from: classes13.dex */
final class PlainCellCache {
    private Map<Loc, PlainValueCellCacheEntry> _plainValueEntriesByLoc = new HashMap();

    public void clear() {
        this._plainValueEntriesByLoc.clear();
    }

    public PlainValueCellCacheEntry get(Loc loc) {
        return this._plainValueEntriesByLoc.get(loc);
    }

    public void put(Loc loc, PlainValueCellCacheEntry plainValueCellCacheEntry) {
        this._plainValueEntriesByLoc.put(loc, plainValueCellCacheEntry);
    }

    public void remove(Loc loc) {
        this._plainValueEntriesByLoc.remove(loc);
    }

    /* loaded from: classes13.dex */
    public static final class Loc {
        private final long _bookSheetColumn;
        private final int _rowIndex;

        public Loc(int i, int i2, int i3, int i4) {
            this._bookSheetColumn = toBookSheetColumn(i, i2, i4);
            this._rowIndex = i3;
        }

        public static long toBookSheetColumn(int i, int i2, int i3) {
            return ((i & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48) + ((i2 & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) + ((i3 & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 0);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Loc)) {
                return false;
            }
            Loc loc = (Loc) obj;
            return this._bookSheetColumn == loc._bookSheetColumn && this._rowIndex == loc._rowIndex;
        }

        public int getBookIndex() {
            return (int) ((this._bookSheetColumn >> 48) & WebSocketProtocol.PAYLOAD_SHORT_MAX);
        }

        public int getColumnIndex() {
            return (int) (this._bookSheetColumn & WebSocketProtocol.PAYLOAD_SHORT_MAX);
        }

        public int getRowIndex() {
            return this._rowIndex;
        }

        public int getSheetIndex() {
            return (int) ((this._bookSheetColumn >> 32) & WebSocketProtocol.PAYLOAD_SHORT_MAX);
        }

        public int hashCode() {
            long j = this._bookSheetColumn;
            return ((int) (j ^ (j >>> 32))) + (this._rowIndex * 17);
        }

        public Loc(long j, int i) {
            this._bookSheetColumn = j;
            this._rowIndex = i;
        }
    }
}
