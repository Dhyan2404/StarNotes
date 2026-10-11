package org.jsoup.select;

import java.util.Iterator;
import org.jsoup.nodes.Element;

/* renamed from: org.jsoup.select.b */
/* loaded from: classes13.dex */
public abstract class AbstractC20371b extends Evaluator {

    /* renamed from: c */
    public Evaluator f114445c;

    /* renamed from: org.jsoup.select.b$a */
    /* loaded from: classes13.dex */
    public static class a extends AbstractC20371b {
        public a(Evaluator evaluator) {
            this.f114445c = evaluator;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            Iterator<Element> it2 = element2.getAllElements().iterator();
            while (it2.hasNext()) {
                Element next = it2.next();
                if (next != element2 && this.f114445c.matches(element2, next)) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            return String.format(":has(%s)", this.f114445c);
        }
    }

    /* renamed from: org.jsoup.select.b$b */
    /* loaded from: classes13.dex */
    public static class b extends AbstractC20371b {
        public b(Evaluator evaluator) {
            this.f114445c = evaluator;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            Element parent;
            return (element == element2 || (parent = element2.parent()) == null || !this.f114445c.matches(element, parent)) ? false : true;
        }

        public String toString() {
            return String.format(":ImmediateParent%s", this.f114445c);
        }
    }

    /* renamed from: org.jsoup.select.b$c */
    /* loaded from: classes13.dex */
    public static class c extends AbstractC20371b {
        public c(Evaluator evaluator) {
            this.f114445c = evaluator;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            Element previousElementSibling;
            return (element == element2 || (previousElementSibling = element2.previousElementSibling()) == null || !this.f114445c.matches(element, previousElementSibling)) ? false : true;
        }

        public String toString() {
            return String.format(":prev%s", this.f114445c);
        }
    }

    /* renamed from: org.jsoup.select.b$d */
    /* loaded from: classes13.dex */
    public static class d extends AbstractC20371b {
        public d(Evaluator evaluator) {
            this.f114445c = evaluator;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return !this.f114445c.matches(element, element2);
        }

        public String toString() {
            return String.format(":not%s", this.f114445c);
        }
    }

    /* renamed from: org.jsoup.select.b$e */
    /* loaded from: classes13.dex */
    public static class e extends AbstractC20371b {
        public e(Evaluator evaluator) {
            this.f114445c = evaluator;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            if (element == element2) {
                return false;
            }
            do {
                element2 = element2.parent();
                if (this.f114445c.matches(element, element2)) {
                    return true;
                }
            } while (element2 != element);
            return false;
        }

        public String toString() {
            return String.format(":parent%s", this.f114445c);
        }
    }

    /* renamed from: org.jsoup.select.b$f */
    /* loaded from: classes13.dex */
    public static class f extends AbstractC20371b {
        public f(Evaluator evaluator) {
            this.f114445c = evaluator;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            if (element == element2) {
                return false;
            }
            do {
                element2 = element2.previousElementSibling();
                if (element2 == null) {
                    return false;
                }
            } while (!this.f114445c.matches(element, element2));
            return true;
        }

        public String toString() {
            return String.format(":prev*%s", this.f114445c);
        }
    }

    /* renamed from: org.jsoup.select.b$g */
    /* loaded from: classes13.dex */
    public static class g extends Evaluator {
        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element == element2;
        }
    }
}
