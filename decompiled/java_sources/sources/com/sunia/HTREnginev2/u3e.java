package com.sunia.HTREnginev2;

import java.util.Comparator;
import org.apache.poi.hssf.record.ColumnInfoRecord;
import org.apache.poi.hssf.record.aggregates.ColumnInfoRecordsAggregate;

/* loaded from: classes12.dex */
public final /* synthetic */ class u3e implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return ColumnInfoRecordsAggregate.m69172a((ColumnInfoRecord) obj, (ColumnInfoRecord) obj2);
    }
}
