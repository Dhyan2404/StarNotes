package net.p110sf.saxon.ma;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import net.p110sf.saxon.ma.map.RecordTest;
import net.p110sf.saxon.ma.map.SingleEntryMap;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.str.Twine8;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class Parcel extends SingleEntryMap {
    public static final StringValue parcelKey = new StringValue(new Twine8("value"));
    public static RecordTest TYPE = new RecordTest(m63289b("value"), m63289b(SequenceType.ANY_SEQUENCE), Collections.emptyList(), false);

    public Parcel(GroundedValue groundedValue) {
        super(parcelKey, groundedValue);
    }

    /* renamed from: b */
    public static <T> List<T> m63289b(T t) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(t);
        return arrayList;
    }
}
