package org.apache.commons.math3.ode;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes12.dex */
public abstract class AbstractParameterizable implements Parameterizable {

    /* renamed from: a */
    public final Collection<String> f108738a;

    public AbstractParameterizable(String... strArr) {
        this.f108738a = new ArrayList();
        for (String str : strArr) {
            this.f108738a.add(str);
        }
    }

    public void complainIfNotSupported(String str) throws UnknownParameterException {
        if (!isSupported(str)) {
            throw new UnknownParameterException(str);
        }
    }

    @Override // org.apache.commons.math3.ode.Parameterizable
    public Collection<String> getParametersNames() {
        return this.f108738a;
    }

    @Override // org.apache.commons.math3.ode.Parameterizable
    public boolean isSupported(String str) {
        Iterator<String> it2 = this.f108738a.iterator();
        while (it2.hasNext()) {
            if (it2.next().equals(str)) {
                return true;
            }
        }
        return false;
    }

    public AbstractParameterizable(Collection<String> collection) {
        ArrayList arrayList = new ArrayList();
        this.f108738a = arrayList;
        arrayList.addAll(collection);
    }
}
