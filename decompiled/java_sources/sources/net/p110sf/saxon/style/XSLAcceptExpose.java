package net.p110sf.saxon.style;

import java.util.HashSet;
import java.util.Set;
import net.p110sf.saxon.pattern.QNameTest;
import net.p110sf.saxon.trans.ComponentTest;
import net.p110sf.saxon.trans.Visibility;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public abstract class XSLAcceptExpose extends StyleElement {

    /* renamed from: u */
    public final Set<ComponentTest> f101863u = new HashSet();

    /* renamed from: v */
    public final Set<ComponentTest> f101864v = new HashSet();

    /* renamed from: w */
    public Visibility f101865w = Visibility.UNDEFINED;

    /* renamed from: Z */
    public final void m64020Z(int i, QNameTest qNameTest) {
        if (i != -1) {
            this.f101864v.add(new ComponentTest(i, qNameTest, -1));
            return;
        }
        this.f101864v.add(new ComponentTest(160, qNameTest, -1));
        this.f101864v.add(new ComponentTest(210, qNameTest, -1));
        this.f101864v.add(new ComponentTest(218, qNameTest, -1));
        this.f101864v.add(new ComponentTest(138, qNameTest, -1));
        this.f101864v.add(new ComponentTest(180, qNameTest, -1));
    }

    public Set<ComponentTest> getExplicitComponentTests() throws XPathException {
        prepareAttributes();
        return this.f101863u;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public Visibility getVisibility() {
        return this.f101865w;
    }

    public Set<ComponentTest> getWildcardComponentTests() {
        prepareAttributes();
        return this.f101864v;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0056, code lost:
    
        if (r15.equals(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_COMPONENT_STRING) == false) goto L10;
     */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0117  */
    @Override // net.p110sf.saxon.style.StyleElement
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void prepareAttributes() {
        /*
            Method dump skipped, instructions count: 702
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.style.XSLAcceptExpose.prepareAttributes():void");
    }
}
