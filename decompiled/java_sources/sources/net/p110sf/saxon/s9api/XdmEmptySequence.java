package net.p110sf.saxon.s9api;

import java.util.ArrayList;

/* loaded from: classes11.dex */
public class XdmEmptySequence extends XdmValue {

    /* renamed from: f */
    public static final XdmEmptySequence f101405f = new XdmEmptySequence();

    public XdmEmptySequence() {
        super(new ArrayList(0));
    }

    public static XdmEmptySequence getInstance() {
        return f101405f;
    }

    @Override // net.p110sf.saxon.s9api.XdmValue
    public int size() {
        return 0;
    }
}
