package net.p110sf.saxon.expr;

import com.sunia.HTREnginev2.gon;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import net.p110sf.saxon.expr.instruct.Actor;
import net.p110sf.saxon.expr.instruct.AttributeSet;
import net.p110sf.saxon.expr.instruct.GlobalVariable;
import net.p110sf.saxon.expr.instruct.NamedTemplate;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.style.StylesheetPackage;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.Mode;
import net.p110sf.saxon.trans.Visibility;
import net.p110sf.saxon.trans.VisibilityProvenance;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class Component {

    /* renamed from: a */
    public Visibility f99210a;
    protected Actor actor;

    /* renamed from: b */
    public List<ComponentBinding> f99211b;

    /* renamed from: c */
    public StylesheetPackage f99212c;

    /* renamed from: d */
    public StylesheetPackage f99213d;

    /* renamed from: e */
    public VisibilityProvenance f99214e;

    /* renamed from: f */
    public Component f99215f;

    /* renamed from: net.sf.saxon.expr.Component$M */
    /* loaded from: classes11.dex */
    public static class C18300M extends Component {
        public C18300M() {
            super();
        }

        public void setActor(Mode mode) {
            this.actor = mode;
        }

        @Override // net.p110sf.saxon.expr.Component
        public Mode getActor() {
            return (Mode) super.getActor();
        }
    }

    public static Component makeComponent(Actor actor, Visibility visibility, VisibilityProvenance visibilityProvenance, StylesheetPackage stylesheetPackage, StylesheetPackage stylesheetPackage2) {
        Component c18300m = actor instanceof Mode ? new C18300M() : new Component();
        c18300m.actor = actor;
        c18300m.f99210a = visibility;
        c18300m.f99214e = visibilityProvenance;
        c18300m.f99212c = stylesheetPackage;
        c18300m.f99213d = stylesheetPackage2;
        return c18300m;
    }

    /* renamed from: a */
    public final int m62560a(Component component, Map<Component, Integer> map) {
        int intValue = map.getOrDefault(component, Integer.MIN_VALUE).intValue();
        if (intValue != Integer.MIN_VALUE) {
            return intValue;
        }
        int size = map.size();
        map.put(component, Integer.valueOf(size));
        return size;
    }

    public void export(ExpressionPresenter expressionPresenter, Map<Component, Integer> map, Map<StylesheetPackage, Integer> map2) throws XPathException {
        expressionPresenter.startElement("co");
        expressionPresenter.emitAttribute("id", "" + m62560a(this, map));
        if (this.f99214e != VisibilityProvenance.DEFAULTED) {
            expressionPresenter.emitAttribute("vis", getVisibility().toString());
        }
        expressionPresenter.emitAttribute("binds", listComponentReferences(map));
        if (this.f99215f == null || getActor() != this.f99215f.getActor()) {
            this.actor.export(expressionPresenter);
        } else {
            expressionPresenter.emitAttribute(gon.f71271X, "" + m62560a(this.f99215f, map));
            expressionPresenter.emitAttribute("dpack", map2.get(this.f99213d) + "");
        }
        expressionPresenter.endElement();
    }

    public Actor getActor() {
        return this.actor;
    }

    public Component getBaseComponent() {
        return this.f99215f;
    }

    public List<ComponentBinding> getComponentBindings() {
        return this.f99211b;
    }

    public int getComponentKind() {
        Actor actor = this.actor;
        if (actor instanceof NamedTemplate) {
            return 210;
        }
        if (actor instanceof GlobalVariable) {
            return 218;
        }
        if (actor instanceof Function) {
            return 160;
        }
        if (actor instanceof AttributeSet) {
            return 138;
        }
        return actor instanceof Mode ? 180 : -1;
    }

    public StylesheetPackage getContainingPackage() {
        return this.f99212c;
    }

    public StylesheetPackage getDeclaringPackage() {
        return this.f99213d;
    }

    public Visibility getVisibility() {
        return this.f99210a;
    }

    public VisibilityProvenance getVisibilityProvenance() {
        return this.f99214e;
    }

    public boolean isHiddenAbstractComponent() {
        Component component;
        return this.f99210a == Visibility.HIDDEN && (component = this.f99215f) != null && component.getVisibility() == Visibility.ABSTRACT;
    }

    public String listComponentReferences(Map<Component, Integer> map) {
        StringBuilder sb = new StringBuilder(128);
        Iterator<ComponentBinding> it2 = getComponentBindings().iterator();
        while (it2.hasNext()) {
            int m62560a = m62560a(it2.next().getTarget(), map);
            if (sb.length() != 0) {
                sb.append(" ");
            }
            sb.append("" + m62560a);
        }
        return sb.toString();
    }

    public void setBaseComponent(Component component) {
        this.f99215f = component;
    }

    public void setComponentBindings(List<ComponentBinding> list) {
        this.f99211b = list;
    }

    public void setVisibility(Visibility visibility, VisibilityProvenance visibilityProvenance) {
        this.f99210a = visibility;
        this.f99214e = visibilityProvenance;
    }

    public Component() {
        this.f99211b = new ArrayList();
    }
}
