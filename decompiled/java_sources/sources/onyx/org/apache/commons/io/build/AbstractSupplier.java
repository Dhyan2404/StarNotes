package onyx.org.apache.commons.io.build;

import onyx.org.apache.commons.io.build.AbstractSupplier;
import onyx.org.apache.commons.io.function.IOSupplier;

/* loaded from: classes11.dex */
public abstract class AbstractSupplier<T, B extends AbstractSupplier<T, B>> implements IOSupplier<T> {
    public B asThis() {
        return this;
    }
}
