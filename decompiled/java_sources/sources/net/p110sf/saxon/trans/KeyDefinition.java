package net.p110sf.saxon.trans;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import java.util.Map;
import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.expr.ContextOriginator;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.instruct.Actor;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.pattern.Pattern;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.style.StylesheetPackage;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.UType;

/* loaded from: classes11.dex */
public class KeyDefinition extends Actor implements ContextOriginator {

    /* renamed from: m */
    public final SymbolicName f102286m;

    /* renamed from: n */
    public final Pattern f102287n;

    /* renamed from: o */
    public BuiltInAtomicType f102288o;

    /* renamed from: p */
    public final StringCollator f102289p;

    /* renamed from: q */
    public final String f102290q;

    /* renamed from: r */
    public boolean f102291r = false;

    /* renamed from: s */
    public boolean f102292s = false;

    /* renamed from: t */
    public boolean f102293t = false;

    /* renamed from: u */
    public boolean f102294u = false;

    /* renamed from: v */
    public boolean f102295v = false;

    public KeyDefinition(SymbolicName symbolicName, Pattern pattern, Expression expression, String str, StringCollator stringCollator) {
        this.f102286m = symbolicName;
        this.f102287n = pattern;
        setBody(expression);
        this.f102289p = stringCollator;
        this.f102290q = str;
    }

    @Override // net.p110sf.saxon.expr.instruct.Actor
    public void allocateAllBindingSlots(StylesheetPackage stylesheetPackage) {
        super.allocateAllBindingSlots(stylesheetPackage);
        Actor.allocateBindingSlotsRecursive(stylesheetPackage, this, this.f102287n, getDeclaringComponent().getComponentBindings());
    }

    public void export(ExpressionPresenter expressionPresenter, boolean z, Map<Component, Integer> map) throws XPathException {
        String str;
        expressionPresenter.startElement("key");
        expressionPresenter.emitAttribute("name", getObjectName());
        if (!NamespaceConstant.CODEPOINT_COLLATION_URI.equals(this.f102290q)) {
            expressionPresenter.emitAttribute("collation", this.f102290q);
        }
        expressionPresenter.emitAttribute("line", getLineNumber() + "");
        expressionPresenter.emitAttribute("module", getSystemId());
        if (getStackFrameMap() != null && getStackFrameMap().getNumberOfVariables() != 0) {
            expressionPresenter.emitAttribute("slots", getStackFrameMap().getNumberOfVariables() + "");
        }
        if (map != null) {
            expressionPresenter.emitAttribute("binds", "" + getDeclaringComponent().listComponentReferences(map));
        }
        if (this.f102291r) {
            str = "b";
        } else {
            str = "";
        }
        if (isRangeKey()) {
            str = str + "r";
            expressionPresenter.emitAttribute(SessionDescription.f26441q, "1");
        }
        if (this.f102287n.getUType().overlaps(UType.ATTRIBUTE)) {
            str = str + "a";
        }
        if (this.f102287n.getUType().overlaps(UType.NAMESPACE)) {
            str = str + GoogleApiAvailabilityLight.f29016b;
        }
        if (this.f102295v) {
            str = str + "c";
        }
        if (z) {
            str = str + "u";
        }
        if (this.f102293t) {
            str = str + "v";
        }
        if (this.f102292s) {
            str = str + "s";
        }
        if (!"".equals(str)) {
            expressionPresenter.emitAttribute("flags", str);
        }
        getMatch().export(expressionPresenter);
        getBody().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    public StringCollator getCollation() {
        return this.f102289p;
    }

    public String getCollationName() {
        return this.f102290q;
    }

    public BuiltInAtomicType getIndexedItemType() {
        BuiltInAtomicType builtInAtomicType = this.f102288o;
        return builtInAtomicType == null ? BuiltInAtomicType.ANY_ATOMIC : builtInAtomicType;
    }

    public Pattern getMatch() {
        return this.f102287n;
    }

    public StructuredQName getObjectName() {
        return this.f102286m.getComponentName();
    }

    @Override // net.p110sf.saxon.expr.instruct.Actor
    public SymbolicName getSymbolicName() {
        return this.f102286m;
    }

    public Expression getUse() {
        return getBody();
    }

    public boolean isBackwardsCompatible() {
        return this.f102291r;
    }

    public boolean isComposite() {
        return this.f102295v;
    }

    public boolean isConvertUntypedToOther() {
        return this.f102293t;
    }

    public boolean isRangeKey() {
        return this.f102294u;
    }

    public boolean isStrictComparison() {
        return this.f102292s;
    }

    public void setBackwardsCompatible(boolean z) {
        this.f102291r = z;
    }

    public void setComposite(boolean z) {
        this.f102295v = z;
    }

    public void setConvertUntypedToOther(boolean z) {
        this.f102293t = z;
    }

    public void setIndexedItemType(BuiltInAtomicType builtInAtomicType) {
        this.f102288o = builtInAtomicType;
    }

    public void setLocation(Location location) {
        setSystemId(location.getSystemId());
        setLineNumber(location.getLineNumber());
        setColumnNumber(location.getColumnNumber());
    }

    public void setRangeKey(boolean z) {
        this.f102294u = z;
    }

    @Override // net.p110sf.saxon.expr.instruct.Actor
    public void setStackFrameMap(SlotManager slotManager) {
        if (slotManager != null) {
            super.setStackFrameMap(slotManager);
        }
    }

    public void setStrictComparison(boolean z) {
        this.f102292s = z;
    }

    @Override // net.p110sf.saxon.expr.instruct.Actor
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        throw new UnsupportedOperationException();
    }
}
