package net.p110sf.saxon.type;

import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class SchemaException extends XPathException {
    public SchemaException(String str, Location location) {
        super(str, (String) null, location);
    }

    public SchemaException(String str) {
        super(str);
    }

    public SchemaException(Throwable th) {
        super(th);
    }

    public SchemaException(String str, Throwable th) {
        super(str, th);
    }
}
