package org.apache.poi.hssf.record;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.Supplier;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hssf.record.PageBreakRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public abstract class PageBreakRecord extends StandardRecord {
    private static final int[] EMPTY_INT_ARRAY = new int[0];
    private final Map<Integer, Break> _breakMap;
    private final ArrayList<Break> _breaks;

    public PageBreakRecord() {
        this._breaks = new ArrayList<>();
        this._breakMap = new HashMap();
    }

    private void initMap() {
        this._breaks.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.yrk
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                PageBreakRecord.this.lambda$initMap$0((PageBreakRecord.Break) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return this._breaks;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initMap$0(Break r2) {
        this._breakMap.put(Integer.valueOf(r2.main), r2);
    }

    public void addBreak(int i, int i2, int i3) {
        Integer valueOf = Integer.valueOf(i);
        Break r1 = this._breakMap.get(valueOf);
        if (r1 == null) {
            Break r12 = new Break(i, i2, i3);
            this._breakMap.put(valueOf, r12);
            this._breaks.add(r12);
        } else {
            r1.main = i;
            r1.subFrom = i2;
            r1.subTo = i3;
        }
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public abstract PageBreakRecord copy();

    public final Break getBreak(int i) {
        return this._breakMap.get(Integer.valueOf(i));
    }

    public final int[] getBreaks() {
        int numBreaks = getNumBreaks();
        if (numBreaks < 1) {
            return EMPTY_INT_ARRAY;
        }
        int[] iArr = new int[numBreaks];
        for (int i = 0; i < numBreaks; i++) {
            iArr[i] = this._breaks.get(i).main;
        }
        return iArr;
    }

    public final Iterator<Break> getBreaksIterator() {
        return this._breaks.iterator();
    }

    public final Spliterator<Break> getBreaksSpliterator() {
        return this._breaks.spliterator();
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return (this._breaks.size() * 6) + 2;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("numBreaks", new Supplier() { // from class: com.sunia.HTREnginev2.wrk
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(PageBreakRecord.this.getNumBreaks());
            }
        }, "breaks", new Supplier() { // from class: com.sunia.HTREnginev2.xrk
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = PageBreakRecord.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        });
    }

    public int getNumBreaks() {
        return this._breaks.size();
    }

    public boolean isEmpty() {
        return this._breaks.isEmpty();
    }

    public final void removeBreak(int i) {
        Integer valueOf = Integer.valueOf(i);
        this._breaks.remove(this._breakMap.get(valueOf));
        this._breakMap.remove(valueOf);
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public final void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this._breaks.size());
        Iterator<Break> it2 = this._breaks.iterator();
        while (it2.hasNext()) {
            it2.next().serialize(littleEndianOutput);
        }
    }

    /* loaded from: classes12.dex */
    public static final class Break implements GenericRecord {
        public static final int ENCODED_SIZE = 6;
        private int main;
        private int subFrom;
        private int subTo;

        public Break(Break r2) {
            this.main = r2.main;
            this.subFrom = r2.subFrom;
            this.subTo = r2.subTo;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return Integer.valueOf(this.main);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$1() {
            return Integer.valueOf(this.subFrom);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$2() {
            return Integer.valueOf(this.subTo);
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("main", new Supplier() { // from class: com.sunia.HTREnginev2.zrk
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = PageBreakRecord.Break.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            }, "subFrom", new Supplier() { // from class: com.sunia.HTREnginev2.ask
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$1;
                    lambda$getGenericProperties$1 = PageBreakRecord.Break.this.lambda$getGenericProperties$1();
                    return lambda$getGenericProperties$1;
                }
            }, "subTo", new Supplier() { // from class: com.sunia.HTREnginev2.bsk
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$2;
                    lambda$getGenericProperties$2 = PageBreakRecord.Break.this.lambda$getGenericProperties$2();
                    return lambda$getGenericProperties$2;
                }
            });
        }

        public int getMain() {
            return this.main;
        }

        public int getSubFrom() {
            return this.subFrom;
        }

        public int getSubTo() {
            return this.subTo;
        }

        public void serialize(LittleEndianOutput littleEndianOutput) {
            littleEndianOutput.writeShort(this.main + 1);
            littleEndianOutput.writeShort(this.subFrom);
            littleEndianOutput.writeShort(this.subTo);
        }

        public Break(int i, int i2, int i3) {
            this.main = i;
            this.subFrom = i2;
            this.subTo = i3;
        }

        public Break(RecordInputStream recordInputStream) {
            this.main = recordInputStream.readUShort() - 1;
            this.subFrom = recordInputStream.readUShort();
            this.subTo = recordInputStream.readUShort();
        }
    }

    public PageBreakRecord(PageBreakRecord pageBreakRecord) {
        ArrayList<Break> arrayList = new ArrayList<>();
        this._breaks = arrayList;
        this._breakMap = new HashMap();
        arrayList.addAll(pageBreakRecord._breaks);
        initMap();
    }

    public PageBreakRecord(RecordInputStream recordInputStream) {
        ArrayList<Break> arrayList = new ArrayList<>();
        this._breaks = arrayList;
        this._breakMap = new HashMap();
        short readShort = recordInputStream.readShort();
        arrayList.ensureCapacity(readShort + 2);
        for (int i = 0; i < readShort; i++) {
            this._breaks.add(new Break(recordInputStream));
        }
        initMap();
    }
}
