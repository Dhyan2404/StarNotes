package net.p110sf.saxon.trans.rules;

/* loaded from: classes11.dex */
public class RuleChain {

    /* renamed from: a */
    public Rule f102407a;
    public Object optimizationData;

    public RuleChain() {
        this.f102407a = null;
    }

    public int getLength() {
        int i = 0;
        for (Rule head = head(); head != null; head = head.getNext()) {
            i++;
        }
        return i;
    }

    public Rule head() {
        return this.f102407a;
    }

    public void setHead(Rule rule) {
        this.f102407a = rule;
    }

    public RuleChain(Rule rule) {
        this.f102407a = rule;
    }
}
