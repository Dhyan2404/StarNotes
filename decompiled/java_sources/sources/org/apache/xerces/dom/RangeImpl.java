package org.apache.xerces.dom;

import java.util.ArrayList;
import org.w3c.dom.CharacterData;
import org.w3c.dom.DOMException;
import org.w3c.dom.DocumentFragment;
import org.w3c.dom.Node;
import org.w3c.dom.ranges.Range;
import org.w3c.dom.ranges.RangeException;

/* loaded from: classes13.dex */
public class RangeImpl implements Range {

    /* renamed from: l */
    public static final int f111902l = 1;

    /* renamed from: m */
    public static final int f111903m = 2;

    /* renamed from: n */
    public static final int f111904n = 3;

    /* renamed from: a */
    public DocumentImpl f111905a;

    /* renamed from: b */
    public Node f111906b;

    /* renamed from: c */
    public Node f111907c;

    /* renamed from: g */
    public Node f111911g = null;

    /* renamed from: h */
    public Node f111912h = null;

    /* renamed from: i */
    public Node f111913i = null;

    /* renamed from: j */
    public boolean f111914j = false;

    /* renamed from: k */
    public Node f111915k = null;

    /* renamed from: d */
    public int f111908d = 0;

    /* renamed from: e */
    public int f111909e = 0;

    /* renamed from: f */
    public boolean f111910f = false;

    public RangeImpl(DocumentImpl documentImpl) {
        this.f111905a = documentImpl;
        this.f111906b = documentImpl;
        this.f111907c = documentImpl;
    }

    /* renamed from: A */
    public final Node m69765A(Node node, int i) {
        if (i == 1 || i == 2) {
            return node.cloneNode(false);
        }
        return null;
    }

    /* renamed from: B */
    public final Node m69766B(Node node, int i) {
        Node m69771d = m69771d(this.f111907c, this.f111909e - 1);
        boolean z = m69771d != this.f111907c;
        if (m69771d == node) {
            return m69793z(m69771d, z, false, i);
        }
        Node parentNode = m69771d.getParentNode();
        Node m69793z = m69793z(parentNode, false, false, i);
        while (parentNode != null) {
            while (m69771d != null) {
                Node previousSibling = m69771d.getPreviousSibling();
                Node m69793z2 = m69793z(m69771d, z, false, i);
                if (i != 3) {
                    m69793z.insertBefore(m69793z2, m69793z.getFirstChild());
                }
                z = true;
                m69771d = previousSibling;
            }
            if (parentNode == node) {
                return m69793z;
            }
            m69771d = parentNode.getPreviousSibling();
            parentNode = parentNode.getParentNode();
            Node m69793z3 = m69793z(parentNode, false, false, i);
            if (i != 3) {
                m69793z3.appendChild(m69793z);
            }
            m69793z = m69793z3;
        }
        return null;
    }

    /* renamed from: C */
    public final DocumentFragment m69767C(int i) {
        DocumentFragment createDocumentFragment = i != 3 ? this.f111905a.createDocumentFragment() : null;
        if (this.f111908d == this.f111909e) {
            return createDocumentFragment;
        }
        short nodeType = this.f111906b.getNodeType();
        if (nodeType == 3 || nodeType == 4 || nodeType == 8 || nodeType == 7) {
            String substring = this.f111906b.getNodeValue().substring(this.f111908d, this.f111909e);
            if (i != 2) {
                CharacterDataImpl characterDataImpl = (CharacterDataImpl) this.f111906b;
                int i2 = this.f111908d;
                characterDataImpl.deleteData(i2, this.f111909e - i2);
                collapse(true);
            }
            if (i == 3) {
                return null;
            }
            createDocumentFragment.appendChild(nodeType == 3 ? this.f111905a.createTextNode(substring) : nodeType == 4 ? this.f111905a.createCDATASection(substring) : nodeType == 8 ? this.f111905a.createComment(substring) : this.f111905a.createProcessingInstruction(this.f111906b.getNodeName(), substring));
            return createDocumentFragment;
        }
        Node m69771d = m69771d(this.f111906b, this.f111908d);
        int i3 = this.f111909e - this.f111908d;
        while (i3 > 0) {
            Node nextSibling = m69771d.getNextSibling();
            Node m69791x = m69791x(m69771d, i);
            if (createDocumentFragment != null) {
                createDocumentFragment.appendChild(m69791x);
            }
            i3--;
            m69771d = nextSibling;
        }
        if (i != 2) {
            collapse(true);
        }
        return createDocumentFragment;
    }

    /* renamed from: a */
    public void m69768a(Node node, int i) throws DOMException {
        if (i < 0) {
            throw new DOMException((short) 1, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INDEX_SIZE_ERR", null));
        }
        short nodeType = node.getNodeType();
        if (nodeType == 3 || nodeType == 4 || nodeType == 8 || nodeType == 7) {
            if (i > node.getNodeValue().length()) {
                throw new DOMException((short) 1, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INDEX_SIZE_ERR", null));
            }
        } else if (i > node.getChildNodes().getLength()) {
            throw new DOMException((short) 1, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INDEX_SIZE_ERR", null));
        }
    }

    /* renamed from: b */
    public void m69769b(CharacterData characterData, int i, int i2) {
        this.f111912h = characterData;
        characterData.deleteData(i, i2);
        this.f111912h = null;
    }

    /* renamed from: c */
    public final Node m69770c(Node node) {
        if (node == null) {
            return null;
        }
        while (node.getParentNode() != null) {
            node = node.getParentNode();
        }
        return node;
    }

    @Override // org.w3c.dom.ranges.Range
    public DocumentFragment cloneContents() throws DOMException {
        return m69790w(2);
    }

    @Override // org.w3c.dom.ranges.Range
    public Range cloneRange() {
        if (this.f111910f) {
            throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
        }
        Range createRange = this.f111905a.createRange();
        createRange.setStart(this.f111906b, this.f111908d);
        createRange.setEnd(this.f111907c, this.f111909e);
        return createRange;
    }

    @Override // org.w3c.dom.ranges.Range
    public void collapse(boolean z) {
        if (this.f111910f) {
            throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
        }
        if (z) {
            this.f111907c = this.f111906b;
            this.f111909e = this.f111908d;
        } else {
            this.f111906b = this.f111907c;
            this.f111908d = this.f111909e;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009e  */
    @Override // org.w3c.dom.ranges.Range
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public short compareBoundaryPoints(short r10, org.w3c.dom.ranges.Range r11) throws org.w3c.dom.DOMException {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.dom.RangeImpl.compareBoundaryPoints(short, org.w3c.dom.ranges.Range):short");
    }

    /* renamed from: d */
    public final Node m69771d(Node node, int i) {
        if (node.getNodeType() == 3 || i < 0) {
            return node;
        }
        Node firstChild = node.getFirstChild();
        while (firstChild != null && i > 0) {
            i--;
            firstChild = firstChild.getNextSibling();
        }
        return firstChild != null ? firstChild : node;
    }

    @Override // org.w3c.dom.ranges.Range
    public void deleteContents() throws DOMException {
        m69790w(3);
    }

    @Override // org.w3c.dom.ranges.Range
    public void detach() {
        if (this.f111910f) {
            throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
        }
        this.f111910f = true;
        this.f111905a.removeRange(this);
    }

    /* renamed from: e */
    public final boolean m69772e(Node node) {
        if (node == null) {
            return false;
        }
        short nodeType = m69770c(node).getNodeType();
        return nodeType == 2 || nodeType == 9 || nodeType == 11;
    }

    @Override // org.w3c.dom.ranges.Range
    public DocumentFragment extractContents() throws DOMException {
        return m69790w(1);
    }

    /* renamed from: f */
    public int m69773f(Node node, Node node2) {
        if (node.getParentNode() != node2) {
            return -1;
        }
        int i = 0;
        for (Node firstChild = node2.getFirstChild(); firstChild != node; firstChild = firstChild.getNextSibling()) {
            i++;
        }
        return i;
    }

    /* renamed from: g */
    public void m69774g(CharacterData characterData, int i, String str) {
        this.f111911g = characterData;
        characterData.insertData(i, str);
        this.f111911g = null;
    }

    @Override // org.w3c.dom.ranges.Range
    public boolean getCollapsed() {
        if (this.f111910f) {
            throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
        }
        return this.f111906b == this.f111907c && this.f111908d == this.f111909e;
    }

    @Override // org.w3c.dom.ranges.Range
    public Node getCommonAncestorContainer() {
        Object obj = null;
        if (this.f111910f) {
            throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
        }
        ArrayList arrayList = new ArrayList();
        for (Node node = this.f111906b; node != null; node = node.getParentNode()) {
            arrayList.add(node);
        }
        ArrayList arrayList2 = new ArrayList();
        for (Node node2 = this.f111907c; node2 != null; node2 = node2.getParentNode()) {
            arrayList2.add(node2);
        }
        int size = arrayList.size() - 1;
        for (int size2 = arrayList2.size() - 1; size >= 0 && size2 >= 0 && arrayList.get(size) == arrayList2.get(size2); size2--) {
            obj = arrayList.get(size);
            size--;
        }
        return (Node) obj;
    }

    @Override // org.w3c.dom.ranges.Range
    public Node getEndContainer() {
        if (this.f111910f) {
            throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
        }
        return this.f111907c;
    }

    @Override // org.w3c.dom.ranges.Range
    public int getEndOffset() {
        if (this.f111910f) {
            throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
        }
        return this.f111909e;
    }

    @Override // org.w3c.dom.ranges.Range
    public Node getStartContainer() {
        if (this.f111910f) {
            throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
        }
        return this.f111906b;
    }

    @Override // org.w3c.dom.ranges.Range
    public int getStartOffset() {
        if (this.f111910f) {
            throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
        }
        return this.f111908d;
    }

    /* renamed from: h */
    public boolean m69775h(Node node, Node node2) {
        while (node2 != null) {
            if (node2 == node) {
                return true;
            }
            node2 = node2.getParentNode();
        }
        return false;
    }

    /* renamed from: i */
    public final boolean m69776i(Node node) {
        short nodeType;
        return (node == null || (nodeType = node.getNodeType()) == 2 || nodeType == 6 || nodeType == 9 || nodeType == 11 || nodeType == 12) ? false : true;
    }

    @Override // org.w3c.dom.ranges.Range
    public void insertNode(Node node) throws DOMException, RangeException {
        int i;
        int length;
        if (node == null) {
            return;
        }
        short nodeType = node.getNodeType();
        DocumentImpl documentImpl = this.f111905a;
        if (documentImpl.errorChecking) {
            if (this.f111910f) {
                throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
            }
            if (documentImpl != node.getOwnerDocument()) {
                throw new DOMException((short) 4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
            }
            if (nodeType == 2 || nodeType == 6 || nodeType == 12 || nodeType == 9) {
                throw new RangeExceptionImpl((short) 2, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_NODE_TYPE_ERR", null));
            }
        }
        this.f111914j = true;
        if (this.f111906b.getNodeType() == 3) {
            Node parentNode = this.f111906b.getParentNode();
            int length2 = parentNode.getChildNodes().getLength();
            Node cloneNode = this.f111906b.cloneNode(false);
            ((TextImpl) cloneNode).setNodeValueInternal(cloneNode.getNodeValue().substring(this.f111908d));
            Node node2 = this.f111906b;
            ((TextImpl) node2).setNodeValueInternal(node2.getNodeValue().substring(0, this.f111908d));
            Node nextSibling = this.f111906b.getNextSibling();
            if (nextSibling != null) {
                parentNode.insertBefore(node, nextSibling);
                parentNode.insertBefore(cloneNode, nextSibling);
            } else {
                parentNode.appendChild(node);
                parentNode.appendChild(cloneNode);
            }
            Node node3 = this.f111907c;
            if (node3 == this.f111906b) {
                this.f111907c = cloneNode;
                length = this.f111909e - this.f111908d;
            } else {
                if (node3 == parentNode) {
                    length = this.f111909e + (parentNode.getChildNodes().getLength() - length2);
                }
                m69785r(this.f111906b, cloneNode, this.f111908d);
            }
            this.f111909e = length;
            m69785r(this.f111906b, cloneNode, this.f111908d);
        } else {
            Node node4 = this.f111907c;
            int length3 = node4 == this.f111906b ? node4.getChildNodes().getLength() : 0;
            Node firstChild = this.f111906b.getFirstChild();
            for (int i2 = 0; i2 < this.f111908d && firstChild != null; i2++) {
                firstChild = firstChild.getNextSibling();
            }
            if (firstChild != null) {
                this.f111906b.insertBefore(node, firstChild);
            } else {
                this.f111906b.appendChild(node);
            }
            Node node5 = this.f111907c;
            if (node5 == this.f111906b && (i = this.f111909e) != 0) {
                this.f111909e = i + (node5.getChildNodes().getLength() - length3);
            }
        }
        this.f111914j = false;
    }

    public void insertedNodeFromDOM(Node node) {
        if (node == null || this.f111911g == node || this.f111914j) {
            return;
        }
        Node parentNode = node.getParentNode();
        Node node2 = this.f111906b;
        if (parentNode == node2) {
            int m69773f = m69773f(node, node2);
            int i = this.f111908d;
            if (m69773f < i) {
                this.f111908d = i + 1;
            }
        }
        Node node3 = this.f111907c;
        if (parentNode == node3) {
            int m69773f2 = m69773f(node, node3);
            int i2 = this.f111909e;
            if (m69773f2 < i2) {
                this.f111909e = i2 + 1;
            }
        }
    }

    /* renamed from: j */
    public final boolean m69777j(Node node) {
        if (node == null) {
            return false;
        }
        while (node != null) {
            short nodeType = node.getNodeType();
            if (nodeType == 6 || nodeType == 10 || nodeType == 12) {
                return false;
            }
            node = node.getParentNode();
        }
        return true;
    }

    /* renamed from: k */
    public Node m69778k(Node node, boolean z) {
        Node nextSibling;
        Node firstChild;
        if (node == null) {
            return null;
        }
        if (z && (firstChild = node.getFirstChild()) != null) {
            return firstChild;
        }
        Node nextSibling2 = node.getNextSibling();
        if (nextSibling2 != null) {
            return nextSibling2;
        }
        do {
            node = node.getParentNode();
            if (node == null || node == this.f111905a) {
                return null;
            }
            nextSibling = node.getNextSibling();
        } while (nextSibling == null);
        return nextSibling;
    }

    /* renamed from: l */
    public void m69779l(CharacterDataImpl characterDataImpl, int i, int i2) {
        if (characterDataImpl == null || this.f111912h == characterDataImpl) {
            return;
        }
        if (characterDataImpl == this.f111906b) {
            int i3 = this.f111908d;
            int i4 = i + i2;
            if (i3 > i4) {
                this.f111908d = (i3 - i4) + i;
            } else if (i3 > i) {
                this.f111908d = i;
            }
        }
        if (characterDataImpl == this.f111907c) {
            int i5 = this.f111909e;
            int i6 = i2 + i;
            if (i5 > i6) {
                i += i5 - i6;
            } else if (i5 <= i) {
                return;
            }
            this.f111909e = i;
        }
    }

    /* renamed from: m */
    public void m69780m(CharacterDataImpl characterDataImpl, int i, int i2) {
        int i3;
        int i4;
        if (characterDataImpl == null || this.f111911g == characterDataImpl) {
            return;
        }
        if (characterDataImpl == this.f111906b && i < (i4 = this.f111908d)) {
            this.f111908d = i4 + i2;
        }
        if (characterDataImpl != this.f111907c || i >= (i3 = this.f111909e)) {
            return;
        }
        this.f111909e = i3 + i2;
    }

    /* renamed from: n */
    public void m69781n(CharacterDataImpl characterDataImpl) {
        if (characterDataImpl == null) {
            return;
        }
        if (characterDataImpl == this.f111906b) {
            this.f111908d = 0;
        }
        if (characterDataImpl == this.f111907c) {
            this.f111909e = 0;
        }
    }

    /* renamed from: o */
    public void m69782o(Node node, Node node2, int i) {
        int i2;
        int i3;
        if (node == null || node2 == null || this.f111913i == node) {
            return;
        }
        Node node3 = this.f111906b;
        if (node == node3 && node3.getNodeType() == 3 && (i3 = this.f111908d) > i) {
            this.f111908d = i3 - i;
            this.f111906b = node2;
        }
        Node node4 = this.f111907c;
        if (node == node4 && node4.getNodeType() == 3 && (i2 = this.f111909e) > i) {
            this.f111909e = i2 - i;
            this.f111907c = node2;
        }
    }

    /* renamed from: p */
    public Node m69783p(Node node, Node node2) {
        this.f111915k = node2;
        Node removeChild = node.removeChild(node2);
        this.f111915k = null;
        return removeChild;
    }

    /* renamed from: q */
    public void m69784q(Node node) {
        if (node == null || this.f111915k == node) {
            return;
        }
        Node parentNode = node.getParentNode();
        Node node2 = this.f111906b;
        if (parentNode == node2) {
            int m69773f = m69773f(node, node2);
            int i = this.f111908d;
            if (m69773f < i) {
                this.f111908d = i - 1;
            }
        }
        Node node3 = this.f111907c;
        if (parentNode == node3) {
            int m69773f2 = m69773f(node, node3);
            int i2 = this.f111909e;
            if (m69773f2 < i2) {
                this.f111909e = i2 - 1;
            }
        }
        Node node4 = this.f111906b;
        if (parentNode == node4 && parentNode == this.f111907c) {
            return;
        }
        if (m69775h(node, node4)) {
            this.f111906b = parentNode;
            this.f111908d = m69773f(node, parentNode);
        }
        if (m69775h(node, this.f111907c)) {
            this.f111907c = parentNode;
            this.f111909e = m69773f(node, parentNode);
        }
    }

    /* renamed from: r */
    public void m69785r(Node node, Node node2, int i) {
        this.f111913i = node;
        this.f111905a.splitData(node, node2, i);
        this.f111913i = null;
    }

    /* renamed from: s */
    public final Node m69786s(Node node, boolean z, int i) {
        String substring;
        String substring2;
        String nodeValue = node.getNodeValue();
        if (z) {
            int startOffset = getStartOffset();
            substring = nodeValue.substring(startOffset);
            substring2 = nodeValue.substring(0, startOffset);
        } else {
            int endOffset = getEndOffset();
            substring = nodeValue.substring(0, endOffset);
            substring2 = nodeValue.substring(endOffset);
        }
        if (i != 2) {
            node.setNodeValue(substring2);
        }
        if (i == 3) {
            return null;
        }
        Node cloneNode = node.cloneNode(false);
        cloneNode.setNodeValue(substring);
        return cloneNode;
    }

    @Override // org.w3c.dom.ranges.Range
    public void selectNode(Node node) throws RangeException {
        if (this.f111905a.errorChecking) {
            if (this.f111910f) {
                throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
            }
            if (!m69777j(node.getParentNode()) || !m69776i(node)) {
                throw new RangeExceptionImpl((short) 2, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_NODE_TYPE_ERR", null));
            }
            if (this.f111905a != node.getOwnerDocument() && this.f111905a != node) {
                throw new DOMException((short) 4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
            }
        }
        Node parentNode = node.getParentNode();
        if (parentNode != null) {
            this.f111906b = parentNode;
            this.f111907c = parentNode;
            int i = 0;
            while (node != null) {
                i++;
                node = node.getPreviousSibling();
            }
            int i2 = i - 1;
            this.f111908d = i2;
            this.f111909e = i2 + 1;
        }
    }

    @Override // org.w3c.dom.ranges.Range
    public void selectNodeContents(Node node) throws RangeException {
        if (this.f111905a.errorChecking) {
            if (this.f111910f) {
                throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
            }
            if (!m69777j(node)) {
                throw new RangeExceptionImpl((short) 2, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_NODE_TYPE_ERR", null));
            }
            if (this.f111905a != node.getOwnerDocument() && this.f111905a != node) {
                throw new DOMException((short) 4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
            }
        }
        this.f111906b = node;
        this.f111907c = node;
        Node firstChild = node.getFirstChild();
        int i = 0;
        this.f111908d = 0;
        if (firstChild != null) {
            while (firstChild != null) {
                i++;
                firstChild = firstChild.getNextSibling();
            }
        }
        this.f111909e = i;
    }

    @Override // org.w3c.dom.ranges.Range
    public void setEnd(Node node, int i) throws RangeException, DOMException {
        if (this.f111905a.errorChecking) {
            if (this.f111910f) {
                throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
            }
            if (!m69777j(node)) {
                throw new RangeExceptionImpl((short) 2, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_NODE_TYPE_ERR", null));
            }
            if (this.f111905a != node.getOwnerDocument() && this.f111905a != node) {
                throw new DOMException((short) 4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
            }
        }
        m69768a(node, i);
        this.f111907c = node;
        this.f111909e = i;
        if (getCommonAncestorContainer() == null || (this.f111906b == this.f111907c && this.f111909e < this.f111908d)) {
            collapse(false);
        }
    }

    @Override // org.w3c.dom.ranges.Range
    public void setEndAfter(Node node) throws RangeException {
        if (this.f111905a.errorChecking) {
            if (this.f111910f) {
                throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
            }
            if (!m69772e(node) || !m69776i(node)) {
                throw new RangeExceptionImpl((short) 2, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_NODE_TYPE_ERR", null));
            }
            if (this.f111905a != node.getOwnerDocument() && this.f111905a != node) {
                throw new DOMException((short) 4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
            }
        }
        this.f111907c = node.getParentNode();
        int i = 0;
        while (node != null) {
            i++;
            node = node.getPreviousSibling();
        }
        this.f111909e = i;
        if (getCommonAncestorContainer() == null || (this.f111906b == this.f111907c && this.f111909e < this.f111908d)) {
            collapse(false);
        }
    }

    @Override // org.w3c.dom.ranges.Range
    public void setEndBefore(Node node) throws RangeException {
        if (this.f111905a.errorChecking) {
            if (this.f111910f) {
                throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
            }
            if (!m69772e(node) || !m69776i(node)) {
                throw new RangeExceptionImpl((short) 2, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_NODE_TYPE_ERR", null));
            }
            if (this.f111905a != node.getOwnerDocument() && this.f111905a != node) {
                throw new DOMException((short) 4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
            }
        }
        this.f111907c = node.getParentNode();
        int i = 0;
        while (node != null) {
            i++;
            node = node.getPreviousSibling();
        }
        this.f111909e = i - 1;
        if (getCommonAncestorContainer() == null || (this.f111906b == this.f111907c && this.f111909e < this.f111908d)) {
            collapse(false);
        }
    }

    @Override // org.w3c.dom.ranges.Range
    public void setStart(Node node, int i) throws RangeException, DOMException {
        if (this.f111905a.errorChecking) {
            if (this.f111910f) {
                throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
            }
            if (!m69777j(node)) {
                throw new RangeExceptionImpl((short) 2, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_NODE_TYPE_ERR", null));
            }
            if (this.f111905a != node.getOwnerDocument() && this.f111905a != node) {
                throw new DOMException((short) 4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
            }
        }
        m69768a(node, i);
        this.f111906b = node;
        this.f111908d = i;
        if (getCommonAncestorContainer() == null || (this.f111906b == this.f111907c && this.f111909e < this.f111908d)) {
            collapse(true);
        }
    }

    @Override // org.w3c.dom.ranges.Range
    public void setStartAfter(Node node) throws RangeException {
        if (this.f111905a.errorChecking) {
            if (this.f111910f) {
                throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
            }
            if (!m69772e(node) || !m69776i(node)) {
                throw new RangeExceptionImpl((short) 2, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_NODE_TYPE_ERR", null));
            }
            if (this.f111905a != node.getOwnerDocument() && this.f111905a != node) {
                throw new DOMException((short) 4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
            }
        }
        this.f111906b = node.getParentNode();
        int i = 0;
        while (node != null) {
            i++;
            node = node.getPreviousSibling();
        }
        this.f111908d = i;
        if (getCommonAncestorContainer() == null || (this.f111906b == this.f111907c && this.f111909e < this.f111908d)) {
            collapse(true);
        }
    }

    @Override // org.w3c.dom.ranges.Range
    public void setStartBefore(Node node) throws RangeException {
        if (this.f111905a.errorChecking) {
            if (this.f111910f) {
                throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
            }
            if (!m69772e(node) || !m69776i(node)) {
                throw new RangeExceptionImpl((short) 2, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_NODE_TYPE_ERR", null));
            }
            if (this.f111905a != node.getOwnerDocument() && this.f111905a != node) {
                throw new DOMException((short) 4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
            }
        }
        this.f111906b = node.getParentNode();
        int i = 0;
        while (node != null) {
            i++;
            node = node.getPreviousSibling();
        }
        this.f111908d = i - 1;
        if (getCommonAncestorContainer() == null || (this.f111906b == this.f111907c && this.f111909e < this.f111908d)) {
            collapse(true);
        }
    }

    @Override // org.w3c.dom.ranges.Range
    public void surroundContents(Node node) throws DOMException, RangeException {
        if (node == null) {
            return;
        }
        short nodeType = node.getNodeType();
        if (this.f111905a.errorChecking) {
            if (this.f111910f) {
                throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
            }
            if (nodeType == 2 || nodeType == 6 || nodeType == 12 || nodeType == 10 || nodeType == 9 || nodeType == 11) {
                throw new RangeExceptionImpl((short) 2, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_NODE_TYPE_ERR", null));
            }
        }
        Node node2 = this.f111906b;
        Node node3 = this.f111907c;
        if (node2.getNodeType() == 3) {
            node2 = this.f111906b.getParentNode();
        }
        if (this.f111907c.getNodeType() == 3) {
            node3 = this.f111907c.getParentNode();
        }
        if (node2 != node3) {
            throw new RangeExceptionImpl((short) 1, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "BAD_BOUNDARYPOINTS_ERR", null));
        }
        DocumentFragment extractContents = extractContents();
        insertNode(node);
        node.appendChild(extractContents);
        selectNode(node);
    }

    /* renamed from: t */
    public final DocumentFragment m69787t(Node node, Node node2, int i) {
        DocumentFragment createDocumentFragment = i != 3 ? this.f111905a.createDocumentFragment() : null;
        Node m69792y = m69792y(node, i);
        if (createDocumentFragment != null) {
            createDocumentFragment.appendChild(m69792y);
        }
        Node parentNode = node.getParentNode();
        int m69773f = m69773f(node2, parentNode) - (m69773f(node, parentNode) + 1);
        Node nextSibling = node.getNextSibling();
        while (m69773f > 0) {
            Node nextSibling2 = nextSibling.getNextSibling();
            Node m69791x = m69791x(nextSibling, i);
            if (createDocumentFragment != null) {
                createDocumentFragment.appendChild(m69791x);
            }
            m69773f--;
            nextSibling = nextSibling2;
        }
        Node m69766B = m69766B(node2, i);
        if (createDocumentFragment != null) {
            createDocumentFragment.appendChild(m69766B);
        }
        if (i != 2) {
            setStartAfter(node);
            collapse(true);
        }
        return createDocumentFragment;
    }

    @Override // org.w3c.dom.ranges.Range
    public String toString() {
        Node m69778k;
        if (this.f111910f) {
            throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
        }
        Node node = this.f111906b;
        Node node2 = this.f111907c;
        StringBuffer stringBuffer = new StringBuffer();
        if (this.f111906b.getNodeType() == 3 || this.f111906b.getNodeType() == 4) {
            Node node3 = this.f111906b;
            if (node3 == this.f111907c) {
                stringBuffer.append(node3.getNodeValue().substring(this.f111908d, this.f111909e));
                return stringBuffer.toString();
            }
            stringBuffer.append(node3.getNodeValue().substring(this.f111908d));
            m69778k = m69778k(node, true);
        } else {
            m69778k = node.getFirstChild();
            if (this.f111908d > 0) {
                for (int i = 0; i < this.f111908d && m69778k != null; i++) {
                    m69778k = m69778k.getNextSibling();
                }
            }
            if (m69778k == null) {
                m69778k = m69778k(this.f111906b, false);
            }
        }
        if (this.f111907c.getNodeType() != 3 && this.f111907c.getNodeType() != 4) {
            int i2 = this.f111909e;
            Node firstChild = this.f111907c.getFirstChild();
            while (i2 > 0 && firstChild != null) {
                i2--;
                firstChild = firstChild.getNextSibling();
            }
            node2 = firstChild == null ? m69778k(this.f111907c, false) : firstChild;
        }
        while (m69778k != node2 && m69778k != null) {
            if (m69778k.getNodeType() == 3 || m69778k.getNodeType() == 4) {
                stringBuffer.append(m69778k.getNodeValue());
            }
            m69778k = m69778k(m69778k, true);
        }
        if (this.f111907c.getNodeType() == 3 || this.f111907c.getNodeType() == 4) {
            stringBuffer.append(this.f111907c.getNodeValue().substring(0, this.f111909e));
        }
        return stringBuffer.toString();
    }

    /* renamed from: u */
    public final DocumentFragment m69788u(Node node, int i) {
        DocumentFragment createDocumentFragment = i != 3 ? this.f111905a.createDocumentFragment() : null;
        Node m69792y = m69792y(node, i);
        if (createDocumentFragment != null) {
            createDocumentFragment.appendChild(m69792y);
        }
        int m69773f = this.f111909e - (m69773f(node, this.f111907c) + 1);
        Node nextSibling = node.getNextSibling();
        while (m69773f > 0) {
            Node nextSibling2 = nextSibling.getNextSibling();
            Node m69791x = m69791x(nextSibling, i);
            if (createDocumentFragment != null) {
                createDocumentFragment.appendChild(m69791x);
            }
            m69773f--;
            nextSibling = nextSibling2;
        }
        if (i != 2) {
            setStartAfter(node);
            collapse(true);
        }
        return createDocumentFragment;
    }

    /* renamed from: v */
    public final DocumentFragment m69789v(Node node, int i) {
        DocumentFragment createDocumentFragment = i != 3 ? this.f111905a.createDocumentFragment() : null;
        Node m69766B = m69766B(node, i);
        if (createDocumentFragment != null) {
            createDocumentFragment.appendChild(m69766B);
        }
        int m69773f = m69773f(node, this.f111906b) - this.f111908d;
        if (m69773f <= 0) {
            if (i != 2) {
                setEndBefore(node);
                collapse(false);
            }
            return createDocumentFragment;
        }
        Node previousSibling = node.getPreviousSibling();
        while (m69773f > 0) {
            Node previousSibling2 = previousSibling.getPreviousSibling();
            Node m69791x = m69791x(previousSibling, i);
            if (createDocumentFragment != null) {
                createDocumentFragment.insertBefore(m69791x, createDocumentFragment.getFirstChild());
            }
            m69773f--;
            previousSibling = previousSibling2;
        }
        if (i != 2) {
            setEndBefore(node);
            collapse(false);
        }
        return createDocumentFragment;
    }

    /* renamed from: w */
    public final DocumentFragment m69790w(int i) throws DOMException {
        Node node;
        Node node2 = this.f111906b;
        if (node2 == null || (node = this.f111907c) == null) {
            return null;
        }
        if (this.f111910f) {
            throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
        }
        if (node2 == node) {
            return m69767C(i);
        }
        Node parentNode = node.getParentNode();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            Node node3 = node;
            node = parentNode;
            if (node == null) {
                Node node4 = this.f111906b;
                while (true) {
                    Node node5 = node4;
                    node4 = node4.getParentNode();
                    if (node4 == null) {
                        int i4 = i2 - i3;
                        Node node6 = this.f111906b;
                        while (i4 > 0) {
                            node6 = node6.getParentNode();
                            i4--;
                        }
                        Node node7 = this.f111907c;
                        while (i4 < 0) {
                            node7 = node7.getParentNode();
                            i4++;
                        }
                        Node parentNode2 = node6.getParentNode();
                        Node parentNode3 = node7.getParentNode();
                        Node node8 = node7;
                        Node node9 = node6;
                        Node node10 = parentNode2;
                        Node node11 = node8;
                        while (node10 != parentNode3) {
                            node9 = node10;
                            node10 = node10.getParentNode();
                            Node node12 = parentNode3;
                            parentNode3 = parentNode3.getParentNode();
                            node11 = node12;
                        }
                        return m69787t(node9, node11, i);
                    }
                    if (node4 == this.f111907c) {
                        return m69788u(node5, i);
                    }
                    i2++;
                }
            } else {
                if (node == this.f111906b) {
                    return m69789v(node3, i);
                }
                i3++;
                parentNode = node.getParentNode();
            }
        }
    }

    /* renamed from: x */
    public final Node m69791x(Node node, int i) {
        if (i == 1) {
            if (node.getNodeType() != 10) {
                return node;
            }
            throw new DOMException((short) 3, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "HIERARCHY_REQUEST_ERR", null));
        }
        if (i == 2) {
            return node.cloneNode(true);
        }
        if (i != 3) {
            return null;
        }
        node.getParentNode().removeChild(node);
        return null;
    }

    /* renamed from: y */
    public final Node m69792y(Node node, int i) {
        Node m69771d = m69771d(getStartContainer(), getStartOffset());
        boolean z = m69771d != getStartContainer();
        if (m69771d == node) {
            return m69793z(m69771d, z, true, i);
        }
        Node parentNode = m69771d.getParentNode();
        Node m69793z = m69793z(parentNode, false, true, i);
        while (parentNode != null) {
            while (m69771d != null) {
                Node nextSibling = m69771d.getNextSibling();
                Node m69793z2 = m69793z(m69771d, z, true, i);
                if (i != 3) {
                    m69793z.appendChild(m69793z2);
                }
                z = true;
                m69771d = nextSibling;
            }
            if (parentNode == node) {
                return m69793z;
            }
            m69771d = parentNode.getNextSibling();
            parentNode = parentNode.getParentNode();
            Node m69793z3 = m69793z(parentNode, false, true, i);
            if (i != 3) {
                m69793z3.appendChild(m69793z);
            }
            m69793z = m69793z3;
        }
        return null;
    }

    /* renamed from: z */
    public final Node m69793z(Node node, boolean z, boolean z2, int i) {
        if (z) {
            return m69791x(node, i);
        }
        short nodeType = node.getNodeType();
        return (nodeType == 3 || nodeType == 4 || nodeType == 8 || nodeType == 7) ? m69786s(node, z2, i) : m69765A(node, i);
    }
}
