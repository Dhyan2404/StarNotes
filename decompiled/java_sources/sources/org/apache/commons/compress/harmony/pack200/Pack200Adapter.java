package org.apache.commons.compress.harmony.pack200;

import java.beans.PropertyChangeListener;
import java.beans.PropertyChangeSupport;
import java.util.SortedMap;
import java.util.TreeMap;
import org.apache.commons.compress.java.util.jar.Pack200;

/* loaded from: classes12.dex */
public abstract class Pack200Adapter {
    protected static final int DEFAULT_BUFFER_SIZE = 8192;

    /* renamed from: a */
    public final PropertyChangeSupport f106703a = new PropertyChangeSupport(this);

    /* renamed from: b */
    public final SortedMap<String, String> f106704b = new TreeMap();

    public void addPropertyChangeListener(PropertyChangeListener propertyChangeListener) {
        this.f106703a.addPropertyChangeListener(propertyChangeListener);
    }

    public void completed(double d) {
        firePropertyChange(Pack200.Packer.PROGRESS, null, String.valueOf((int) (d * 100.0d)));
    }

    public void firePropertyChange(String str, Object obj, Object obj2) {
        this.f106703a.firePropertyChange(str, obj, obj2);
    }

    public SortedMap<String, String> properties() {
        return this.f106704b;
    }

    public void removePropertyChangeListener(PropertyChangeListener propertyChangeListener) {
        this.f106703a.removePropertyChangeListener(propertyChangeListener);
    }
}
