package net.p110sf.saxon.expr.parser;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.UType;

/* loaded from: classes11.dex */
public class ContextItemStaticInfo {

    /* renamed from: a */
    public final ItemType f99906a;

    /* renamed from: b */
    public final boolean f99907b;

    /* renamed from: c */
    public Expression f99908c;

    /* renamed from: d */
    public boolean f99909d;
    public static final ContextItemStaticInfo DEFAULT = new ContextItemStaticInfo(AnyItemType.getInstance(), true);
    public static final ContextItemStaticInfo ABSENT = new ContextItemStaticInfo(ErrorType.getInstance(), true);

    public ContextItemStaticInfo(ItemType itemType, boolean z) {
        this.f99906a = itemType;
        this.f99907b = z;
    }

    public UType getContextItemUType() {
        return this.f99906a.getUType();
    }

    public Expression getContextSettingExpression() {
        return this.f99908c;
    }

    public ItemType getItemType() {
        return this.f99906a;
    }

    public boolean isParentless() {
        return this.f99909d;
    }

    public boolean isPossiblyAbsent() {
        return this.f99907b;
    }

    public boolean isStrictStreamabilityRules() {
        return false;
    }

    public void setContextPostureGrounded() {
    }

    public void setContextPostureStriding() {
    }

    public void setContextSettingExpression(Expression expression) {
        this.f99908c = expression;
    }

    public void setParentless(boolean z) {
        this.f99909d = z;
    }
}
