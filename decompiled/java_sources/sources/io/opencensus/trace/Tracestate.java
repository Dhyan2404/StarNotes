package io.opencensus.trace;

import io.opencensus.internal.Utils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes10.dex */
public abstract class Tracestate {

    /* renamed from: a */
    public static final int f94877a = 256;

    /* renamed from: b */
    public static final int f94878b = 256;

    /* renamed from: c */
    public static final int f94879c = 32;

    /* loaded from: classes10.dex */
    public static final class Builder {

        /* renamed from: c */
        public static final Tracestate f94880c = Tracestate.m61072d(Collections.emptyList());

        /* renamed from: a */
        public final Tracestate f94881a;

        /* renamed from: b */
        @Nullable
        public ArrayList<Entry> f94882b;

        public Tracestate build() {
            ArrayList<Entry> arrayList = this.f94882b;
            return arrayList == null ? this.f94881a : Tracestate.m61072d(arrayList);
        }

        public Builder remove(String str) {
            Utils.checkNotNull(str, "key");
            if (this.f94882b == null) {
                this.f94882b = new ArrayList<>(this.f94881a.getEntries());
            }
            int i = 0;
            while (true) {
                if (i >= this.f94882b.size()) {
                    break;
                }
                if (this.f94882b.get(i).getKey().equals(str)) {
                    this.f94882b.remove(i);
                    break;
                }
                i++;
            }
            return this;
        }

        public Builder set(String str, String str2) {
            Entry create = Entry.create(str, str2);
            if (this.f94882b == null) {
                this.f94882b = new ArrayList<>(this.f94881a.getEntries());
            }
            int i = 0;
            while (true) {
                if (i >= this.f94882b.size()) {
                    break;
                }
                if (this.f94882b.get(i).getKey().equals(create.getKey())) {
                    this.f94882b.remove(i);
                    break;
                }
                i++;
            }
            this.f94882b.add(0, create);
            return this;
        }

        public Builder(Tracestate tracestate) {
            Utils.checkNotNull(tracestate, "parent");
            this.f94881a = tracestate;
            this.f94882b = null;
        }
    }

    @Immutable
    /* loaded from: classes10.dex */
    public static abstract class Entry {
        public static Entry create(String str, String str2) {
            Utils.checkNotNull(str, "key");
            Utils.checkNotNull(str2, "value");
            Utils.checkArgument(Tracestate.m61073e(str), "Invalid key %s", str);
            Utils.checkArgument(Tracestate.m61074f(str2), "Invalid value %s", str2);
            return new C17234j(str, str2);
        }

        public abstract String getKey();

        public abstract String getValue();
    }

    public static Builder builder() {
        return new Builder();
    }

    /* renamed from: d */
    public static Tracestate m61072d(List<Entry> list) {
        Utils.checkState(list.size() <= 32, "Invalid size");
        return new C17233i(Collections.unmodifiableList(list));
    }

    /* renamed from: e */
    public static boolean m61073e(String str) {
        if (str.length() > 256 || str.isEmpty() || str.charAt(0) < 'a' || str.charAt(0) > 'z') {
            return false;
        }
        for (int i = 1; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if ((charAt < 'a' || charAt > 'z') && !((charAt >= '0' && charAt <= '9') || charAt == '_' || charAt == '-' || charAt == '*' || charAt == '/')) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public static boolean m61074f(String str) {
        if (str.length() > 256 || str.charAt(str.length() - 1) == ' ') {
            return false;
        }
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt == ',' || charAt == '=' || charAt < ' ' || charAt > '~') {
                return false;
            }
        }
        return true;
    }

    @Nullable
    public String get(String str) {
        for (Entry entry : getEntries()) {
            if (entry.getKey().equals(str)) {
                return entry.getValue();
            }
        }
        return null;
    }

    public abstract List<Entry> getEntries();

    public Builder toBuilder() {
        return new Builder();
    }
}
