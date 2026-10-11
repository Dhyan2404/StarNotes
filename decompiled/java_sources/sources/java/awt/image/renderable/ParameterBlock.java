package java.awt.image.renderable;

import java.awt.image.RenderedImage;
import java.io.Serializable;
import java.util.Vector;

/* loaded from: classes5.dex */
public class ParameterBlock implements Cloneable, Serializable {
    protected Vector<Object> sources = new Vector<>();
    protected Vector<Object> parameters = new Vector<>();

    public ParameterBlock() {
    }

    public ParameterBlock add(Object obj) {
        this.parameters.addElement(obj);
        return this;
    }

    public ParameterBlock addSource(Object obj) {
        this.sources.addElement(obj);
        return this;
    }

    public Object clone() {
        try {
            ParameterBlock parameterBlock = (ParameterBlock) super.clone();
            Vector<Object> vector = this.sources;
            if (vector != null) {
                parameterBlock.setSources((Vector) vector.clone());
            }
            Vector<Object> vector2 = this.parameters;
            if (vector2 != null) {
                parameterBlock.setParameters((Vector) vector2.clone());
            }
            return parameterBlock;
        } catch (Exception unused) {
            return null;
        }
    }

    public byte getByteParameter(int i) {
        return ((Byte) this.parameters.elementAt(i)).byteValue();
    }

    public char getCharParameter(int i) {
        return ((Character) this.parameters.elementAt(i)).charValue();
    }

    public double getDoubleParameter(int i) {
        return ((Double) this.parameters.elementAt(i)).doubleValue();
    }

    public float getFloatParameter(int i) {
        return ((Float) this.parameters.elementAt(i)).floatValue();
    }

    public int getIntParameter(int i) {
        return ((Integer) this.parameters.elementAt(i)).intValue();
    }

    public long getLongParameter(int i) {
        return ((Long) this.parameters.elementAt(i)).longValue();
    }

    public int getNumParameters() {
        return this.parameters.size();
    }

    public int getNumSources() {
        return this.sources.size();
    }

    public Object getObjectParameter(int i) {
        return this.parameters.elementAt(i);
    }

    public Class[] getParamClasses() {
        int numParameters = getNumParameters();
        Class[] clsArr = new Class[numParameters];
        for (int i = 0; i < numParameters; i++) {
            Object objectParameter = getObjectParameter(i);
            if (objectParameter instanceof Byte) {
                clsArr[i] = Byte.TYPE;
            } else if (objectParameter instanceof Character) {
                clsArr[i] = Character.TYPE;
            } else if (objectParameter instanceof Short) {
                clsArr[i] = Short.TYPE;
            } else if (objectParameter instanceof Integer) {
                clsArr[i] = Integer.TYPE;
            } else if (objectParameter instanceof Long) {
                clsArr[i] = Long.TYPE;
            } else if (objectParameter instanceof Float) {
                clsArr[i] = Float.TYPE;
            } else if (objectParameter instanceof Double) {
                clsArr[i] = Double.TYPE;
            } else {
                clsArr[i] = objectParameter.getClass();
            }
        }
        return clsArr;
    }

    public Vector<Object> getParameters() {
        return this.parameters;
    }

    public RenderableImage getRenderableSource(int i) {
        return (RenderableImage) this.sources.elementAt(i);
    }

    public RenderedImage getRenderedSource(int i) {
        return (RenderedImage) this.sources.elementAt(i);
    }

    public short getShortParameter(int i) {
        return ((Short) this.parameters.elementAt(i)).shortValue();
    }

    public Object getSource(int i) {
        return this.sources.elementAt(i);
    }

    public Vector<Object> getSources() {
        return this.sources;
    }

    public void removeParameters() {
        this.parameters = new Vector<>();
    }

    public void removeSources() {
        this.sources = new Vector<>();
    }

    public ParameterBlock set(Object obj, int i) {
        int i2 = i + 1;
        if (this.parameters.size() < i2) {
            this.parameters.setSize(i2);
        }
        this.parameters.setElementAt(obj, i);
        return this;
    }

    public void setParameters(Vector<Object> vector) {
        this.parameters = vector;
    }

    public ParameterBlock setSource(Object obj, int i) {
        int i2 = i + 1;
        if (this.sources.size() < i2) {
            this.sources.setSize(i2);
        }
        this.sources.setElementAt(obj, i);
        return this;
    }

    public void setSources(Vector<Object> vector) {
        this.sources = vector;
    }

    public Object shallowClone() {
        try {
            return super.clone();
        } catch (Exception unused) {
            return null;
        }
    }

    public ParameterBlock add(byte b) {
        return add(new Byte(b));
    }

    public ParameterBlock add(char c) {
        return add(new Character(c));
    }

    public ParameterBlock(Vector<Object> vector) {
        setSources(vector);
    }

    public ParameterBlock add(short s) {
        return add(new Short(s));
    }

    public ParameterBlock set(byte b, int i) {
        return set(new Byte(b), i);
    }

    public ParameterBlock add(int i) {
        return add(new Integer(i));
    }

    public ParameterBlock set(char c, int i) {
        return set(new Character(c), i);
    }

    public ParameterBlock add(long j) {
        return add(new Long(j));
    }

    public ParameterBlock set(short s, int i) {
        return set(new Short(s), i);
    }

    public ParameterBlock add(float f) {
        return add(new Float(f));
    }

    public ParameterBlock set(int i, int i2) {
        return set(new Integer(i), i2);
    }

    public ParameterBlock(Vector<Object> vector, Vector<Object> vector2) {
        setSources(vector);
        setParameters(vector2);
    }

    public ParameterBlock add(double d) {
        return add(new Double(d));
    }

    public ParameterBlock set(long j, int i) {
        return set(new Long(j), i);
    }

    public ParameterBlock set(float f, int i) {
        return set(new Float(f), i);
    }

    public ParameterBlock set(double d, int i) {
        return set(new Double(d), i);
    }
}
