package net.p110sf.saxon.expr.instruct;

import java.util.ArrayList;
import java.util.List;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.ItemType;

/* loaded from: classes11.dex */
public class GlobalContextRequirement {

    /* renamed from: b */
    public boolean f99731b;

    /* renamed from: c */
    public boolean f99732c;

    /* renamed from: a */
    public boolean f99730a = true;

    /* renamed from: d */
    public final List<ItemType> f99733d = new ArrayList();

    /* renamed from: e */
    public Expression f99734e = null;

    public void addRequiredItemType(ItemType itemType) {
        this.f99733d.add(itemType);
    }

    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("glob");
        expressionPresenter.emitAttribute("use", isMayBeOmitted() ? isAbsentFocus() ? "pro" : "opt" : "req");
        if (!getRequiredItemType().equals(AnyItemType.getInstance())) {
            expressionPresenter.emitAttribute("type", getRequiredItemType().toExportString());
        }
        expressionPresenter.endElement();
    }

    public Expression getDefaultValue() {
        return this.f99734e;
    }

    public ItemType getRequiredItemType() {
        return this.f99733d.isEmpty() ? AnyItemType.getInstance() : this.f99733d.get(0);
    }

    public List<ItemType> getRequiredItemTypes() {
        return this.f99733d;
    }

    public boolean isAbsentFocus() {
        return this.f99731b;
    }

    public boolean isExternal() {
        return this.f99732c;
    }

    public boolean isMayBeOmitted() {
        return this.f99730a;
    }

    public ContextItemStaticInfo makeGlobalContextInfo(Configuration configuration) {
        return configuration.makeContextItemStaticInfo(isAbsentFocus() ? ErrorType.getInstance() : getRequiredItemType(), isMayBeOmitted());
    }

    public void setAbsentFocus(boolean z) {
        this.f99731b = z;
    }

    public void setDefaultValue(Expression expression) {
        this.f99734e = expression;
    }

    public void setExternal(boolean z) {
        this.f99732c = z;
    }

    public void setMayBeOmitted(boolean z) {
        this.f99730a = z;
    }
}
