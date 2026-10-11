package org.apache.poi.hssf.eventusermodel;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import org.apache.poi.hssf.eventusermodel.HSSFRequest;
import org.apache.poi.hssf.record.Record;
import org.apache.poi.hssf.record.RecordFactory;

/* loaded from: classes12.dex */
public class HSSFRequest {
    private final Map<Short, List<HSSFListener>> _records = new HashMap(50);

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List lambda$addListener$0(Short sh) {
        return new ArrayList(1);
    }

    public void addListener(HSSFListener hSSFListener, short s) {
        this._records.computeIfAbsent(Short.valueOf(s), new Function() { // from class: com.sunia.HTREnginev2.veh
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                List lambda$addListener$0;
                lambda$addListener$0 = HSSFRequest.lambda$addListener$0((Short) obj);
                return lambda$addListener$0;
            }
        }).add(hSSFListener);
    }

    public void addListenerForAllRecords(HSSFListener hSSFListener) {
        for (short s : RecordFactory.getAllKnownRecordSIDs()) {
            addListener(hSSFListener, s);
        }
    }

    public short processRecord(Record record) throws HSSFUserException {
        List<HSSFListener> list = this._records.get(Short.valueOf(record.getSid()));
        short s = 0;
        if (list != null) {
            for (HSSFListener hSSFListener : list) {
                if (hSSFListener instanceof AbortableHSSFListener) {
                    s = ((AbortableHSSFListener) hSSFListener).abortableProcessRecord(record);
                    if (s != 0) {
                        break;
                    }
                } else {
                    hSSFListener.processRecord(record);
                }
            }
        }
        return s;
    }
}
