package org.apache.commons.text.lookup;

import com.sunia.HTREnginev2.jve;
import com.sunia.HTREnginev2.lri;
import com.sunia.HTREnginev2.mpi;
import com.sunia.HTREnginev2.n0j;
import com.sunia.HTREnginev2.o5k;
import com.sunia.HTREnginev2.pll;
import com.sunia.HTREnginev2.r8j;
import com.sunia.HTREnginev2.s6n;
import com.sunia.HTREnginev2.zqf;
import java.util.Map;

/* loaded from: classes12.dex */
public final class StringLookupFactory {
    public static final StringLookupFactory INSTANCE = new StringLookupFactory();

    public StringLookup dateStringLookup() {
        return jve.f74741a;
    }

    public StringLookup environmentVariableStringLookup() {
        return zqf.f92089a;
    }

    public StringLookup interpolatorStringLookup() {
        return new mpi();
    }

    public StringLookup javaPlatformStringLookup() {
        return lri.f76810a;
    }

    public StringLookup localHostStringLookup() {
        return n0j.f78187a;
    }

    public <V> StringLookup mapStringLookup(Map<String, V> map) {
        return r8j.m56933b(map);
    }

    public StringLookup nullStringLookup() {
        return o5k.f79355a;
    }

    public StringLookup resourceBundleStringLookup() {
        return pll.f80918a;
    }

    public StringLookup systemPropertyStringLookup() {
        return s6n.f83860a;
    }

    public <V> StringLookup interpolatorStringLookup(Map<String, V> map) {
        return new mpi(map);
    }

    public StringLookup interpolatorStringLookup(StringLookup stringLookup) {
        return new mpi(stringLookup);
    }

    public StringLookup interpolatorStringLookup(Map<String, StringLookup> map, StringLookup stringLookup, boolean z) {
        return new mpi(map, stringLookup, z);
    }
}
