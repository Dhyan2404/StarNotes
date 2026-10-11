package net.p110sf.saxon.expr;

import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.str.StringTool;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class StringLiteral extends Literal {
    public StringLiteral(StringValue stringValue) {
        super(stringValue);
    }

    @Override // net.p110sf.saxon.expr.Literal, net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        StringLiteral stringLiteral = new StringLiteral(getGroundedValue());
        ExpressionTool.copyLocationInfo(this, stringLiteral);
        return stringLiteral;
    }

    public UnicodeString getString() {
        return getGroundedValue().getUnicodeStringValue();
    }

    public String stringify() {
        return getGroundedValue().getStringValue();
    }

    public StringLiteral(UnicodeString unicodeString) {
        this(new StringValue(unicodeString));
    }

    @Override // net.p110sf.saxon.expr.Literal
    public StringValue getGroundedValue() {
        return (StringValue) super.getGroundedValue();
    }

    public StringLiteral(String str) {
        this(new StringValue(StringTool.fromCharSequence(str)));
    }
}
