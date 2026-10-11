package com.sunia.HTREnginev2;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import org.apache.xerces.xni.grammars.Grammar;
import org.apache.xerces.xni.grammars.XMLGrammarDescription;
import org.apache.xerces.xni.grammars.XMLGrammarPool;
import org.apache.xerces.xni.grammars.XMLSchemaDescription;

/* loaded from: classes13.dex */
public final class gvm implements XMLGrammarPool {

    /* renamed from: e */
    public static final int f71531e = 11;

    /* renamed from: f */
    public static final Grammar[] f71532f = new Grammar[0];

    /* renamed from: a */
    public C13795a[] f71533a;

    /* renamed from: c */
    public int f71535c = 0;

    /* renamed from: d */
    public final ReferenceQueue f71536d = new ReferenceQueue();

    /* renamed from: b */
    public boolean f71534b = false;

    /* renamed from: com.sunia.HTREnginev2.gvm$a */
    /* loaded from: classes13.dex */
    public static final class C13795a {

        /* renamed from: a */
        public int f71537a;

        /* renamed from: b */
        public int f71538b;

        /* renamed from: c */
        public C13795a f71539c;

        /* renamed from: d */
        public C13795a f71540d;

        /* renamed from: e */
        public XMLGrammarDescription f71541e;

        /* renamed from: f */
        public C13796b f71542f;

        public C13795a(int i, int i2, XMLGrammarDescription xMLGrammarDescription, Grammar grammar, C13795a c13795a, ReferenceQueue referenceQueue) {
            this.f71537a = i;
            this.f71538b = i2;
            this.f71539c = null;
            this.f71540d = c13795a;
            if (c13795a != null) {
                c13795a.f71539c = this;
            }
            this.f71541e = xMLGrammarDescription;
            this.f71542f = new C13796b(this, grammar, referenceQueue);
        }

        /* renamed from: a */
        public void m54368a() {
            this.f71541e = null;
            this.f71542f = null;
            C13795a c13795a = this.f71540d;
            if (c13795a != null) {
                c13795a.m54368a();
                this.f71540d = null;
            }
        }
    }

    /* renamed from: com.sunia.HTREnginev2.gvm$b */
    /* loaded from: classes13.dex */
    public static final class C13796b extends SoftReference {

        /* renamed from: a */
        public C13795a f71543a;

        public C13796b(C13795a c13795a, Grammar grammar, ReferenceQueue referenceQueue) {
            super(grammar, referenceQueue);
            this.f71543a = c13795a;
        }
    }

    public gvm() {
        this.f71533a = null;
        this.f71533a = new C13795a[11];
    }

    /* renamed from: a */
    public final void m54360a() {
        while (true) {
            Reference poll = this.f71536d.poll();
            if (poll == null) {
                return;
            }
            C13795a c13795a = ((C13796b) poll).f71543a;
            if (c13795a != null) {
                m54366g(c13795a);
            }
        }
    }

    /* renamed from: b */
    public boolean m54361b(XMLGrammarDescription xMLGrammarDescription) {
        synchronized (this.f71533a) {
            m54360a();
            int m54364e = m54364e(xMLGrammarDescription);
            C13795a[] c13795aArr = this.f71533a;
            for (C13795a c13795a = c13795aArr[(Integer.MAX_VALUE & m54364e) % c13795aArr.length]; c13795a != null; c13795a = c13795a.f71540d) {
                if (((Grammar) c13795a.f71542f.get()) == null) {
                    m54366g(c13795a);
                } else if (c13795a.f71537a == m54364e && m54362c(c13795a.f71541e, xMLGrammarDescription)) {
                    return true;
                }
            }
            return false;
        }
    }

    /* renamed from: c */
    public boolean m54362c(XMLGrammarDescription xMLGrammarDescription, XMLGrammarDescription xMLGrammarDescription2) {
        if (!(xMLGrammarDescription instanceof XMLSchemaDescription)) {
            return xMLGrammarDescription.equals(xMLGrammarDescription2);
        }
        if (!(xMLGrammarDescription2 instanceof XMLSchemaDescription)) {
            return false;
        }
        XMLSchemaDescription xMLSchemaDescription = (XMLSchemaDescription) xMLGrammarDescription;
        XMLSchemaDescription xMLSchemaDescription2 = (XMLSchemaDescription) xMLGrammarDescription2;
        String targetNamespace = xMLSchemaDescription.getTargetNamespace();
        if (targetNamespace != null) {
            if (!targetNamespace.equals(xMLSchemaDescription2.getTargetNamespace())) {
                return false;
            }
        } else if (xMLSchemaDescription2.getTargetNamespace() != null) {
            return false;
        }
        String expandedSystemId = xMLSchemaDescription.getExpandedSystemId();
        return expandedSystemId != null ? expandedSystemId.equals(xMLSchemaDescription2.getExpandedSystemId()) : xMLSchemaDescription2.getExpandedSystemId() == null;
    }

    @Override // org.apache.xerces.xni.grammars.XMLGrammarPool
    public void cacheGrammars(String str, Grammar[] grammarArr) {
        if (this.f71534b) {
            return;
        }
        for (Grammar grammar : grammarArr) {
            m54365f(grammar);
        }
    }

    @Override // org.apache.xerces.xni.grammars.XMLGrammarPool
    public void clear() {
        int i = 0;
        while (true) {
            C13795a[] c13795aArr = this.f71533a;
            if (i >= c13795aArr.length) {
                this.f71535c = 0;
                return;
            }
            C13795a c13795a = c13795aArr[i];
            if (c13795a != null) {
                c13795a.m54368a();
                this.f71533a[i] = null;
            }
            i++;
        }
    }

    /* renamed from: d */
    public Grammar m54363d(XMLGrammarDescription xMLGrammarDescription) {
        synchronized (this.f71533a) {
            m54360a();
            int m54364e = m54364e(xMLGrammarDescription);
            C13795a[] c13795aArr = this.f71533a;
            for (C13795a c13795a = c13795aArr[(Integer.MAX_VALUE & m54364e) % c13795aArr.length]; c13795a != null; c13795a = c13795a.f71540d) {
                Grammar grammar = (Grammar) c13795a.f71542f.get();
                if (grammar == null) {
                    m54366g(c13795a);
                } else if (c13795a.f71537a == m54364e && m54362c(c13795a.f71541e, xMLGrammarDescription)) {
                    return grammar;
                }
            }
            return null;
        }
    }

    /* renamed from: e */
    public int m54364e(XMLGrammarDescription xMLGrammarDescription) {
        if (!(xMLGrammarDescription instanceof XMLSchemaDescription)) {
            return xMLGrammarDescription.hashCode();
        }
        XMLSchemaDescription xMLSchemaDescription = (XMLSchemaDescription) xMLGrammarDescription;
        String targetNamespace = xMLSchemaDescription.getTargetNamespace();
        String expandedSystemId = xMLSchemaDescription.getExpandedSystemId();
        return (targetNamespace != null ? targetNamespace.hashCode() : 0) ^ (expandedSystemId != null ? expandedSystemId.hashCode() : 0);
    }

    /* renamed from: f */
    public void m54365f(Grammar grammar) {
        if (this.f71534b) {
            return;
        }
        synchronized (this.f71533a) {
            m54360a();
            XMLGrammarDescription grammarDescription = grammar.getGrammarDescription();
            int m54364e = m54364e(grammarDescription);
            C13795a[] c13795aArr = this.f71533a;
            int length = (Integer.MAX_VALUE & m54364e) % c13795aArr.length;
            for (C13795a c13795a = c13795aArr[length]; c13795a != null; c13795a = c13795a.f71540d) {
                if (c13795a.f71537a == m54364e && m54362c(c13795a.f71541e, grammarDescription)) {
                    if (c13795a.f71542f.get() != grammar) {
                        c13795a.f71542f = new C13796b(c13795a, grammar, this.f71536d);
                    }
                    return;
                }
            }
            this.f71533a[length] = new C13795a(m54364e, length, grammarDescription, grammar, this.f71533a[length], this.f71536d);
            this.f71535c++;
        }
    }

    /* renamed from: g */
    public final Grammar m54366g(C13795a c13795a) {
        C13795a c13795a2 = c13795a.f71539c;
        if (c13795a2 != null) {
            c13795a2.f71540d = c13795a.f71540d;
        } else {
            this.f71533a[c13795a.f71538b] = c13795a.f71540d;
        }
        C13795a c13795a3 = c13795a.f71540d;
        if (c13795a3 != null) {
            c13795a3.f71539c = c13795a2;
        }
        this.f71535c--;
        C13796b c13796b = c13795a.f71542f;
        c13796b.f71543a = null;
        return (Grammar) c13796b.get();
    }

    /* renamed from: h */
    public Grammar m54367h(XMLGrammarDescription xMLGrammarDescription) {
        synchronized (this.f71533a) {
            m54360a();
            int m54364e = m54364e(xMLGrammarDescription);
            C13795a[] c13795aArr = this.f71533a;
            for (C13795a c13795a = c13795aArr[(Integer.MAX_VALUE & m54364e) % c13795aArr.length]; c13795a != null; c13795a = c13795a.f71540d) {
                if (c13795a.f71537a == m54364e && m54362c(c13795a.f71541e, xMLGrammarDescription)) {
                    return m54366g(c13795a);
                }
            }
            return null;
        }
    }

    @Override // org.apache.xerces.xni.grammars.XMLGrammarPool
    public void lockPool() {
        this.f71534b = true;
    }

    @Override // org.apache.xerces.xni.grammars.XMLGrammarPool
    public Grammar retrieveGrammar(XMLGrammarDescription xMLGrammarDescription) {
        return m54363d(xMLGrammarDescription);
    }

    @Override // org.apache.xerces.xni.grammars.XMLGrammarPool
    public Grammar[] retrieveInitialGrammarSet(String str) {
        Grammar[] grammarArr;
        synchronized (this.f71533a) {
            m54360a();
            grammarArr = f71532f;
        }
        return grammarArr;
    }

    @Override // org.apache.xerces.xni.grammars.XMLGrammarPool
    public void unlockPool() {
        this.f71534b = false;
    }

    public gvm(int i) {
        this.f71533a = null;
        this.f71533a = new C13795a[i];
    }
}
