package org.apache.commons.lang3.builder;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.lang3.Validate;

/* loaded from: classes12.dex */
public class DiffResult implements Iterable<Diff<?>> {
    public static final String OBJECTS_SAME_STRING = "";

    /* renamed from: i */
    public static final String f107456i = "differs from";

    /* renamed from: e */
    public final List<Diff<?>> f107457e;

    /* renamed from: f */
    public final Object f107458f;

    /* renamed from: g */
    public final Object f107459g;

    /* renamed from: h */
    public final ToStringStyle f107460h;

    public DiffResult(Object obj, Object obj2, List<Diff<?>> list, ToStringStyle toStringStyle) {
        Validate.isTrue(obj != null, "Left hand object cannot be null", new Object[0]);
        Validate.isTrue(obj2 != null, "Right hand object cannot be null", new Object[0]);
        Validate.isTrue(list != null, "List of differences cannot be null", new Object[0]);
        this.f107457e = list;
        this.f107458f = obj;
        this.f107459g = obj2;
        if (toStringStyle == null) {
            this.f107460h = ToStringStyle.DEFAULT_STYLE;
        } else {
            this.f107460h = toStringStyle;
        }
    }

    public List<Diff<?>> getDiffs() {
        return Collections.unmodifiableList(this.f107457e);
    }

    public int getNumberOfDiffs() {
        return this.f107457e.size();
    }

    public ToStringStyle getToStringStyle() {
        return this.f107460h;
    }

    @Override // java.lang.Iterable
    public Iterator<Diff<?>> iterator() {
        return this.f107457e.iterator();
    }

    public String toString() {
        return toString(this.f107460h);
    }

    public String toString(ToStringStyle toStringStyle) {
        if (this.f107457e.size() == 0) {
            return "";
        }
        ToStringBuilder toStringBuilder = new ToStringBuilder(this.f107458f, toStringStyle);
        ToStringBuilder toStringBuilder2 = new ToStringBuilder(this.f107459g, toStringStyle);
        for (Diff<?> diff : this.f107457e) {
            toStringBuilder.append(diff.getFieldName(), diff.getLeft());
            toStringBuilder2.append(diff.getFieldName(), diff.getRight());
        }
        return String.format("%s %s %s", toStringBuilder.build(), f107456i, toStringBuilder2.build());
    }
}
