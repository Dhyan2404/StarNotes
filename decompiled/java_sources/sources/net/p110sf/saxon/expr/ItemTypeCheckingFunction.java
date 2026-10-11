package net.p110sf.saxon.expr;

import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.UType;

/* loaded from: classes11.dex */
public class ItemTypeCheckingFunction implements ItemMappingFunction {

    /* renamed from: e */
    public final ItemType f99283e;

    /* renamed from: f */
    public final RoleDiagnostic f99284f;

    /* renamed from: g */
    public final Location f99285g;

    /* renamed from: h */
    public Expression f99286h;

    /* renamed from: i */
    public Configuration f99287i;

    public ItemTypeCheckingFunction(ItemType itemType, RoleDiagnostic roleDiagnostic, Expression expression, Configuration configuration) {
        this.f99287i = null;
        this.f99283e = itemType;
        this.f99284f = roleDiagnostic;
        this.f99286h = expression;
        this.f99285g = expression.getLocation();
        this.f99287i = configuration;
    }

    /* renamed from: a */
    public final void m62595a(Item item, Configuration configuration) throws XPathException {
        TypeHierarchy typeHierarchy = configuration.getTypeHierarchy();
        if (this.f99283e.matches(item, typeHierarchy)) {
            return;
        }
        if (this.f99283e.getUType().subsumes(UType.STRING) && BuiltInAtomicType.ANY_URI.matches(item, typeHierarchy)) {
            return;
        }
        String composeErrorMessage = this.f99284f.composeErrorMessage(this.f99283e, item, typeHierarchy);
        String errorCode = this.f99284f.getErrorCode();
        if ("XPDY0050".equals(errorCode)) {
            XPathException xPathException = new XPathException(composeErrorMessage, errorCode);
            xPathException.setFailingExpression(this.f99286h);
            xPathException.setLocator(this.f99285g);
            xPathException.setIsTypeError(false);
            throw xPathException;
        }
        XPathException xPathException2 = new XPathException(composeErrorMessage, errorCode);
        xPathException2.setFailingExpression(this.f99286h);
        xPathException2.setLocator(this.f99285g);
        xPathException2.setIsTypeError(true);
        throw xPathException2;
    }

    @Override // net.p110sf.saxon.expr.ItemMappingFunction
    public Item mapItem(Item item) throws XPathException {
        m62595a(item, this.f99287i);
        return item;
    }

    public ItemTypeCheckingFunction(ItemType itemType, RoleDiagnostic roleDiagnostic, Location location, Configuration configuration) {
        this.f99283e = itemType;
        this.f99284f = roleDiagnostic;
        this.f99285g = location;
        this.f99287i = configuration;
    }
}
