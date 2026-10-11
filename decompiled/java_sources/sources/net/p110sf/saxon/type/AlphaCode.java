package net.p110sf.saxon.type;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.XPathParser;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.ma.arrays.ArrayItemType;
import net.p110sf.saxon.ma.arrays.SimpleArrayItem;
import net.p110sf.saxon.ma.map.DictionaryMap;
import net.p110sf.saxon.ma.map.MapItem;
import net.p110sf.saxon.ma.map.MapType;
import net.p110sf.saxon.ma.map.RecordTest;
import net.p110sf.saxon.ma.map.SelfReferenceRecordTest;
import net.p110sf.saxon.om.NameChecker;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.pattern.CombinedNodeTest;
import net.p110sf.saxon.pattern.ContentTypeTest;
import net.p110sf.saxon.pattern.DocumentNodeTest;
import net.p110sf.saxon.pattern.LocalNameTest;
import net.p110sf.saxon.pattern.MultipleNodeKindTest;
import net.p110sf.saxon.pattern.NameTest;
import net.p110sf.saxon.pattern.NamespaceTest;
import net.p110sf.saxon.pattern.SchemaNodeTest;
import net.p110sf.saxon.sxpath.IndependentContext;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.SequenceExtent;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes11.dex */
public class AlphaCode {

    /* renamed from: a */
    public static final /* synthetic */ boolean f102736a = false;

    /* renamed from: net.sf.saxon.type.AlphaCode$b */
    /* loaded from: classes11.dex */
    public static class C18556b<T> {

        /* renamed from: a */
        public final String f102737a;

        /* renamed from: b */
        public int f102738b = 0;

        /* renamed from: c */
        public final InterfaceC18559e<T> f102739c;

        public C18556b(String str, InterfaceC18559e<T> interfaceC18559e) {
            this.f102737a = str;
            this.f102739c = interfaceC18559e;
        }

        /* renamed from: a */
        public final void m64599a(char c) {
            String str;
            int m64600b = m64600b();
            if (m64600b != c) {
                StringBuilder sb = new StringBuilder();
                sb.append("Expected '");
                sb.append(c);
                sb.append("', found '");
                if (m64600b == -1) {
                    str = "<eof>";
                } else {
                    str = "" + ((char) m64600b);
                }
                sb.append(str);
                sb.append(CloudStorageConstants.SINGLE_QUOTES);
                throw new IllegalStateException(sb.toString());
            }
        }

        /* renamed from: b */
        public final int m64600b() {
            if (this.f102738b >= this.f102737a.length()) {
                return -1;
            }
            String str = this.f102737a;
            int i = this.f102738b;
            this.f102738b = i + 1;
            return str.charAt(i);
        }

        /* renamed from: c */
        public final String m64601c() {
            int i = this.f102738b;
            int i2 = 0;
            while (this.f102738b < this.f102737a.length()) {
                String str = this.f102737a;
                int i3 = this.f102738b;
                this.f102738b = i3 + 1;
                char charAt = str.charAt(i3);
                if (charAt != ' ') {
                    if (charAt == ',' || charAt == ']') {
                        if (i2 == 0) {
                            String str2 = this.f102737a;
                            int i4 = this.f102738b - 1;
                            this.f102738b = i4;
                            return str2.substring(i, i4);
                        }
                    } else if (charAt == '{') {
                        i2++;
                    } else if (charAt == '}') {
                        i2--;
                    }
                } else if (i2 == 0) {
                    return this.f102737a.substring(i, this.f102738b - 1);
                }
            }
            return this.f102737a.substring(i, this.f102738b);
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:38:0x00a7. Please report as an issue. */
        /* renamed from: d */
        public T m64602d(T t) {
            char charAt;
            T mo64607e = this.f102739c.mo64607e();
            int m64600b = m64600b();
            if (m64600b < 0) {
                this.f102739c.mo64606d(mo64607e, C4921e.f26528e, "1");
            } else if ("*+1?0°".indexOf((char) m64600b) >= 0) {
                if (m64600b == 176) {
                    m64600b = 48;
                }
                this.f102739c.mo64606d(mo64607e, C4921e.f26528e, "" + ((char) m64600b));
            } else {
                this.f102739c.mo64606d(mo64607e, C4921e.f26528e, "1");
                this.f102738b--;
            }
            String m64601c = m64601c();
            this.f102739c.mo64606d(mo64607e, "p", m64601c);
            if (m64601c.equals(Constants.ATTRVAL_PARENT)) {
                this.f102739c.mo64604b(mo64607e, "selfReference", t);
            }
            while (this.f102738b < this.f102737a.length()) {
                char charAt2 = this.f102737a.charAt(this.f102738b);
                if (charAt2 != ' ') {
                    if (charAt2 != ',') {
                        if (charAt2 != 'F') {
                            if (charAt2 != ']') {
                                if (charAt2 != 'a' && charAt2 != 'i') {
                                    if (charAt2 != 'k' && charAt2 != 'r') {
                                        if (charAt2 != 'm') {
                                            if (charAt2 != 'n') {
                                                if (charAt2 != 'u') {
                                                    if (charAt2 != 'v') {
                                                        switch (charAt2) {
                                                            case 'c':
                                                                break;
                                                            case 'd':
                                                                break;
                                                            case 'e':
                                                                break;
                                                            case 'f':
                                                                break;
                                                            default:
                                                                throw new IllegalStateException("Expected one of n|c|t|k|r|v|a|u, found '" + charAt2 + CloudStorageConstants.SINGLE_QUOTES);
                                                        }
                                                    }
                                                }
                                            }
                                            this.f102738b++;
                                            String m64601c2 = m64601c();
                                            if (m64601c2.startsWith("~")) {
                                                m64601c2 = "Q{http://www.w3.org/2001/XMLSchema}" + m64601c2.substring(1);
                                            }
                                            if (charAt2 == 'c' && m64601c2.endsWith("?")) {
                                                this.f102739c.mo64606d(mo64607e, "z", "1");
                                                m64601c2 = m64601c2.substring(0, m64601c2.length() - 1);
                                            }
                                            this.f102739c.mo64606d(mo64607e, "" + charAt2, m64601c2);
                                        }
                                    }
                                    this.f102738b++;
                                    m64599a('[');
                                    T m64602d = m64602d(t);
                                    m64599a(']');
                                    this.f102739c.mo64604b(mo64607e, "" + charAt2, m64602d);
                                }
                                this.f102738b++;
                                m64599a('[');
                                ArrayList arrayList = new ArrayList();
                                if (this.f102737a.charAt(this.f102738b) == ']') {
                                    this.f102738b++;
                                    this.f102739c.mo64605c(mo64607e, "" + charAt2, arrayList);
                                } else {
                                    while (true) {
                                        arrayList.add(m64602d(mo64607e));
                                        if (this.f102737a.charAt(this.f102738b) == ',') {
                                            this.f102738b++;
                                        } else {
                                            m64599a(']');
                                            this.f102739c.mo64605c(mo64607e, "" + charAt2, arrayList);
                                        }
                                    }
                                }
                            }
                        }
                        if (charAt2 == 'F') {
                            this.f102739c.mo64606d(mo64607e, "x", "1");
                        }
                        this.f102738b++;
                        m64599a('[');
                        ArrayList arrayList2 = new ArrayList();
                        ArrayList arrayList3 = new ArrayList();
                        StringBuilder sb = new StringBuilder();
                        while (true) {
                            boolean z = false;
                            while (true) {
                                String str = this.f102737a;
                                int i = this.f102738b;
                                this.f102738b = i + 1;
                                charAt = str.charAt(i);
                                if (charAt == '\\' && !z) {
                                    z = true;
                                } else if (charAt == '?' && !z) {
                                    arrayList3.add(sb.toString());
                                }
                            }
                            if (charAt == ',' && !z) {
                                arrayList2.add(sb.toString());
                                sb.setLength(0);
                            } else if (charAt != ']' || z) {
                                sb.append(charAt);
                            } else {
                                arrayList2.add(sb.toString());
                                sb.setLength(0);
                                this.f102739c.mo64603a(mo64607e, C6997f.f39671c, arrayList2);
                                this.f102739c.mo64603a(mo64607e, "optionalFields", arrayList3);
                            }
                        }
                    }
                    return mo64607e;
                }
                this.f102738b++;
            }
            return mo64607e;
        }
    }

    /* renamed from: net.sf.saxon.type.AlphaCode$c */
    /* loaded from: classes11.dex */
    public static class C18557c {

        /* renamed from: a */
        public String f102740a;

        /* renamed from: b */
        public String f102741b;

        /* renamed from: c */
        public String f102742c;

        /* renamed from: d */
        public String f102743d;

        /* renamed from: e */
        public boolean f102744e;

        /* renamed from: f */
        public List<C18557c> f102745f;

        /* renamed from: g */
        public C18557c f102746g;

        /* renamed from: h */
        public C18557c f102747h;

        /* renamed from: i */
        public C18557c f102748i;

        /* renamed from: j */
        public List<C18557c> f102749j;

        /* renamed from: k */
        public C18557c f102750k;

        /* renamed from: l */
        public int f102751l;

        /* renamed from: m */
        public C18557c[] f102752m;

        /* renamed from: n */
        public List<String> f102753n;

        /* renamed from: o */
        public Set<String> f102754o;

        /* renamed from: p */
        public boolean f102755p;

        /* renamed from: q */
        public C18557c f102756q;

        public C18557c() {
        }
    }

    /* renamed from: net.sf.saxon.type.AlphaCode$d */
    /* loaded from: classes11.dex */
    public static class C18558d implements InterfaceC18559e<DictionaryMap> {
        public C18558d() {
        }

        @Override // net.p110sf.saxon.type.AlphaCode.InterfaceC18559e
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public DictionaryMap mo64607e() {
            return new DictionaryMap();
        }

        @Override // net.p110sf.saxon.type.AlphaCode.InterfaceC18559e
        /* renamed from: g, reason: merged with bridge method [inline-methods] */
        public void mo64603a(DictionaryMap dictionaryMap, String str, List<String> list) {
            ArrayList arrayList = new ArrayList();
            Iterator<String> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(new StringValue(it2.next()));
            }
            dictionaryMap.initialPut(str, new SequenceExtent.C18571Of(arrayList));
        }

        @Override // net.p110sf.saxon.type.AlphaCode.InterfaceC18559e
        /* renamed from: h, reason: merged with bridge method [inline-methods] */
        public void mo64605c(DictionaryMap dictionaryMap, String str, List<DictionaryMap> list) {
            ArrayList arrayList = new ArrayList();
            Iterator<DictionaryMap> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next());
            }
            dictionaryMap.initialPut(str, new SimpleArrayItem(arrayList));
        }

        @Override // net.p110sf.saxon.type.AlphaCode.InterfaceC18559e
        /* renamed from: i, reason: merged with bridge method [inline-methods] */
        public void mo64606d(DictionaryMap dictionaryMap, String str, String str2) {
            dictionaryMap.initialPut(str, new StringValue(str2));
        }

        @Override // net.p110sf.saxon.type.AlphaCode.InterfaceC18559e
        /* renamed from: j, reason: merged with bridge method [inline-methods] */
        public void mo64604b(DictionaryMap dictionaryMap, String str, DictionaryMap dictionaryMap2) {
            dictionaryMap.initialPut(str, dictionaryMap2);
        }
    }

    /* renamed from: net.sf.saxon.type.AlphaCode$e */
    /* loaded from: classes11.dex */
    public interface InterfaceC18559e<T> {
        /* renamed from: a */
        void mo64603a(T t, String str, List<String> list);

        /* renamed from: b */
        void mo64604b(T t, String str, T t2);

        /* renamed from: c */
        void mo64605c(T t, String str, List<T> list);

        /* renamed from: d */
        void mo64606d(T t, String str, String str2);

        /* renamed from: e */
        T mo64607e();
    }

    /* renamed from: net.sf.saxon.type.AlphaCode$f */
    /* loaded from: classes11.dex */
    public static class C18560f implements InterfaceC18559e<C18557c> {
        public C18560f() {
        }

        @Override // net.p110sf.saxon.type.AlphaCode.InterfaceC18559e
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public C18557c mo64607e() {
            return new C18557c();
        }

        @Override // net.p110sf.saxon.type.AlphaCode.InterfaceC18559e
        /* renamed from: g, reason: merged with bridge method [inline-methods] */
        public void mo64603a(C18557c c18557c, String str, List<String> list) {
            if (str.equals(C6997f.f39671c)) {
                c18557c.f102753n = list;
                return;
            }
            if (str.equals("optionalFields")) {
                HashSet hashSet = new HashSet();
                c18557c.f102754o = hashSet;
                hashSet.addAll(list);
            } else {
                throw new IllegalArgumentException("Bad alphacode component " + str);
            }
        }

        @Override // net.p110sf.saxon.type.AlphaCode.InterfaceC18559e
        /* renamed from: h, reason: merged with bridge method [inline-methods] */
        public void mo64605c(C18557c c18557c, String str, List<C18557c> list) {
            str.hashCode();
            char c = 65535;
            switch (str.hashCode()) {
                case 97:
                    if (str.equals("a")) {
                        c = 0;
                        break;
                    }
                    break;
                case 100:
                    if (str.equals("d")) {
                        c = 1;
                        break;
                    }
                    break;
                case 105:
                    if (str.equals("i")) {
                        c = 2;
                        break;
                    }
                    break;
                case 109:
                    if (str.equals("m")) {
                        c = 3;
                        break;
                    }
                    break;
                case 117:
                    if (str.equals("u")) {
                        c = 4;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    c18557c.f102749j = list;
                    return;
                case 1:
                    c18557c.f102752m = (C18557c[]) list.toArray(new C18557c[0]);
                    c18557c.f102751l = 24;
                    return;
                case 2:
                    c18557c.f102752m = (C18557c[]) list.toArray(new C18557c[0]);
                    c18557c.f102751l = 23;
                    return;
                case 3:
                    c18557c.f102745f = list;
                    return;
                case 4:
                    c18557c.f102752m = (C18557c[]) list.toArray(new C18557c[0]);
                    c18557c.f102751l = 1;
                    return;
                default:
                    throw new IllegalArgumentException("Bad alphacode component " + str);
            }
        }

        @Override // net.p110sf.saxon.type.AlphaCode.InterfaceC18559e
        /* renamed from: i, reason: merged with bridge method [inline-methods] */
        public void mo64606d(C18557c c18557c, String str, String str2) {
            str.hashCode();
            char c = 65535;
            switch (str.hashCode()) {
                case 99:
                    if (str.equals("c")) {
                        c = 0;
                        break;
                    }
                    break;
                case 110:
                    if (str.equals(GoogleApiAvailabilityLight.f29016b)) {
                        c = 1;
                        break;
                    }
                    break;
                case 111:
                    if (str.equals(C4921e.f26528e)) {
                        c = 2;
                        break;
                    }
                    break;
                case 112:
                    if (str.equals("p")) {
                        c = 3;
                        break;
                    }
                    break;
                case 120:
                    if (str.equals("x")) {
                        c = 4;
                        break;
                    }
                    break;
                case 122:
                    if (str.equals("z")) {
                        c = 5;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    c18557c.f102743d = str2;
                    return;
                case 1:
                    c18557c.f102742c = str2;
                    return;
                case 2:
                    c18557c.f102740a = str2;
                    return;
                case 3:
                    c18557c.f102741b = str2;
                    return;
                case 4:
                    c18557c.f102755p = true;
                    return;
                case 5:
                    c18557c.f102744e = true;
                    return;
                default:
                    throw new IllegalArgumentException("Bad alphacode component " + str);
            }
        }

        @Override // net.p110sf.saxon.type.AlphaCode.InterfaceC18559e
        /* renamed from: j, reason: merged with bridge method [inline-methods] */
        public void mo64604b(C18557c c18557c, String str, C18557c c18557c2) {
            str.hashCode();
            char c = 65535;
            switch (str.hashCode()) {
                case -1812069025:
                    if (str.equals("selfReference")) {
                        c = 0;
                        break;
                    }
                    break;
                case 101:
                    if (str.equals("e")) {
                        c = 1;
                        break;
                    }
                    break;
                case 107:
                    if (str.equals(C4921e.f26537n)) {
                        c = 2;
                        break;
                    }
                    break;
                case 114:
                    if (str.equals("r")) {
                        c = 3;
                        break;
                    }
                    break;
                case 118:
                    if (str.equals("v")) {
                        c = 4;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    c18557c.f102756q = c18557c2;
                    return;
                case 1:
                    c18557c.f102750k = c18557c2;
                    return;
                case 2:
                    c18557c.f102746g = c18557c2;
                    return;
                case 3:
                    c18557c.f102748i = c18557c2;
                    return;
                case 4:
                    c18557c.f102747h = c18557c2;
                    return;
                default:
                    throw new IllegalArgumentException("Bad alphacode component " + str);
            }
        }
    }

    /* renamed from: a */
    public static String m64594a(String str) {
        if (!str.startsWith("Q{http://www.w3.org/2001/XMLSchema}")) {
            return str;
        }
        return "~" + str.substring(35);
    }

    /* renamed from: b */
    public static void m64595b(C18557c c18557c, boolean z, StringBuilder sb) {
        if (z) {
            sb.append(c18557c.f102740a);
        }
        if (c18557c.f102756q != null) {
            sb.append(Constants.ATTRVAL_PARENT);
            return;
        }
        sb.append(c18557c.f102741b);
        if (c18557c.f102742c != null) {
            sb.append(" n");
            sb.append(m64594a(c18557c.f102742c));
        }
        if (c18557c.f102743d != null) {
            sb.append(" c");
            sb.append(m64594a(c18557c.f102743d));
            if (c18557c.f102744e) {
                sb.append("?");
            }
        }
        if (c18557c.f102746g != null) {
            sb.append(" k[");
            m64595b(c18557c.f102746g, false, sb);
            sb.append(IteratorUtils.f104924b);
        }
        boolean z2 = true;
        if (c18557c.f102747h != null) {
            sb.append(" v[");
            m64595b(c18557c.f102747h, true, sb);
            sb.append(IteratorUtils.f104924b);
        }
        if (c18557c.f102748i != null) {
            sb.append(" r[");
            m64595b(c18557c.f102748i, true, sb);
            sb.append(IteratorUtils.f104924b);
        }
        if (c18557c.f102749j != null) {
            sb.append(" a[");
            boolean z3 = true;
            for (C18557c c18557c2 : c18557c.f102749j) {
                if (z3) {
                    z3 = false;
                } else {
                    sb.append(",");
                }
                m64595b(c18557c2, true, sb);
            }
            sb.append(IteratorUtils.f104924b);
        }
        if (c18557c.f102745f != null) {
            sb.append(" m[");
            boolean z4 = true;
            for (C18557c c18557c3 : c18557c.f102745f) {
                if (z4) {
                    z4 = false;
                } else {
                    sb.append(",");
                }
                m64595b(c18557c3, false, sb);
            }
            sb.append(IteratorUtils.f104924b);
        }
        if (c18557c.f102750k != null) {
            sb.append(" e[");
            m64595b(c18557c.f102750k, false, sb);
            sb.append(IteratorUtils.f104924b);
        }
        if (c18557c.f102752m != null) {
            int i = c18557c.f102751l;
            String str = i == 23 ? "i" : i == 1 ? "u" : "d";
            sb.append(" ");
            sb.append(str);
            sb.append(IteratorUtils.f104923a);
            for (int i2 = 0; i2 < c18557c.f102752m.length; i2++) {
                if (i2 != 0) {
                    sb.append(",");
                }
                m64595b(c18557c.f102752m[i2], false, sb);
            }
            sb.append(IteratorUtils.f104924b);
        }
        if (c18557c.f102753n != null) {
            sb.append(c18557c.f102755p ? " F[" : " f[");
            for (String str2 : c18557c.f102753n) {
                if (z2) {
                    z2 = false;
                } else {
                    sb.append(",");
                }
                sb.append(escapeNCName(str2));
                if (c18557c.f102754o.contains(str2)) {
                    sb.append('?');
                }
            }
            sb.append(IteratorUtils.f104924b);
        }
    }

    /* renamed from: c */
    public static C18557c m64596c(ItemType itemType) {
        C18557c c18557c = new C18557c();
        c18557c.f102741b = itemType.getBasicAlphaCode();
        c18557c.f102740a = "1";
        if (itemType instanceof AtomicType) {
            AtomicType atomicType = (AtomicType) itemType;
            if (!atomicType.isBuiltInType()) {
                c18557c.f102742c = atomicType.getEQName();
                return c18557c;
            }
        }
        if (itemType instanceof UnionType) {
            StructuredQName typeName = ((UnionType) itemType).getTypeName();
            if (typeName.getURI().equals("http://www.w3.org/2001/XMLSchema")) {
                c18557c.f102742c = "~" + typeName.getLocalPart();
            } else if (typeName.getURI().equals(NamespaceConstant.ANONYMOUS)) {
                try {
                    ArrayList arrayList = new ArrayList();
                    Iterator<? extends PlainType> it2 = ((UnionType) itemType).getPlainMemberTypes().iterator();
                    while (it2.hasNext()) {
                        arrayList.add(m64596c(it2.next()));
                    }
                    c18557c.f102745f = arrayList;
                } catch (MissingComponentException unused) {
                }
            } else {
                c18557c.f102742c = typeName.getEQName();
            }
        } else if (itemType instanceof NameTest) {
            c18557c.f102742c = ((NameTest) itemType).getMatchingNodeName().getEQName();
        } else if (itemType instanceof SchemaNodeTest) {
            c18557c.f102742c = ((SchemaNodeTest) itemType).getNodeName().getEQName();
        } else if (itemType instanceof LocalNameTest) {
            c18557c.f102742c = "*:" + ((LocalNameTest) itemType).getLocalName();
        } else if (itemType instanceof NamespaceTest) {
            c18557c.f102742c = "Q{" + ((NamespaceTest) itemType).getNamespaceURI() + "}*";
        } else {
            int i = 0;
            if (itemType instanceof CombinedNodeTest) {
                CombinedNodeTest combinedNodeTest = (CombinedNodeTest) itemType;
                String contentTypeForAlphaCode = combinedNodeTest.getContentTypeForAlphaCode();
                if (contentTypeForAlphaCode != null) {
                    if (!contentTypeForAlphaCode.startsWith("Q{http://ns.saxonica.com/anonymous-type")) {
                        c18557c.f102743d = contentTypeForAlphaCode;
                    }
                    c18557c.f102742c = combinedNodeTest.getMatchingNodeName().getEQName();
                    c18557c.f102744e = combinedNodeTest.isNillable();
                } else {
                    c18557c.f102751l = combinedNodeTest.getOperator();
                    C18557c[] c18557cArr = new C18557c[2];
                    c18557c.f102752m = c18557cArr;
                    c18557cArr[0] = m64596c(combinedNodeTest.getOperand(0));
                    c18557c.f102752m[1] = m64596c(combinedNodeTest.getOperand(1));
                }
            } else if (itemType instanceof MultipleNodeKindTest) {
                c18557c.f102751l = 1;
                Set<PrimitiveUType> decompose = itemType.getUType().decompose();
                c18557c.f102752m = new C18557c[decompose.size()];
                Iterator<PrimitiveUType> it3 = decompose.iterator();
                while (it3.hasNext()) {
                    c18557c.f102752m[i] = m64596c(it3.next().toItemType());
                    i++;
                }
            } else if (itemType instanceof ContentTypeTest) {
                c18557c.f102743d = ((ContentTypeTest) itemType).getContentType().getEQName();
            } else if (itemType instanceof DocumentNodeTest) {
                c18557c.f102750k = m64596c(((DocumentNodeTest) itemType).getElementTest());
            } else if (itemType instanceof FunctionItemType) {
                if (itemType instanceof ArrayItemType) {
                    SequenceType memberType = ((ArrayItemType) itemType).getMemberType();
                    if (memberType != SequenceType.ANY_SEQUENCE) {
                        c18557c.f102747h = m64597d(memberType);
                    }
                } else if (itemType instanceof RecordTest) {
                    RecordTest recordTest = (RecordTest) itemType;
                    c18557c.f102755p = recordTest.isExtensible();
                    c18557c.f102754o = new HashSet();
                    c18557c.f102753n = new ArrayList();
                    c18557c.f102749j = new ArrayList();
                    for (String str : recordTest.getFieldNames()) {
                        c18557c.f102753n.add(str);
                        SequenceType fieldType = recordTest.getFieldType(str);
                        if (fieldType.getPrimaryType() instanceof SelfReferenceRecordTest) {
                            C18557c c18557c2 = new C18557c();
                            c18557c2.f102756q = c18557c;
                            c18557c2.f102740a = fieldType.getCardinality() == 16384 ? "1" : Cardinality.getOccurrenceIndicator(fieldType.getCardinality());
                            c18557c.f102749j.add(c18557c2);
                        } else {
                            c18557c.f102749j.add(m64597d(recordTest.getFieldType(str)));
                        }
                        if (recordTest.isOptionalField(str)) {
                            c18557c.f102754o.add(str);
                        }
                    }
                } else if (itemType instanceof MapType) {
                    MapType mapType = (MapType) itemType;
                    AtomicType keyType = mapType.getKeyType();
                    if (keyType != BuiltInAtomicType.ANY_ATOMIC) {
                        c18557c.f102746g = m64596c(keyType);
                    }
                    SequenceType valueType = mapType.getValueType();
                    if (valueType != SequenceType.ANY_SEQUENCE) {
                        c18557c.f102747h = m64597d(valueType);
                    }
                } else {
                    FunctionItemType functionItemType = (FunctionItemType) itemType;
                    SequenceType resultType = functionItemType.getResultType();
                    if (resultType != SequenceType.ANY_SEQUENCE) {
                        c18557c.f102748i = m64597d(resultType);
                    }
                    SequenceType[] argumentTypes = functionItemType.getArgumentTypes();
                    if (argumentTypes != null) {
                        ArrayList arrayList2 = new ArrayList();
                        int length = argumentTypes.length;
                        while (i < length) {
                            arrayList2.add(m64597d(argumentTypes[i]));
                            i++;
                        }
                        c18557c.f102749j = arrayList2;
                    }
                }
            } else if (itemType instanceof ExternalObjectType) {
                c18557c.f102742c = ((ExternalObjectType) itemType).getName();
            }
        }
        return c18557c;
    }

    /* renamed from: d */
    public static C18557c m64597d(SequenceType sequenceType) {
        C18557c m64596c = m64596c(sequenceType.getPrimaryType());
        if (sequenceType.getCardinality() != 16384) {
            m64596c.f102740a = Cardinality.getOccurrenceIndicator(sequenceType.getCardinality());
        }
        return m64596c;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0295  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x02bb  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0202  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static net.p110sf.saxon.value.SequenceType m64598e(net.p110sf.saxon.type.AlphaCode.C18557c r21, net.p110sf.saxon.Configuration r22) {
        /*
            Method dump skipped, instructions count: 1262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.type.AlphaCode.m64598e(net.sf.saxon.type.AlphaCode$c, net.sf.saxon.Configuration):net.sf.saxon.value.SequenceType");
    }

    public static String escapeNCName(String str) {
        if (NameChecker.isValidNCName(str)) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt >= 128 || NameChecker.isNCNameChar(charAt)) {
                sb.append(charAt);
            } else {
                sb.append("\\");
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    public static String fromItemType(ItemType itemType) {
        C18557c m64596c = m64596c(itemType);
        StringBuilder sb = new StringBuilder();
        m64595b(m64596c, false, sb);
        return sb.toString().trim();
    }

    public static String fromLexicalSequenceType(XPathContext xPathContext, String str) throws XPathException {
        XPathParser newExpressionParser = xPathContext.getConfiguration().newExpressionParser("XP", false, 31);
        IndependentContext independentContext = new IndependentContext(xPathContext.getConfiguration());
        independentContext.declareNamespace("xs", "http://www.w3.org/2001/XMLSchema");
        independentContext.declareNamespace("fn", "http://www.w3.org/2005/xpath-functions");
        return fromSequenceType(newExpressionParser.parseSequenceType(str, independentContext));
    }

    public static String fromSequenceType(SequenceType sequenceType) {
        if (sequenceType == SequenceType.EMPTY_SEQUENCE) {
            return "0";
        }
        String fromItemType = fromItemType(sequenceType.getPrimaryType());
        if (sequenceType.getCardinality() == 16384) {
            return "1" + fromItemType;
        }
        return Cardinality.getOccurrenceIndicator(sequenceType.getCardinality()) + fromItemType;
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00e7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0103 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x011c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x012f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0042 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String fromXdmMap(net.p110sf.saxon.ma.map.MapItem r11) {
        /*
            Method dump skipped, instructions count: 438
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.type.AlphaCode.fromXdmMap(net.sf.saxon.ma.map.MapItem):java.lang.String");
    }

    public static ItemType toItemType(String str, Configuration configuration) {
        SequenceType sequenceType = toSequenceType(str, configuration);
        if (sequenceType.getCardinality() == 16384) {
            return sequenceType.getPrimaryType();
        }
        throw new IllegalArgumentException("Supplied alphacode has a cardinality other than 1");
    }

    public static SequenceType toSequenceType(String str, Configuration configuration) {
        return m64598e((C18557c) new C18556b(str, new C18560f()).m64602d(null), configuration);
    }

    public static MapItem toXdmMap(String str) {
        return (MapItem) new C18556b(str, new C18558d()).m64602d(null);
    }
}
