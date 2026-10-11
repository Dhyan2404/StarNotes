package net.p110sf.saxon.expr.instruct;

import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.expr.ComponentBinding;
import net.p110sf.saxon.expr.ComponentInvocation;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.ExpressionOwner;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.PackageData;
import net.p110sf.saxon.expr.parser.RetainedStaticContext;
import net.p110sf.saxon.om.StandardNames;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.style.StyleElement;
import net.p110sf.saxon.style.StylesheetPackage;
import net.p110sf.saxon.style.XSLGlobalParam;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.Visibility;
import net.p110sf.saxon.trans.VisibilityProvenance;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public abstract class Actor implements ExpressionOwner, Location {
    protected Expression body;

    /* renamed from: e */
    public String f99592e;

    /* renamed from: f */
    public int f99593f;

    /* renamed from: g */
    public int f99594g;

    /* renamed from: h */
    public SlotManager f99595h;

    /* renamed from: i */
    public PackageData f99596i;

    /* renamed from: j */
    public Component f99597j;

    /* renamed from: k */
    public Visibility f99598k = Visibility.UNDEFINED;

    /* renamed from: l */
    public RetainedStaticContext f99599l;

    /* JADX WARN: Multi-variable type inference failed */
    public static void allocateBindingSlotsRecursive(StylesheetPackage stylesheetPackage, Actor actor, Expression expression, List<ComponentBinding> list) {
        if (expression instanceof ComponentInvocation) {
            actor.m62714a(stylesheetPackage, (ComponentInvocation) expression, list);
        }
        Iterator<Operand> it2 = expression.operands().iterator();
        while (it2.hasNext()) {
            allocateBindingSlotsRecursive(stylesheetPackage, actor, it2.next().getChildExpression(), list);
        }
    }

    /* renamed from: a */
    public final void m62714a(StylesheetPackage stylesheetPackage, ComponentInvocation componentInvocation, List<ComponentBinding> list) {
        SymbolicName symbolicName = componentInvocation.getSymbolicName();
        if (symbolicName == null) {
            return;
        }
        Component component = stylesheetPackage.getComponent(symbolicName);
        if (component == null && symbolicName.getComponentName().hasURI("http://www.w3.org/1999/XSL/Transform") && symbolicName.getComponentName().getLocalPart().equals("original")) {
            component = stylesheetPackage.getOverriddenComponent(getSymbolicName());
        }
        if (component == null) {
            throw new AssertionError("Target of component reference " + symbolicName + " is undefined");
        }
        if (componentInvocation.getBindingSlot() < 0) {
            int size = list.size();
            list.add(new ComponentBinding(symbolicName, component));
            componentInvocation.setBindingSlot(size);
        } else {
            throw new AssertionError("**** Component reference " + symbolicName + " is already bound");
        }
    }

    public void allocateAllBindingSlots(StylesheetPackage stylesheetPackage) {
        if (getBody() != null && getDeclaringComponent().getDeclaringPackage() == stylesheetPackage && this.f99596i.isXSLT()) {
            allocateBindingSlotsRecursive(stylesheetPackage, this, getBody(), getDeclaringComponent().getComponentBindings());
        }
    }

    public abstract void export(ExpressionPresenter expressionPresenter) throws XPathException;

    public final Expression getBody() {
        return this.body;
    }

    @Override // net.p110sf.saxon.expr.ExpressionOwner
    public final Expression getChildExpression() {
        return getBody();
    }

    @Override // net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public int getColumnNumber() {
        return this.f99594g;
    }

    public StructuredQName getComponentName() {
        return getSymbolicName().getComponentName();
    }

    public Visibility getDeclaredVisibility() {
        return this.f99598k;
    }

    public Component getDeclaringComponent() {
        return this.f99597j;
    }

    @Override // net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public int getLineNumber() {
        return this.f99593f;
    }

    public Location getLocation() {
        return this;
    }

    public PackageData getPackageData() {
        return this.f99596i;
    }

    public Object getProperty(String str) {
        return null;
    }

    @Override // net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public String getPublicId() {
        return null;
    }

    public RetainedStaticContext getRetainedStaticContext() {
        return this.f99599l;
    }

    public SlotManager getStackFrameMap() {
        return this.f99595h;
    }

    public abstract SymbolicName getSymbolicName();

    @Override // net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public String getSystemId() {
        return this.f99592e;
    }

    public String getTracingTag() {
        return StandardNames.getLocalName(getSymbolicName().getComponentKind());
    }

    public boolean isExportable() {
        return true;
    }

    public Component makeDeclaringComponent(Visibility visibility, StylesheetPackage stylesheetPackage) {
        if (this.f99597j == null) {
            this.f99597j = Component.makeComponent(this, visibility, VisibilityProvenance.DEFAULTED, stylesheetPackage, stylesheetPackage);
        }
        return this.f99597j;
    }

    public Component obtainDeclaringComponent(StyleElement styleElement) {
        if (this.f99597j == null) {
            StylesheetPackage containingPackage = styleElement.getContainingPackage();
            Visibility visibility = styleElement instanceof XSLGlobalParam ? Visibility.PUBLIC : Visibility.PRIVATE;
            Visibility declaredVisibility = styleElement.getDeclaredVisibility();
            Visibility visibility2 = Visibility.UNDEFINED;
            if (declaredVisibility != visibility2) {
                visibility = declaredVisibility;
            }
            this.f99597j = Component.makeComponent(this, visibility, declaredVisibility == visibility2 ? VisibilityProvenance.DEFAULTED : VisibilityProvenance.EXPLICIT, containingPackage, containingPackage);
        }
        return this.f99597j;
    }

    @Override // net.p110sf.saxon.s9api.Location
    public Location saveLocation() {
        return this;
    }

    public void setBody(Expression expression) {
        this.body = expression;
        if (expression != null) {
            expression.setParentExpression(null);
        }
    }

    @Override // net.p110sf.saxon.expr.ExpressionOwner
    public void setChildExpression(Expression expression) {
        setBody(expression);
    }

    public void setColumnNumber(int i) {
        this.f99594g = i;
    }

    public void setDeclaredVisibility(Visibility visibility) {
        this.f99598k = visibility;
    }

    public void setDeclaringComponent(Component component) {
        this.f99597j = component;
    }

    public void setLineNumber(int i) {
        this.f99593f = i;
    }

    public void setPackageData(PackageData packageData) {
        this.f99596i = packageData;
    }

    public void setRetainedStaticContext(RetainedStaticContext retainedStaticContext) {
        this.f99599l = retainedStaticContext;
    }

    public void setStackFrameMap(SlotManager slotManager) {
        this.f99595h = slotManager;
    }

    public void setSystemId(String str) {
        this.f99592e = str;
    }
}
