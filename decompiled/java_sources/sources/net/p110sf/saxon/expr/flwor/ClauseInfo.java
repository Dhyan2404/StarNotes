package net.p110sf.saxon.expr.flwor;

import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trace.Traceable;

/* loaded from: classes11.dex */
public class ClauseInfo implements Traceable {

    /* renamed from: e */
    public final Clause f99481e;

    /* renamed from: f */
    public NamespaceResolver f99482f;

    public ClauseInfo(Clause clause) {
        this.f99481e = clause;
    }

    public Clause getClause() {
        return this.f99481e;
    }

    public int getColumnNumber() {
        return -1;
    }

    public int getLineNumber() {
        return this.f99481e.getLocation().getLineNumber();
    }

    @Override // net.p110sf.saxon.expr.Locatable
    public Location getLocation() {
        return this.f99481e.getLocation();
    }

    public NamespaceResolver getNamespaceResolver() {
        return this.f99482f;
    }

    @Override // net.p110sf.saxon.trace.Traceable
    public StructuredQName getObjectName() {
        LocalVariableBinding[] rangeVariables = this.f99481e.getRangeVariables();
        if (rangeVariables == null || rangeVariables.length <= 0) {
            return null;
        }
        return rangeVariables[0].getVariableQName();
    }

    public String getPublicId() {
        return null;
    }

    public String getSystemId() {
        return this.f99481e.getLocation().getSystemId();
    }

    public void setNamespaceResolver(NamespaceResolver namespaceResolver) {
        this.f99482f = namespaceResolver;
    }
}
