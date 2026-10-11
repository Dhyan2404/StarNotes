package org.apache.commons.math3.ode.nonstiff;

import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import org.apache.commons.math3.ode.AbstractIntegrator;
import org.apache.commons.math3.ode.EquationsMapper;
import org.apache.commons.math3.ode.sampling.AbstractStepInterpolator;

/* loaded from: classes12.dex */
abstract class RungeKuttaStepInterpolator extends AbstractStepInterpolator {
    protected AbstractIntegrator integrator;
    protected double[] previousState;
    protected double[][] yDotK;

    public RungeKuttaStepInterpolator() {
        this.previousState = null;
        this.yDotK = null;
        this.integrator = null;
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator, java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        double readBaseExternal = readBaseExternal(objectInput);
        double[] dArr = this.currentState;
        int length = dArr == null ? -1 : dArr.length;
        if (length < 0) {
            this.previousState = null;
        } else {
            this.previousState = new double[length];
            for (int i = 0; i < length; i++) {
                this.previousState[i] = objectInput.readDouble();
            }
        }
        int readInt = objectInput.readInt();
        this.yDotK = readInt < 0 ? null : new double[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            this.yDotK[i2] = length < 0 ? null : new double[length];
            for (int i3 = 0; i3 < length; i3++) {
                this.yDotK[i2][i3] = objectInput.readDouble();
            }
        }
        this.integrator = null;
        if (this.currentState != null) {
            setInterpolatedTime(readBaseExternal);
        } else {
            this.interpolatedTime = readBaseExternal;
        }
    }

    public void reinitialize(AbstractIntegrator abstractIntegrator, double[] dArr, double[][] dArr2, boolean z, EquationsMapper equationsMapper, EquationsMapper[] equationsMapperArr) {
        reinitialize(dArr, z, equationsMapper, equationsMapperArr);
        this.previousState = null;
        this.yDotK = dArr2;
        this.integrator = abstractIntegrator;
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    public void shift() {
        this.previousState = (double[]) this.currentState.clone();
        super.shift();
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator, java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        writeBaseExternal(objectOutput);
        double[] dArr = this.currentState;
        int length = dArr == null ? -1 : dArr.length;
        for (int i = 0; i < length; i++) {
            objectOutput.writeDouble(this.previousState[i]);
        }
        double[][] dArr2 = this.yDotK;
        int length2 = dArr2 != null ? dArr2.length : -1;
        objectOutput.writeInt(length2);
        for (int i2 = 0; i2 < length2; i2++) {
            for (int i3 = 0; i3 < length; i3++) {
                objectOutput.writeDouble(this.yDotK[i2][i3]);
            }
        }
    }

    public RungeKuttaStepInterpolator(RungeKuttaStepInterpolator rungeKuttaStepInterpolator) {
        super(rungeKuttaStepInterpolator);
        if (rungeKuttaStepInterpolator.currentState != null) {
            this.previousState = (double[]) rungeKuttaStepInterpolator.previousState.clone();
            this.yDotK = new double[rungeKuttaStepInterpolator.yDotK.length];
            int i = 0;
            while (true) {
                double[][] dArr = rungeKuttaStepInterpolator.yDotK;
                if (i >= dArr.length) {
                    break;
                }
                this.yDotK[i] = (double[]) dArr[i].clone();
                i++;
            }
        } else {
            this.previousState = null;
            this.yDotK = null;
        }
        this.integrator = null;
    }
}
