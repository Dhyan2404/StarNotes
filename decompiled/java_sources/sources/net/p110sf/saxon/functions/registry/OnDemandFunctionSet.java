package net.p110sf.saxon.functions.registry;

import java.util.List;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.functions.FunctionLibrary;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class OnDemandFunctionSet implements FunctionLibrary {

    /* renamed from: a */
    public final Configuration f100418a;

    /* renamed from: b */
    public final String f100419b;

    /* renamed from: c */
    public final String f100420c;

    /* renamed from: d */
    public FunctionLibrary f100421d;

    public OnDemandFunctionSet(Configuration configuration, String str, String str2) {
        this.f100418a = configuration;
        this.f100419b = str;
        this.f100420c = str2;
    }

    /* renamed from: a */
    public final boolean m63247a(SymbolicName.C18533F c18533f, List<String> list) {
        if (!c18533f.getComponentName().hasURI(this.f100419b)) {
            return false;
        }
        if (this.f100421d == null) {
            try {
                Object iDynamicLoader = this.f100418a.getDynamicLoader().getInstance(this.f100420c, null);
                if (!(iDynamicLoader instanceof FunctionLibrary)) {
                    if (list != null) {
                        list.add("Class " + this.f100420c + " was loaded but it is not a FunctionLibrary");
                    }
                    return false;
                }
                this.f100421d = (FunctionLibrary) iDynamicLoader;
            } catch (XPathException e) {
                if (list != null) {
                    list.add("Failed to load class " + this.f100420c + ": " + e.getMessage());
                }
                return false;
            }
        }
        this.f100421d.setConfiguration(this.f100418a);
        return true;
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public Expression bind(SymbolicName.C18533F c18533f, Expression[] expressionArr, StaticContext staticContext, List<String> list) {
        if (m63247a(c18533f, list)) {
            return this.f100421d.bind(c18533f, expressionArr, staticContext, list);
        }
        return null;
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public FunctionLibrary copy() {
        return this;
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public Function getFunctionItem(SymbolicName.C18533F c18533f, StaticContext staticContext) throws XPathException {
        if (m63247a(c18533f, null)) {
            return this.f100421d.getFunctionItem(c18533f, staticContext);
        }
        return null;
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public boolean isAvailable(SymbolicName.C18533F c18533f, int i) {
        return m63247a(c18533f, null) && this.f100421d.isAvailable(c18533f, i);
    }
}
