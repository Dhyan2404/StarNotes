package org.apache.xmlbeans;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.function.Predicate;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.QNameSetSpecification;

/* loaded from: classes13.dex */
public final class QNameSet implements QNameSetSpecification, Serializable {
    private static final long serialVersionUID = 1;
    private final Set<QName> _excludedQNames;
    private final Set<QName> _includedQNames;
    private final Set<String> _includedURIs;
    private final boolean _inverted;
    public static final QNameSet EMPTY = new QNameSet(null, Collections.emptySet(), Collections.emptySet(), Collections.emptySet());
    public static final QNameSet ALL = new QNameSet(Collections.emptySet(), null, Collections.emptySet(), Collections.emptySet());
    public static final QNameSet LOCAL = new QNameSet(null, Collections.singleton(""), Collections.emptySet(), Collections.emptySet());
    public static final QNameSet NONLOCAL = new QNameSet(Collections.singleton(""), null, Collections.emptySet(), Collections.emptySet());

    private QNameSet(Set<String> set, Set<String> set2, Set<QName> set3, Set<QName> set4) {
        if (set2 != null && set == null) {
            this._inverted = false;
            this._includedURIs = set2;
            this._excludedQNames = set3;
            this._includedQNames = set4;
            return;
        }
        if (set == null || set2 != null) {
            throw new IllegalArgumentException("Exactly one of excludedURIs and includedURIs must be null");
        }
        this._inverted = true;
        this._includedURIs = set;
        this._excludedQNames = set4;
        this._includedQNames = set3;
    }

    public static QNameSet forArray(QName[] qNameArr) {
        if (qNameArr != null) {
            return new QNameSet(null, Collections.emptySet(), Collections.emptySet(), new HashSet(Arrays.asList(qNameArr)));
        }
        throw new IllegalArgumentException("includedQNames cannot be null");
    }

    public static QNameSet forSets(Set<String> set, Set<String> set2, Set<QName> set3, Set<QName> set4) {
        if ((set != null) != (set2 != null)) {
            return (set == null && set2.isEmpty() && set4.isEmpty()) ? EMPTY : (set2 == null && set.isEmpty() && set3.isEmpty()) ? ALL : (set == null && set2.size() == 1 && set2.contains("") && set4.isEmpty() && set3.isEmpty()) ? LOCAL : (set2 == null && set.size() == 1 && set.contains("") && set3.isEmpty() && set4.isEmpty()) ? NONLOCAL : new QNameSet(minSetCopy(set), minSetCopy(set2), minSetCopy(set3), minSetCopy(set4));
        }
        throw new IllegalArgumentException("Exactly one of excludedURIs and includedURIs must be null");
    }

    public static QNameSet forSpecification(QNameSetSpecification qNameSetSpecification) {
        return qNameSetSpecification instanceof QNameSet ? (QNameSet) qNameSetSpecification : forSets(qNameSetSpecification.excludedURIs(), qNameSetSpecification.includedURIs(), qNameSetSpecification.excludedQNamesInIncludedURIs(), qNameSetSpecification.includedQNamesInExcludedURIs());
    }

    public static QNameSet forWildcardNamespaceString(String str, String str2) {
        return forSpecification(new QNameSetBuilder(str, str2));
    }

    private boolean isDisjointImpl(final QNameSetSpecification qNameSetSpecification, final QNameSetSpecification qNameSetSpecification2) {
        Set<String> includedURIs = qNameSetSpecification.includedURIs();
        Set<String> includedURIs2 = qNameSetSpecification2.includedURIs();
        if (includedURIs2 != null) {
            if (!Collections.disjoint(includedURIs, includedURIs2)) {
                return false;
            }
        } else if (!qNameSetSpecification2.excludedURIs().containsAll(includedURIs)) {
            return false;
        }
        return (qNameSetSpecification.includedQNamesInExcludedURIs().stream().anyMatch(new Predicate() { // from class: com.sunia.HTREnginev2.gal
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return QNameSetSpecification.this.contains((QName) obj);
            }
        }) || qNameSetSpecification2.includedQNamesInExcludedURIs().stream().anyMatch(new Predicate() { // from class: com.sunia.HTREnginev2.gal
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return QNameSetSpecification.this.contains((QName) obj);
            }
        })) ? false : true;
    }

    private static <T> Set<T> minSetCopy(Set<T> set) {
        if (set == null) {
            return null;
        }
        return set.isEmpty() ? Collections.emptySet() : set.size() == 1 ? Collections.singleton(set.iterator().next()) : new HashSet(set);
    }

    private static String nsFromName(QName qName) {
        String namespaceURI = qName.getNamespaceURI();
        return namespaceURI == null ? "" : namespaceURI;
    }

    private String prettyQName(QName qName) {
        if (qName.getNamespaceURI() == null) {
            return qName.getLocalPart();
        }
        return qName.getLocalPart() + "@" + qName.getNamespaceURI();
    }

    public static QNameSet singleton(QName qName) {
        return new QNameSet(null, Collections.emptySet(), Collections.emptySet(), Collections.singleton(qName));
    }

    @Override // org.apache.xmlbeans.QNameSetSpecification
    public boolean contains(QName qName) {
        return this._inverted ^ (this._includedURIs.contains(nsFromName(qName)) ? !this._excludedQNames.contains(qName) : this._includedQNames.contains(qName));
    }

    @Override // org.apache.xmlbeans.QNameSetSpecification
    public boolean containsAll(QNameSetSpecification qNameSetSpecification) {
        if (this._inverted || qNameSetSpecification.excludedURIs() == null) {
            return inverse().isDisjoint(qNameSetSpecification);
        }
        return false;
    }

    @Override // org.apache.xmlbeans.QNameSetSpecification
    public Set<QName> excludedQNamesInIncludedURIs() {
        return Collections.unmodifiableSet(this._inverted ? this._includedQNames : this._excludedQNames);
    }

    @Override // org.apache.xmlbeans.QNameSetSpecification
    public Set<String> excludedURIs() {
        if (this._inverted) {
            return Collections.unmodifiableSet(this._includedURIs);
        }
        return null;
    }

    @Override // org.apache.xmlbeans.QNameSetSpecification
    public Set<QName> includedQNamesInExcludedURIs() {
        return Collections.unmodifiableSet(this._inverted ? this._excludedQNames : this._includedQNames);
    }

    @Override // org.apache.xmlbeans.QNameSetSpecification
    public Set<String> includedURIs() {
        if (this._inverted) {
            return null;
        }
        return this._includedURIs;
    }

    @Override // org.apache.xmlbeans.QNameSetSpecification
    public QNameSet intersect(QNameSetSpecification qNameSetSpecification) {
        QNameSetBuilder qNameSetBuilder = new QNameSetBuilder(this);
        qNameSetBuilder.restrict(qNameSetSpecification);
        return qNameSetBuilder.toQNameSet();
    }

    @Override // org.apache.xmlbeans.QNameSetSpecification
    public QNameSet inverse() {
        QNameSet qNameSet = EMPTY;
        if (this == qNameSet) {
            return ALL;
        }
        if (this == ALL) {
            return qNameSet;
        }
        QNameSet qNameSet2 = LOCAL;
        return this == qNameSet2 ? NONLOCAL : this == NONLOCAL ? qNameSet2 : new QNameSet(includedURIs(), excludedURIs(), includedQNamesInExcludedURIs(), excludedQNamesInIncludedURIs());
    }

    @Override // org.apache.xmlbeans.QNameSetSpecification
    public boolean isAll() {
        return this._inverted && this._includedURIs.isEmpty() && this._includedQNames.isEmpty();
    }

    @Override // org.apache.xmlbeans.QNameSetSpecification
    public boolean isDisjoint(QNameSetSpecification qNameSetSpecification) {
        if (!this._inverted || qNameSetSpecification.excludedURIs() == null) {
            return this._inverted ? isDisjointImpl(qNameSetSpecification, this) : isDisjointImpl(this, qNameSetSpecification);
        }
        return false;
    }

    @Override // org.apache.xmlbeans.QNameSetSpecification
    public boolean isEmpty() {
        return !this._inverted && this._includedURIs.isEmpty() && this._includedQNames.isEmpty();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("QNameSet");
        sb.append(this._inverted ? "-(" : "+(");
        for (String str : this._includedURIs) {
            sb.append("+*@");
            sb.append(str);
            sb.append(", ");
        }
        for (QName qName : this._excludedQNames) {
            sb.append("-");
            sb.append(prettyQName(qName));
            sb.append(", ");
        }
        for (QName qName2 : this._includedQNames) {
            sb.append("+");
            sb.append(prettyQName(qName2));
            sb.append(", ");
        }
        int lastIndexOf = sb.lastIndexOf(", ");
        if (lastIndexOf > 0) {
            sb.setLength(lastIndexOf);
        }
        sb.append(')');
        return sb.toString();
    }

    @Override // org.apache.xmlbeans.QNameSetSpecification
    public QNameSet union(QNameSetSpecification qNameSetSpecification) {
        QNameSetBuilder qNameSetBuilder = new QNameSetBuilder(this);
        qNameSetBuilder.addAll(qNameSetSpecification);
        return qNameSetBuilder.toQNameSet();
    }
}
