package net.p110sf.saxon.expr.instruct;

import net.p110sf.saxon.expr.PackageData;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.ObjectValue;

/* loaded from: classes11.dex */
public final class Bindery {

    /* renamed from: a */
    public GroundedValue[] f99631a;

    /* renamed from: b */
    public long[] f99632b;

    /* loaded from: classes11.dex */
    public static class FailureValue extends ObjectValue<XPathException> {
        public FailureValue(XPathException xPathException) {
            super(xPathException);
        }
    }

    public Bindery(PackageData packageData) {
        m62720a(packageData.getGlobalSlotManager());
    }

    /* renamed from: a */
    public final void m62720a(SlotManager slotManager) {
        int numberOfVariables = slotManager.getNumberOfVariables() + 1;
        this.f99631a = new GroundedValue[numberOfVariables];
        this.f99632b = new long[numberOfVariables];
        for (int i = 0; i < numberOfVariables; i++) {
            this.f99631a[i] = null;
            this.f99632b[i] = -1;
        }
    }

    public GroundedValue getGlobalVariable(int i) {
        return this.f99631a[i];
    }

    public GroundedValue getGlobalVariableValue(GlobalVariable globalVariable) {
        return this.f99631a[globalVariable.getBinderySlotNumber()];
    }

    public GroundedValue[] getGlobalVariables() {
        return this.f99631a;
    }

    public synchronized GroundedValue saveGlobalVariableValue(GlobalVariable globalVariable, GroundedValue groundedValue) {
        int binderySlotNumber = globalVariable.getBinderySlotNumber();
        GroundedValue[] groundedValueArr = this.f99631a;
        GroundedValue groundedValue2 = groundedValueArr[binderySlotNumber];
        if (groundedValue2 != null) {
            return groundedValue2;
        }
        this.f99632b[binderySlotNumber] = -1;
        groundedValueArr[binderySlotNumber] = groundedValue;
        return groundedValue;
    }

    public boolean setExecuting(GlobalVariable globalVariable) throws XPathException {
        long id = Thread.currentThread().getId();
        int binderySlotNumber = globalVariable.getBinderySlotNumber();
        long[] jArr = this.f99632b;
        long j = jArr[binderySlotNumber];
        if (j == -1) {
            jArr[binderySlotNumber] = id;
            return true;
        }
        if (j == id) {
            throw new XPathException.Circularity("Circular definition of variable " + globalVariable.getVariableQName().getDisplayName());
        }
        for (int i = 0; i < 10; i++) {
            try {
                Thread.sleep(i * 20);
            } catch (InterruptedException unused) {
            }
            if (this.f99632b[binderySlotNumber] == -1) {
                return false;
            }
        }
        return true;
    }

    public void setGlobalVariable(GlobalVariable globalVariable, GroundedValue groundedValue) {
        this.f99631a[globalVariable.getBinderySlotNumber()] = groundedValue;
    }

    public void setNotExecuting(GlobalVariable globalVariable) {
        this.f99632b[globalVariable.getBinderySlotNumber()] = -1;
    }
}
