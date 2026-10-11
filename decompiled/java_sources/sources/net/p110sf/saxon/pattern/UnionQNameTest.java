package net.p110sf.saxon.pattern;

import com.google.android.material.motion.MotionUtils;
import com.google.firebase.installations.local.IidStore;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.om.StructuredQName;

/* loaded from: classes11.dex */
public class UnionQNameTest implements QNameTest {

    /* renamed from: e */
    public List<QNameTest> f100937e;

    public UnionQNameTest(List<QNameTest> list) {
        this.f100937e = new ArrayList(list);
    }

    @Override // net.p110sf.saxon.pattern.QNameTest
    public String exportQNameTest() {
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (QNameTest qNameTest : this.f100937e) {
            if (z) {
                z = false;
            } else {
                sb.append(" ");
            }
            sb.append(qNameTest.exportQNameTest());
        }
        return sb.toString();
    }

    @Override // net.p110sf.saxon.pattern.QNameTest
    public String generateJavaScriptNameTest(int i) {
        StringBuilder sb = new StringBuilder(256);
        boolean z = false;
        for (QNameTest qNameTest : this.f100937e) {
            if (z) {
                sb.append("||");
            } else {
                z = true;
            }
            sb.append(MotionUtils.f31761c + qNameTest.generateJavaScriptNameTest(i) + MotionUtils.f31762d);
        }
        return sb.toString();
    }

    @Override // net.p110sf.saxon.pattern.QNameTest
    public boolean matches(StructuredQName structuredQName) {
        Iterator<QNameTest> it2 = this.f100937e.iterator();
        while (it2.hasNext()) {
            if (it2.next().matches(structuredQName)) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(256);
        boolean z = false;
        for (QNameTest qNameTest : this.f100937e) {
            if (z) {
                sb.append(IidStore.f35940g);
            } else {
                z = true;
            }
            sb.append(qNameTest.toString());
        }
        return sb.toString();
    }
}
