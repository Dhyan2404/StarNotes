package org.apache.commons.math3.optim.linear;

import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;
import org.apache.commons.math3.optim.OptimizationData;

/* loaded from: classes12.dex */
public class LinearConstraintSet implements OptimizationData {

    /* renamed from: e */
    public final Set<LinearConstraint> f109071e;

    public LinearConstraintSet(LinearConstraint... linearConstraintArr) {
        this.f109071e = new LinkedHashSet();
        for (LinearConstraint linearConstraint : linearConstraintArr) {
            this.f109071e.add(linearConstraint);
        }
    }

    public Collection<LinearConstraint> getConstraints() {
        return Collections.unmodifiableSet(this.f109071e);
    }

    public LinearConstraintSet(Collection<LinearConstraint> collection) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        this.f109071e = linkedHashSet;
        linkedHashSet.addAll(collection);
    }
}
