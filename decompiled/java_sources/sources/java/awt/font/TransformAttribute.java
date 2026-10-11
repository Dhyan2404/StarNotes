package java.awt.font;

import java.awt.geom.AffineTransform;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamException;
import java.io.Serializable;

/* loaded from: classes5.dex */
public final class TransformAttribute implements Serializable {
    public static final TransformAttribute IDENTITY = new TransformAttribute(null);
    static final long serialVersionUID = 3356247357827709530L;
    private AffineTransform transform;

    public TransformAttribute(AffineTransform affineTransform) {
        if (affineTransform == null || affineTransform.isIdentity()) {
            return;
        }
        this.transform = new AffineTransform(affineTransform);
    }

    private Object readResolve() throws ObjectStreamException {
        AffineTransform affineTransform = this.transform;
        return (affineTransform == null || affineTransform.isIdentity()) ? IDENTITY : this;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws ClassNotFoundException, IOException {
        if (this.transform == null) {
            this.transform = new AffineTransform();
        }
        objectOutputStream.defaultWriteObject();
    }

    public boolean equals(Object obj) {
        if (obj != null) {
            try {
                TransformAttribute transformAttribute = (TransformAttribute) obj;
                AffineTransform affineTransform = this.transform;
                return affineTransform == null ? transformAttribute.transform == null : affineTransform.equals(transformAttribute.transform);
            } catch (ClassCastException unused) {
            }
        }
        return false;
    }

    public AffineTransform getTransform() {
        AffineTransform affineTransform = this.transform;
        return affineTransform == null ? new AffineTransform() : new AffineTransform(affineTransform);
    }

    public int hashCode() {
        AffineTransform affineTransform = this.transform;
        if (affineTransform == null) {
            return 0;
        }
        return affineTransform.hashCode();
    }

    public boolean isIdentity() {
        return this.transform == null;
    }
}
