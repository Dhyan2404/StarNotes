package org.jsoup.select;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Element;

/* renamed from: org.jsoup.select.a */
/* loaded from: classes13.dex */
public abstract class AbstractC20370a extends Evaluator {

    /* renamed from: c */
    public final ArrayList<Evaluator> f114443c;

    /* renamed from: d */
    public int f114444d;

    /* renamed from: org.jsoup.select.a$a */
    /* loaded from: classes13.dex */
    public static final class a extends AbstractC20370a {
        public a(Collection<Evaluator> collection) {
            super(collection);
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            for (int i = 0; i < this.f114444d; i++) {
                if (!this.f114443c.get(i).matches(element, element2)) {
                    return false;
                }
            }
            return true;
        }

        public String toString() {
            return StringUtil.join(this.f114443c, " ");
        }

        public a(Evaluator... evaluatorArr) {
            this(Arrays.asList(evaluatorArr));
        }
    }

    /* renamed from: org.jsoup.select.a$b */
    /* loaded from: classes13.dex */
    public static final class b extends AbstractC20370a {
        public b() {
        }

        /* renamed from: d */
        public void m71452d(Evaluator evaluator) {
            this.f114443c.add(evaluator);
            m71451c();
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            for (int i = 0; i < this.f114444d; i++) {
                if (this.f114443c.get(i).matches(element, element2)) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            return StringUtil.join(this.f114443c, ", ");
        }

        public b(Collection<Evaluator> collection) {
            if (this.f114444d > 1) {
                this.f114443c.add(new a(collection));
            } else {
                this.f114443c.addAll(collection);
            }
            m71451c();
        }

        public b(Evaluator... evaluatorArr) {
            this(Arrays.asList(evaluatorArr));
        }
    }

    public AbstractC20370a() {
        this.f114444d = 0;
        this.f114443c = new ArrayList<>();
    }

    /* renamed from: a */
    public Evaluator m71449a() {
        int i = this.f114444d;
        if (i > 0) {
            return this.f114443c.get(i - 1);
        }
        return null;
    }

    /* renamed from: b */
    public void m71450b(Evaluator evaluator) {
        this.f114443c.set(this.f114444d - 1, evaluator);
    }

    /* renamed from: c */
    public void m71451c() {
        this.f114444d = this.f114443c.size();
    }

    public AbstractC20370a(Collection<Evaluator> collection) {
        this();
        this.f114443c.addAll(collection);
        m71451c();
    }
}
