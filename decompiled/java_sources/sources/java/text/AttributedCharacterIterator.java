package java.text;

import com.google.android.material.motion.MotionUtils;
import java.io.InvalidObjectException;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes5.dex */
public interface AttributedCharacterIterator extends CharacterIterator {

    /* loaded from: classes5.dex */
    public static class Attribute implements Serializable {
        private static final long serialVersionUID = -9142742483513960612L;
        private String name;
        private static final Map<String, Attribute> instanceMap = new HashMap(7);
        public static final Attribute LANGUAGE = new Attribute("language");
        public static final Attribute READING = new Attribute("reading");
        public static final Attribute INPUT_METHOD_SEGMENT = new Attribute("input_method_segment");

        public Attribute(String str) {
            this.name = str;
            if (getClass() == Attribute.class) {
                instanceMap.put(str, this);
            }
        }

        public final boolean equals(Object obj) {
            return super.equals(obj);
        }

        public String getName() {
            return this.name;
        }

        public final int hashCode() {
            return super.hashCode();
        }

        public Object readResolve() throws InvalidObjectException {
            if (getClass() != Attribute.class) {
                throw new InvalidObjectException("subclass didn't correctly implement readResolve");
            }
            Attribute attribute = instanceMap.get(getName());
            if (attribute != null) {
                return attribute;
            }
            throw new InvalidObjectException("unknown attribute name");
        }

        public String toString() {
            return getClass().getName() + MotionUtils.f31761c + this.name + MotionUtils.f31762d;
        }
    }

    Set<Attribute> getAllAttributeKeys();

    Object getAttribute(Attribute attribute);

    Map<Attribute, Object> getAttributes();

    int getRunLimit();

    int getRunLimit(Attribute attribute);

    int getRunLimit(Set<? extends Attribute> set);

    int getRunStart();

    int getRunStart(Attribute attribute);

    int getRunStart(Set<? extends Attribute> set);
}
