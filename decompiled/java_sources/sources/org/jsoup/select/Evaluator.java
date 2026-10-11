package org.jsoup.select;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.util.Iterator;
import java.util.regex.Pattern;
import org.jsoup.helper.Validate;
import org.jsoup.internal.Normalizer;
import org.jsoup.nodes.Comment;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.DocumentType;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.PseudoTextElement;
import org.jsoup.nodes.TextNode;
import org.jsoup.nodes.XmlDeclaration;

/* loaded from: classes13.dex */
public abstract class Evaluator {

    /* loaded from: classes13.dex */
    public static final class AllElements extends Evaluator {
        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return true;
        }

        public String toString() {
            return "*";
        }
    }

    /* loaded from: classes13.dex */
    public static final class Attribute extends Evaluator {

        /* renamed from: c */
        public String f114417c;

        public Attribute(String str) {
            this.f114417c = str;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element2.hasAttr(this.f114417c);
        }

        public String toString() {
            return String.format("[%s]", this.f114417c);
        }
    }

    /* loaded from: classes13.dex */
    public static abstract class AttributeKeyPair extends Evaluator {

        /* renamed from: c */
        public String f114418c;

        /* renamed from: d */
        public String f114419d;

        public AttributeKeyPair(String str, String str2) {
            this(str, str2, true);
        }

        public AttributeKeyPair(String str, String str2, boolean z) {
            Validate.notEmpty(str);
            Validate.notEmpty(str2);
            this.f114418c = Normalizer.normalize(str);
            boolean z2 = (str2.startsWith(CloudStorageConstants.SINGLE_QUOTES) && str2.endsWith(CloudStorageConstants.SINGLE_QUOTES)) || (str2.startsWith("\"") && str2.endsWith("\""));
            str2 = z2 ? str2.substring(1, str2.length() - 1) : str2;
            this.f114419d = z ? Normalizer.normalize(str2) : Normalizer.normalize(str2, z2);
        }
    }

    /* loaded from: classes13.dex */
    public static final class AttributeStarting extends Evaluator {

        /* renamed from: c */
        public String f114420c;

        public AttributeStarting(String str) {
            Validate.notEmpty(str);
            this.f114420c = Normalizer.lowerCase(str);
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            Iterator<org.jsoup.nodes.Attribute> it2 = element2.attributes().asList().iterator();
            while (it2.hasNext()) {
                if (Normalizer.lowerCase(it2.next().getKey()).startsWith(this.f114420c)) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            return String.format("[^%s]", this.f114420c);
        }
    }

    /* loaded from: classes13.dex */
    public static final class AttributeWithValue extends AttributeKeyPair {
        public AttributeWithValue(String str, String str2) {
            super(str, str2);
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element2.hasAttr(this.f114418c) && this.f114419d.equalsIgnoreCase(element2.attr(this.f114418c).trim());
        }

        public String toString() {
            return String.format("[%s=%s]", this.f114418c, this.f114419d);
        }
    }

    /* loaded from: classes13.dex */
    public static final class AttributeWithValueContaining extends AttributeKeyPair {
        public AttributeWithValueContaining(String str, String str2) {
            super(str, str2);
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element2.hasAttr(this.f114418c) && Normalizer.lowerCase(element2.attr(this.f114418c)).contains(this.f114419d);
        }

        public String toString() {
            return String.format("[%s*=%s]", this.f114418c, this.f114419d);
        }
    }

    /* loaded from: classes13.dex */
    public static final class AttributeWithValueEnding extends AttributeKeyPair {
        public AttributeWithValueEnding(String str, String str2) {
            super(str, str2, false);
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element2.hasAttr(this.f114418c) && Normalizer.lowerCase(element2.attr(this.f114418c)).endsWith(this.f114419d);
        }

        public String toString() {
            return String.format("[%s$=%s]", this.f114418c, this.f114419d);
        }
    }

    /* loaded from: classes13.dex */
    public static final class AttributeWithValueMatching extends Evaluator {

        /* renamed from: c */
        public String f114421c;

        /* renamed from: d */
        public Pattern f114422d;

        public AttributeWithValueMatching(String str, Pattern pattern) {
            this.f114421c = Normalizer.normalize(str);
            this.f114422d = pattern;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element2.hasAttr(this.f114421c) && this.f114422d.matcher(element2.attr(this.f114421c)).find();
        }

        public String toString() {
            return String.format("[%s~=%s]", this.f114421c, this.f114422d.toString());
        }
    }

    /* loaded from: classes13.dex */
    public static final class AttributeWithValueNot extends AttributeKeyPair {
        public AttributeWithValueNot(String str, String str2) {
            super(str, str2);
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return !this.f114419d.equalsIgnoreCase(element2.attr(this.f114418c));
        }

        public String toString() {
            return String.format("[%s!=%s]", this.f114418c, this.f114419d);
        }
    }

    /* loaded from: classes13.dex */
    public static final class AttributeWithValueStarting extends AttributeKeyPair {
        public AttributeWithValueStarting(String str, String str2) {
            super(str, str2, false);
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element2.hasAttr(this.f114418c) && Normalizer.lowerCase(element2.attr(this.f114418c)).startsWith(this.f114419d);
        }

        public String toString() {
            return String.format("[%s^=%s]", this.f114418c, this.f114419d);
        }
    }

    /* loaded from: classes13.dex */
    public static final class Class extends Evaluator {

        /* renamed from: c */
        public String f114423c;

        public Class(String str) {
            this.f114423c = str;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element2.hasClass(this.f114423c);
        }

        public String toString() {
            return String.format(".%s", this.f114423c);
        }
    }

    /* loaded from: classes13.dex */
    public static final class ContainsData extends Evaluator {

        /* renamed from: c */
        public String f114424c;

        public ContainsData(String str) {
            this.f114424c = Normalizer.lowerCase(str);
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return Normalizer.lowerCase(element2.data()).contains(this.f114424c);
        }

        public String toString() {
            return String.format(":containsData(%s)", this.f114424c);
        }
    }

    /* loaded from: classes13.dex */
    public static final class ContainsOwnText extends Evaluator {

        /* renamed from: c */
        public String f114425c;

        public ContainsOwnText(String str) {
            this.f114425c = Normalizer.lowerCase(str);
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return Normalizer.lowerCase(element2.ownText()).contains(this.f114425c);
        }

        public String toString() {
            return String.format(":containsOwn(%s)", this.f114425c);
        }
    }

    /* loaded from: classes13.dex */
    public static final class ContainsText extends Evaluator {

        /* renamed from: c */
        public String f114426c;

        public ContainsText(String str) {
            this.f114426c = Normalizer.lowerCase(str);
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return Normalizer.lowerCase(element2.text()).contains(this.f114426c);
        }

        public String toString() {
            return String.format(":contains(%s)", this.f114426c);
        }
    }

    /* loaded from: classes13.dex */
    public static abstract class CssNthEvaluator extends Evaluator {

        /* renamed from: a */
        protected final int f114427a;

        /* renamed from: b */
        protected final int f114428b;

        public CssNthEvaluator(int i) {
            this(0, i);
        }

        public abstract int calculatePosition(Element element, Element element2);

        public abstract String getPseudoClass();

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            Element parent = element2.parent();
            if (parent == null || (parent instanceof Document)) {
                return false;
            }
            int calculatePosition = calculatePosition(element, element2);
            int i = this.f114427a;
            int i2 = this.f114428b;
            return i == 0 ? calculatePosition == i2 : (calculatePosition - i2) * i >= 0 && (calculatePosition - i2) % i == 0;
        }

        public String toString() {
            return this.f114427a == 0 ? String.format(":%s(%d)", getPseudoClass(), Integer.valueOf(this.f114428b)) : this.f114428b == 0 ? String.format(":%s(%dn)", getPseudoClass(), Integer.valueOf(this.f114427a)) : String.format(":%s(%dn%+d)", getPseudoClass(), Integer.valueOf(this.f114427a), Integer.valueOf(this.f114428b));
        }

        public CssNthEvaluator(int i, int i2) {
            this.f114427a = i;
            this.f114428b = i2;
        }
    }

    /* renamed from: org.jsoup.select.Evaluator$Id */
    /* loaded from: classes13.dex */
    public static final class C20369Id extends Evaluator {

        /* renamed from: c */
        public String f114429c;

        public C20369Id(String str) {
            this.f114429c = str;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return this.f114429c.equals(element2.m71134id());
        }

        public String toString() {
            return String.format("#%s", this.f114429c);
        }
    }

    /* loaded from: classes13.dex */
    public static final class IndexEquals extends IndexEvaluator {
        public IndexEquals(int i) {
            super(i);
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element2.elementSiblingIndex() == this.f114430c;
        }

        public String toString() {
            return String.format(":eq(%d)", Integer.valueOf(this.f114430c));
        }
    }

    /* loaded from: classes13.dex */
    public static abstract class IndexEvaluator extends Evaluator {

        /* renamed from: c */
        public int f114430c;

        public IndexEvaluator(int i) {
            this.f114430c = i;
        }
    }

    /* loaded from: classes13.dex */
    public static final class IndexGreaterThan extends IndexEvaluator {
        public IndexGreaterThan(int i) {
            super(i);
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element2.elementSiblingIndex() > this.f114430c;
        }

        public String toString() {
            return String.format(":gt(%d)", Integer.valueOf(this.f114430c));
        }
    }

    /* loaded from: classes13.dex */
    public static final class IndexLessThan extends IndexEvaluator {
        public IndexLessThan(int i) {
            super(i);
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element != element2 && element2.elementSiblingIndex() < this.f114430c;
        }

        public String toString() {
            return String.format(":lt(%d)", Integer.valueOf(this.f114430c));
        }
    }

    /* loaded from: classes13.dex */
    public static final class IsEmpty extends Evaluator {
        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            for (Node node : element2.childNodes()) {
                if (!(node instanceof Comment) && !(node instanceof XmlDeclaration) && !(node instanceof DocumentType)) {
                    return false;
                }
            }
            return true;
        }

        public String toString() {
            return ":empty";
        }
    }

    /* loaded from: classes13.dex */
    public static final class IsFirstChild extends Evaluator {
        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            Element parent = element2.parent();
            return (parent == null || (parent instanceof Document) || element2.elementSiblingIndex() != 0) ? false : true;
        }

        public String toString() {
            return ":first-child";
        }
    }

    /* loaded from: classes13.dex */
    public static final class IsFirstOfType extends IsNthOfType {
        public IsFirstOfType() {
            super(0, 1);
        }

        @Override // org.jsoup.select.Evaluator.CssNthEvaluator
        public String toString() {
            return ":first-of-type";
        }
    }

    /* loaded from: classes13.dex */
    public static final class IsLastChild extends Evaluator {
        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            Element parent = element2.parent();
            return (parent == null || (parent instanceof Document) || element2.elementSiblingIndex() != parent.children().size() - 1) ? false : true;
        }

        public String toString() {
            return ":last-child";
        }
    }

    /* loaded from: classes13.dex */
    public static final class IsLastOfType extends IsNthLastOfType {
        public IsLastOfType() {
            super(0, 1);
        }

        @Override // org.jsoup.select.Evaluator.CssNthEvaluator
        public String toString() {
            return ":last-of-type";
        }
    }

    /* loaded from: classes13.dex */
    public static final class IsNthChild extends CssNthEvaluator {
        public IsNthChild(int i, int i2) {
            super(i, i2);
        }

        @Override // org.jsoup.select.Evaluator.CssNthEvaluator
        public int calculatePosition(Element element, Element element2) {
            return element2.elementSiblingIndex() + 1;
        }

        @Override // org.jsoup.select.Evaluator.CssNthEvaluator
        public String getPseudoClass() {
            return "nth-child";
        }
    }

    /* loaded from: classes13.dex */
    public static final class IsNthLastChild extends CssNthEvaluator {
        public IsNthLastChild(int i, int i2) {
            super(i, i2);
        }

        @Override // org.jsoup.select.Evaluator.CssNthEvaluator
        public int calculatePosition(Element element, Element element2) {
            return element2.parent().children().size() - element2.elementSiblingIndex();
        }

        @Override // org.jsoup.select.Evaluator.CssNthEvaluator
        public String getPseudoClass() {
            return "nth-last-child";
        }
    }

    /* loaded from: classes13.dex */
    public static class IsNthLastOfType extends CssNthEvaluator {
        public IsNthLastOfType(int i, int i2) {
            super(i, i2);
        }

        @Override // org.jsoup.select.Evaluator.CssNthEvaluator
        public int calculatePosition(Element element, Element element2) {
            Elements children = element2.parent().children();
            int i = 0;
            for (int elementSiblingIndex = element2.elementSiblingIndex(); elementSiblingIndex < children.size(); elementSiblingIndex++) {
                if (children.get(elementSiblingIndex).tag().equals(element2.tag())) {
                    i++;
                }
            }
            return i;
        }

        @Override // org.jsoup.select.Evaluator.CssNthEvaluator
        public String getPseudoClass() {
            return "nth-last-of-type";
        }
    }

    /* loaded from: classes13.dex */
    public static class IsNthOfType extends CssNthEvaluator {
        public IsNthOfType(int i, int i2) {
            super(i, i2);
        }

        @Override // org.jsoup.select.Evaluator.CssNthEvaluator
        public int calculatePosition(Element element, Element element2) {
            Iterator<Element> it2 = element2.parent().children().iterator();
            int i = 0;
            while (it2.hasNext()) {
                Element next = it2.next();
                if (next.tag().equals(element2.tag())) {
                    i++;
                }
                if (next == element2) {
                    break;
                }
            }
            return i;
        }

        @Override // org.jsoup.select.Evaluator.CssNthEvaluator
        public String getPseudoClass() {
            return "nth-of-type";
        }
    }

    /* loaded from: classes13.dex */
    public static final class IsOnlyChild extends Evaluator {
        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            Element parent = element2.parent();
            return (parent == null || (parent instanceof Document) || !element2.siblingElements().isEmpty()) ? false : true;
        }

        public String toString() {
            return ":only-child";
        }
    }

    /* loaded from: classes13.dex */
    public static final class IsOnlyOfType extends Evaluator {
        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            Element parent = element2.parent();
            if (parent == null || (parent instanceof Document)) {
                return false;
            }
            Iterator<Element> it2 = parent.children().iterator();
            int i = 0;
            while (it2.hasNext()) {
                if (it2.next().tag().equals(element2.tag())) {
                    i++;
                }
            }
            return i == 1;
        }

        public String toString() {
            return ":only-of-type";
        }
    }

    /* loaded from: classes13.dex */
    public static final class IsRoot extends Evaluator {
        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            if (element instanceof Document) {
                element = element.child(0);
            }
            return element2 == element;
        }

        public String toString() {
            return ":root";
        }
    }

    /* loaded from: classes13.dex */
    public static final class MatchText extends Evaluator {
        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            if (element2 instanceof PseudoTextElement) {
                return true;
            }
            for (TextNode textNode : element2.textNodes()) {
                PseudoTextElement pseudoTextElement = new PseudoTextElement(org.jsoup.parser.Tag.valueOf(element2.tagName()), element2.baseUri(), element2.attributes());
                textNode.replaceWith(pseudoTextElement);
                pseudoTextElement.appendChild(textNode);
            }
            return false;
        }

        public String toString() {
            return ":matchText";
        }
    }

    /* loaded from: classes13.dex */
    public static final class Matches extends Evaluator {

        /* renamed from: c */
        public Pattern f114431c;

        public Matches(Pattern pattern) {
            this.f114431c = pattern;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return this.f114431c.matcher(element2.text()).find();
        }

        public String toString() {
            return String.format(":matches(%s)", this.f114431c);
        }
    }

    /* loaded from: classes13.dex */
    public static final class MatchesOwn extends Evaluator {

        /* renamed from: c */
        public Pattern f114432c;

        public MatchesOwn(Pattern pattern) {
            this.f114432c = pattern;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return this.f114432c.matcher(element2.ownText()).find();
        }

        public String toString() {
            return String.format(":matchesOwn(%s)", this.f114432c);
        }
    }

    /* loaded from: classes13.dex */
    public static final class Tag extends Evaluator {

        /* renamed from: c */
        public String f114433c;

        public Tag(String str) {
            this.f114433c = str;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element2.normalName().equals(this.f114433c);
        }

        public String toString() {
            return String.format("%s", this.f114433c);
        }
    }

    /* loaded from: classes13.dex */
    public static final class TagEndsWith extends Evaluator {

        /* renamed from: c */
        public String f114434c;

        public TagEndsWith(String str) {
            this.f114434c = str;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element2.normalName().endsWith(this.f114434c);
        }

        public String toString() {
            return String.format("%s", this.f114434c);
        }
    }

    public abstract boolean matches(Element element, Element element2);
}
