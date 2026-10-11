package net.p110sf.saxon.regex.charclass;

import com.couchbase.lite.internal.BaseTLSIdentity;
import com.miui.penengine.p015e.C6997f;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.function.IntPredicate;
import javax.xml.transform.stream.StreamSource;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.Version;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.p111z.IntArraySet;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.p111z.IntPredicateProxy;
import net.p110sf.saxon.p111z.IntRangeSet;
import net.p110sf.saxon.p111z.IntSet;
import net.p110sf.saxon.p111z.IntSetPredicate;
import net.p110sf.saxon.p111z.IntUnionPredicate;
import net.p110sf.saxon.pattern.NameTest;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.regex.charclass.Categories;
import net.p110sf.saxon.serialize.charcode.XMLCharacterData;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.tiny.TinyElementImpl;

/* loaded from: classes11.dex */
public class Categories {
    public static final CharacterClass ESCAPE_C;
    public static final CharacterClass ESCAPE_D;
    public static final CharacterClass ESCAPE_I;
    public static final CharacterClass ESCAPE_S;
    public static final CharacterClass ESCAPE_W;
    public static final PredicateCharacterClass ESCAPE_c;
    public static final Category ESCAPE_d;
    public static final PredicateCharacterClass ESCAPE_i;
    public static final CharacterClass ESCAPE_s;
    public static final PredicateCharacterClass ESCAPE_w;

    /* renamed from: a */
    public static HashMap<String, Category> f101257a;

    /* renamed from: b */
    public static Category f101258b;

    /* renamed from: c */
    public static Category f101259c;

    /* renamed from: d */
    public static Category f101260d;

    /* loaded from: classes11.dex */
    public static class Category implements CharacterClass {

        /* renamed from: a */
        public final String f101261a;

        /* renamed from: b */
        public final IntPredicateProxy f101262b;

        public Category(String str, IntPredicateProxy intPredicateProxy) {
            this.f101261a = str;
            this.f101262b = intPredicateProxy;
        }

        /* renamed from: c */
        public static IntSet m63611c(IntPredicateProxy intPredicateProxy) {
            if (intPredicateProxy instanceof IntSetPredicate) {
                return ((IntSetPredicate) intPredicateProxy).getIntSet();
            }
            return null;
        }

        @Override // net.p110sf.saxon.regex.charclass.CharacterClass
        public IntSet getIntSet() {
            return m63611c(this.f101262b);
        }

        @Override // net.p110sf.saxon.regex.charclass.CharacterClass
        public boolean isDisjoint(CharacterClass characterClass) {
            if (characterClass instanceof Category) {
                char charAt = this.f101261a.charAt(0);
                String str = ((Category) characterClass).f101261a;
                if (charAt == str.charAt(0)) {
                    return this.f101261a.length() > 1 && str.length() > 1 && !this.f101261a.equals(str);
                }
                return true;
            }
            if (characterClass instanceof InverseCharacterClass) {
                return characterClass.isDisjoint(this);
            }
            if (characterClass instanceof SingletonCharacterClass) {
                return !test(((SingletonCharacterClass) characterClass).getCodepoint());
            }
            if (!(characterClass instanceof IntSetCharacterClass)) {
                return false;
            }
            IntSet intSet = characterClass.getIntSet();
            if (intSet.size() > 100) {
                return false;
            }
            IntIterator it2 = intSet.iterator();
            while (it2.hasNext()) {
                if (test(it2.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // net.p110sf.saxon.regex.charclass.CharacterClass, net.p110sf.saxon.p111z.IntPredicateProxy, java.util.function.IntPredicate
        public boolean test(int i) {
            return this.f101262b.test(i);
        }
    }

    static {
        IntSetCharacterClass intSetCharacterClass = new IntSetCharacterClass(IntArraySet.make(new int[]{9, 10, 13, 32}, 4));
        ESCAPE_s = intSetCharacterClass;
        ESCAPE_S = new InverseCharacterClass(intSetCharacterClass);
        PredicateCharacterClass predicateCharacterClass = new PredicateCharacterClass(new IntPredicate() { // from class: com.sunia.HTREnginev2.fod
            @Override // java.util.function.IntPredicate
            public final boolean test(int i) {
                boolean m63608e;
                m63608e = Categories.m63608e(i);
                return m63608e;
            }
        });
        ESCAPE_i = predicateCharacterClass;
        ESCAPE_I = new InverseCharacterClass(predicateCharacterClass);
        PredicateCharacterClass predicateCharacterClass2 = new PredicateCharacterClass(new IntPredicate() { // from class: com.sunia.HTREnginev2.god
            @Override // java.util.function.IntPredicate
            public final boolean test(int i) {
                boolean m63609f;
                m63609f = Categories.m63609f(i);
                return m63609f;
            }
        });
        ESCAPE_c = predicateCharacterClass2;
        ESCAPE_C = new InverseCharacterClass(predicateCharacterClass2);
        Category category = getCategory("Nd");
        ESCAPE_d = category;
        ESCAPE_D = new InverseCharacterClass(category);
        f101258b = getCategory("P");
        f101259c = getCategory(Constants.HASIDCALL_INDEX_SIG);
        f101260d = getCategory(BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY);
        PredicateCharacterClass predicateCharacterClass3 = new PredicateCharacterClass(new IntPredicate() { // from class: com.sunia.HTREnginev2.hod
            @Override // java.util.function.IntPredicate
            public final boolean test(int i) {
                boolean m63610g;
                m63610g = Categories.m63610g(i);
                return m63610g;
            }
        });
        ESCAPE_w = predicateCharacterClass3;
        ESCAPE_W = new InverseCharacterClass(predicateCharacterClass3);
    }

    /* renamed from: d */
    public static void m63607d() {
        f101257a = new HashMap<>(30);
        InputStream locateResource = Version.platform.locateResource("categories.xml", new ArrayList());
        if (locateResource == null) {
            throw new RuntimeException("Unable to read categories.xml file");
        }
        Configuration configuration = new Configuration();
        ParseOptions parseOptions = new ParseOptions();
        parseOptions.setSchemaValidationMode(4);
        parseOptions.setDTDValidationMode(4);
        parseOptions.setTreeModel(1);
        try {
            NodeInfo rootNode = configuration.buildDocumentTree(new StreamSource(locateResource, "categories.xml"), parseOptions).getRootNode();
            int allocateFingerprint = configuration.getNamePool().allocateFingerprint("", "name");
            int allocateFingerprint2 = configuration.getNamePool().allocateFingerprint("", C6997f.f39671c);
            int allocateFingerprint3 = configuration.getNamePool().allocateFingerprint("", "t");
            AxisIterator iterateAxis = rootNode.iterateAxis(4, new NameTest(1, "", "cat", configuration.getNamePool()));
            while (true) {
                NodeInfo next = iterateAxis.next();
                if (next == null) {
                    break;
                }
                String attributeValue = ((TinyElementImpl) next).getAttributeValue(allocateFingerprint);
                IntRangeSet intRangeSet = new IntRangeSet();
                Iterator<? extends NodeInfo> it2 = next.children(NodeKindTest.ELEMENT).iterator();
                while (it2.hasNext()) {
                    TinyElementImpl tinyElementImpl = (TinyElementImpl) it2.next();
                    intRangeSet.addRange(Integer.parseInt(tinyElementImpl.getAttributeValue(allocateFingerprint2), 16), Integer.parseInt(tinyElementImpl.getAttributeValue(allocateFingerprint3), 16));
                }
                f101257a.put(attributeValue, new Category(attributeValue, new IntSetPredicate(intRangeSet)));
            }
            for (int i = 0; i < 7; i++) {
                char charAt = "CLMNPSZ".charAt(i);
                Category category = null;
                for (Map.Entry<String, Category> entry : f101257a.entrySet()) {
                    if (entry.getKey().charAt(0) == charAt) {
                        category = category == null ? entry.getValue() : IntUnionPredicate.makeUnion(category, entry.getValue());
                    }
                }
                String str = charAt + "";
                f101257a.put(str, new Category(str, category));
            }
        } catch (XPathException e) {
            throw new RuntimeException("Failed to build categories.xml", e);
        }
    }

    /* renamed from: e */
    public static /* synthetic */ boolean m63608e(int i) {
        return XMLCharacterData.isNCNameStart11(i) || i == 58;
    }

    /* renamed from: f */
    public static /* synthetic */ boolean m63609f(int i) {
        return XMLCharacterData.isNCName11(i) || i == 58;
    }

    /* renamed from: g */
    public static /* synthetic */ boolean m63610g(int i) {
        return (f101258b.test(i) || f101259c.test(i) || f101260d.test(i)) ? false : true;
    }

    public static synchronized Category getCategory(String str) {
        Category category;
        synchronized (Categories.class) {
            if (f101257a == null) {
                m63607d();
            }
            category = f101257a.get(str);
        }
        return category;
    }
}
