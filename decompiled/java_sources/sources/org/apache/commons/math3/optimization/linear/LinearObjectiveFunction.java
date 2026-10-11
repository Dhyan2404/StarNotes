package org.apache.commons.math3.optimization.linear;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import org.apache.commons.math3.linear.ArrayRealVector;
import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.RealVector;

@Deprecated
/* loaded from: classes12.dex */
public class LinearObjectiveFunction implements Serializable {
    private static final long serialVersionUID = -4531815507568396090L;
    private final transient RealVector coefficients;
    private final double constantTerm;

    public LinearObjectiveFunction(double[] dArr, double d) {
        this(new ArrayRealVector(dArr), d);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        MatrixUtils.deserializeRealVector(this, "coefficients", objectInputStream);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        MatrixUtils.serializeRealVector(this.coefficients, objectOutputStream);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LinearObjectiveFunction)) {
            return false;
        }
        LinearObjectiveFunction linearObjectiveFunction = (LinearObjectiveFunction) obj;
        return this.constantTerm == linearObjectiveFunction.constantTerm && this.coefficients.equals(linearObjectiveFunction.coefficients);
    }

    public RealVector getCoefficients() {
        return this.coefficients;
    }

    public double getConstantTerm() {
        return this.constantTerm;
    }

    public double getValue(double[] dArr) {
        return this.coefficients.dotProduct(new ArrayRealVector(dArr, false)) + this.constantTerm;
    }

    public int hashCode() {
        return this.coefficients.hashCode() ^ Double.valueOf(this.constantTerm).hashCode();
    }

    public LinearObjectiveFunction(RealVector realVector, double d) {
        this.coefficients = realVector;
        this.constantTerm = d;
    }

    public double getValue(RealVector realVector) {
        return this.coefficients.dotProduct(realVector) + this.constantTerm;
    }
}
