package org.apache.commons.math3.ode;

import java.util.Collection;

/* loaded from: classes12.dex */
public interface Parameterizable {
    Collection<String> getParametersNames();

    boolean isSupported(String str);
}
