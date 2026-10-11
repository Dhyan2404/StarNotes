package net.p110sf.saxon.expr.instruct;

import java.util.Collection;
import java.util.HashMap;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.parser.TypeChecker;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class GlobalParameterSet {

    /* renamed from: a */
    public HashMap<StructuredQName, GroundedValue> f99737a;

    public GlobalParameterSet() {
        this.f99737a = new HashMap<>(10);
    }

    public void clear() {
        this.f99737a.clear();
    }

    public boolean containsKey(StructuredQName structuredQName) {
        return this.f99737a.containsKey(structuredQName);
    }

    public GroundedValue convertParameterValue(StructuredQName structuredQName, SequenceType sequenceType, boolean z, XPathContext xPathContext) throws XPathException {
        GroundedValue groundedValue = get(structuredQName);
        if (groundedValue == null) {
            return null;
        }
        if (sequenceType != null) {
            if (z) {
                groundedValue = xPathContext.getConfiguration().getTypeHierarchy().applyFunctionConversionRules(groundedValue, sequenceType, new RoleDiagnostic(3, structuredQName.getDisplayName(), -1), Loc.NONE);
            } else {
                XPathException testConformance = TypeChecker.testConformance(groundedValue, sequenceType, xPathContext);
                if (testConformance != null) {
                    throw testConformance;
                }
            }
        }
        return groundedValue.materialize();
    }

    public GroundedValue get(StructuredQName structuredQName) {
        return this.f99737a.get(structuredQName);
    }

    public Collection<StructuredQName> getKeys() {
        return this.f99737a.keySet();
    }

    public int getNumberOfKeys() {
        return this.f99737a.size();
    }

    public void put(StructuredQName structuredQName, GroundedValue groundedValue) {
        if (groundedValue == null) {
            this.f99737a.remove(structuredQName);
        } else {
            this.f99737a.put(structuredQName, groundedValue);
        }
    }

    public GlobalParameterSet(GlobalParameterSet globalParameterSet) {
        this.f99737a = new HashMap<>(10);
        this.f99737a = new HashMap<>(globalParameterSet.f99737a);
    }
}
