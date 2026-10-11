package net.p110sf.saxon.functions;

import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.sort.AtomicComparer;
import net.p110sf.saxon.expr.sort.GenericAtomicComparer;
import net.p110sf.saxon.lib.ErrorReporter;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NameOfNode;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.pattern.SameNameTest;
import net.p110sf.saxon.str.StringTool;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XmlProcessingIncident;
import net.p110sf.saxon.transpile.CSharp;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.iter.ListIterator;
import net.p110sf.saxon.tree.tiny.WhitespaceTextImpl;
import net.p110sf.saxon.tree.util.Navigator;
import net.p110sf.saxon.tree.util.Orphan;
import net.p110sf.saxon.type.ComplexType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.StringValue;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class DeepEqual extends CollatingFunctionFixed {
    public static final int COMPARE_ANNOTATIONS = 64;
    public static final int COMPARE_ID_FLAGS = 512;
    public static final int COMPARE_STRING_VALUES = 32;
    public static final int EXCLUDE_VARIETY = 1024;
    public static final int EXCLUDE_WHITESPACE_TEXT_NODES = 16;
    public static final int INCLUDE_COMMENTS = 4;
    public static final int INCLUDE_NAMESPACES = 1;
    public static final int INCLUDE_PREFIXES = 2;
    public static final int INCLUDE_PROCESSING_INSTRUCTIONS = 8;
    public static final int JOIN_ADJACENT_TEXT_NODES = 256;
    public static final int WARNING_IF_FALSE = 128;

    /* renamed from: k */
    public static final /* synthetic */ boolean f100178k = false;

    /* renamed from: b */
    public static void m62971b(ErrorReporter errorReporter, String str, int i, NodeInfo nodeInfo, NodeInfo nodeInfo2) {
        if ((i & 128) != 0) {
            StringBuilder sb = new StringBuilder();
            sb.append("deep-equal() ");
            String str2 = ": ";
            if (nodeInfo != null && nodeInfo2 != null) {
                str2 = "comparing " + Navigator.getPath(nodeInfo) + " to " + Navigator.getPath(nodeInfo2) + ": ";
            }
            sb.append(str2);
            sb.append(str);
            errorReporter.report(new XmlProcessingIncident(sb.toString()).asWarning());
        }
    }

    /* renamed from: c */
    public static boolean m62972c(NodeInfo nodeInfo, int i) {
        int nodeKind = nodeInfo.getNodeKind();
        if (nodeKind == 8) {
            return (i & 4) == 0;
        }
        if (nodeKind == 7) {
            return (i & 8) == 0;
        }
        if (nodeKind == 3) {
            return (i & 16) != 0 && Whitespace.isAllWhite(nodeInfo.getUnicodeStringValue());
        }
        return false;
    }

    /* renamed from: d */
    public static SequenceIterator m62973d(SequenceIterator sequenceIterator) throws XPathException {
        boolean z;
        Item next;
        ArrayList arrayList = new ArrayList(20);
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder();
        loop0: while (true) {
            z = false;
            while (true) {
                next = sequenceIterator.next();
                if (next == null) {
                    break loop0;
                }
                if (!(next instanceof NodeInfo) || ((NodeInfo) next).getNodeKind() != 3) {
                    break;
                }
                unicodeBuilder.accept(next.getUnicodeStringValue());
                z = true;
            }
            if (z) {
                Orphan orphan = new Orphan(null);
                orphan.setNodeKind((short) 3);
                orphan.setStringValue(unicodeBuilder.toUnicodeString());
                arrayList.add(orphan);
                unicodeBuilder.clear();
            }
            arrayList.add(next);
        }
        if (z) {
            Orphan orphan2 = new Orphan(null);
            orphan2.setNodeKind((short) 3);
            orphan2.setStringValue(unicodeBuilder.toUnicodeString());
            arrayList.add(orphan2);
        }
        return new ListIterator.C18538Of(arrayList);
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00f6, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x00f9, code lost:
    
        if (r5 != null) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x00fb, code lost:
    
        r9 = "Second sequence is longer (first sequence length = " + r4 + com.google.android.material.motion.MotionUtils.f31762d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0126, code lost:
    
        if ((r5 instanceof net.p110sf.saxon.tree.tiny.WhitespaceTextImpl) != false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x012a, code lost:
    
        if ((r6 instanceof net.p110sf.saxon.tree.tiny.WhitespaceTextImpl) == false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x012c, code lost:
    
        r9 = r9 + " (the first extra node is whitespace text)";
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0110, code lost:
    
        r9 = "First sequence is longer (second sequence length = " + r1 + com.google.android.material.motion.MotionUtils.f31762d;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean deepEqual(net.p110sf.saxon.om.SequenceIterator r9, net.p110sf.saxon.om.SequenceIterator r10, net.p110sf.saxon.expr.sort.AtomicComparer r11, net.p110sf.saxon.expr.XPathContext r12, int r13) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 331
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.functions.DeepEqual.deepEqual(net.sf.saxon.om.SequenceIterator, net.sf.saxon.om.SequenceIterator, net.sf.saxon.expr.sort.AtomicComparer, net.sf.saxon.expr.XPathContext, int):boolean");
    }

    public static boolean deepEquals(NodeInfo nodeInfo, NodeInfo nodeInfo2, AtomicComparer atomicComparer, XPathContext xPathContext, int i) throws XPathException {
        NodeInfo next;
        NodeInfo next2;
        NodeInfo next3;
        NodeInfo next4;
        String str;
        if (nodeInfo.equals(nodeInfo2)) {
            return true;
        }
        ErrorReporter errorReporter = xPathContext.getErrorReporter();
        if (nodeInfo.getNodeKind() != nodeInfo2.getNodeKind()) {
            m62971b(errorReporter, "node kinds differ: comparing " + m62974e(nodeInfo) + " to " + m62974e(nodeInfo2), i, nodeInfo, nodeInfo2);
            return false;
        }
        int nodeKind = nodeInfo.getNodeKind();
        if (nodeKind == 1) {
            if (!Navigator.haveSameName(nodeInfo, nodeInfo2)) {
                m62971b(errorReporter, "element names differ: " + NameOfNode.makeName(nodeInfo).getStructuredQName().getEQName() + CloudStorageConstants.OPERATION_NOT_EQUAL + NameOfNode.makeName(nodeInfo2).getStructuredQName().getEQName(), i, nodeInfo, nodeInfo2);
                return false;
            }
            if ((i & 2) != 0 && !nodeInfo.getPrefix().equals(nodeInfo2.getPrefix())) {
                m62971b(errorReporter, "element prefixes differ: " + nodeInfo.getPrefix() + CloudStorageConstants.OPERATION_NOT_EQUAL + nodeInfo2.getPrefix(), i, nodeInfo, nodeInfo2);
                return false;
            }
            if (!SequenceTool.sameLength(nodeInfo.iterateAxis(2), nodeInfo2.iterateAxis(2))) {
                m62971b(errorReporter, "elements have different number of attributes", i, nodeInfo, nodeInfo2);
                return false;
            }
            AxisIterator iterateAxis = nodeInfo.iterateAxis(2);
            do {
                next = iterateAxis.next();
                if (next != null) {
                    next2 = nodeInfo2.iterateAxis(2, new SameNameTest(next)).next();
                    if (next2 == null) {
                        m62971b(errorReporter, "one element has an attribute " + NameOfNode.makeName(next).getStructuredQName().getEQName() + ", the other does not", i, nodeInfo, nodeInfo2);
                        return false;
                    }
                } else {
                    if ((i & 1) != 0) {
                        NamespaceMap allNamespaces = nodeInfo.getAllNamespaces();
                        NamespaceMap allNamespaces2 = nodeInfo2.getAllNamespaces();
                        if (!allNamespaces.equals(allNamespaces2)) {
                            m62971b(errorReporter, "elements have different in-scope namespaces: " + allNamespaces + " versus " + allNamespaces2, i, nodeInfo, nodeInfo2);
                            return false;
                        }
                    }
                    if ((i & 64) != 0 && !nodeInfo.getSchemaType().equals(nodeInfo2.getSchemaType())) {
                        m62971b(errorReporter, "elements have different type annotation", i, nodeInfo, nodeInfo2);
                        return false;
                    }
                    if ((i & 1024) == 0) {
                        if (nodeInfo.getSchemaType().isComplexType() != nodeInfo2.getSchemaType().isComplexType()) {
                            m62971b(errorReporter, "one element has complex type, the other simple", i, nodeInfo, nodeInfo2);
                            return false;
                        }
                        if (nodeInfo.getSchemaType().isComplexType() && ((ComplexType) nodeInfo.getSchemaType()).getVariety() != ((ComplexType) nodeInfo2.getSchemaType()).getVariety()) {
                            m62971b(errorReporter, "both elements have complex type, but a different variety", i, nodeInfo, nodeInfo2);
                            return false;
                        }
                    }
                    if ((i & 32) == 0) {
                        SchemaType schemaType = nodeInfo.getSchemaType();
                        SchemaType schemaType2 = nodeInfo2.getSchemaType();
                        boolean z = schemaType.isSimpleType() || ((ComplexType) schemaType).isSimpleContent();
                        if (z != (schemaType2.isSimpleType() || ((ComplexType) schemaType2).isSimpleContent())) {
                            m62971b(errorReporter, "one element has a simple type, the other does not", i, nodeInfo, nodeInfo2);
                            return false;
                        }
                        if (z) {
                            return deepEqual(nodeInfo.atomize().iterate(), nodeInfo2.atomize().iterate(), atomicComparer, xPathContext, i);
                        }
                    }
                    if ((i & 512) != 0) {
                        if (nodeInfo.isId() != nodeInfo2.isId()) {
                            m62971b(errorReporter, "one element is an ID, the other is not", i, nodeInfo, nodeInfo2);
                            return false;
                        }
                        if (nodeInfo.isIdref() != nodeInfo2.isIdref()) {
                            m62971b(errorReporter, "one element is an IDREF, the other is not", i, nodeInfo, nodeInfo2);
                            return false;
                        }
                    }
                    CSharp.emitCode("goto case Saxon.Hej.type.Type.DOCUMENT;");
                }
            } while (deepEquals(next, next2, atomicComparer, xPathContext, i));
            deepEquals(next, next2, atomicComparer, xPathContext, i);
            m62971b(errorReporter, "elements have different values for the attribute " + NameOfNode.makeName(next).getStructuredQName().getEQName(), i, nodeInfo, nodeInfo2);
            return false;
        }
        if (nodeKind == 2) {
            if (!Navigator.haveSameName(nodeInfo, nodeInfo2)) {
                m62971b(errorReporter, "attribute names differ: " + NameOfNode.makeName(nodeInfo).getStructuredQName().getEQName() + CloudStorageConstants.OPERATION_NOT_EQUAL + NameOfNode.makeName(nodeInfo).getStructuredQName().getEQName(), i, nodeInfo, nodeInfo2);
                return false;
            }
            if ((i & 2) != 0 && !nodeInfo.getPrefix().equals(nodeInfo2.getPrefix())) {
                m62971b(errorReporter, "attribute prefixes differ: " + nodeInfo.getPrefix() + CloudStorageConstants.OPERATION_NOT_EQUAL + nodeInfo2.getPrefix(), i, nodeInfo, nodeInfo2);
                return false;
            }
            if ((i & 64) != 0 && !nodeInfo.getSchemaType().equals(nodeInfo2.getSchemaType())) {
                m62971b(errorReporter, "attributes have different type annotations", i, nodeInfo, nodeInfo2);
                return false;
            }
            if (!((i & 32) == 0 ? deepEqual(nodeInfo.atomize().iterate(), nodeInfo2.atomize().iterate(), atomicComparer, xPathContext, 0) : atomicComparer.comparesEqual(new StringValue(nodeInfo.getUnicodeStringValue()), new StringValue(nodeInfo2.getUnicodeStringValue())))) {
                m62971b(errorReporter, "attribute values differ", i, nodeInfo, nodeInfo2);
                return false;
            }
            if ((i & 512) == 0) {
                return true;
            }
            if (nodeInfo.isId() != nodeInfo2.isId()) {
                m62971b(errorReporter, "one attribute is an ID, the other is not", i, nodeInfo, nodeInfo2);
                return false;
            }
            if (nodeInfo.isIdref() == nodeInfo2.isIdref()) {
                return true;
            }
            m62971b(errorReporter, "one attribute is an IDREF, the other is not", i, nodeInfo, nodeInfo2);
            return false;
        }
        if (nodeKind != 3) {
            if (nodeKind != 7) {
                if (nodeKind != 8) {
                    if (nodeKind != 9) {
                        if (nodeKind != 13) {
                            throw new IllegalArgumentException("Unknown node type");
                        }
                    }
                }
            }
            if (!nodeInfo.getLocalPart().equals(nodeInfo2.getLocalPart())) {
                m62971b(errorReporter, Type.displayTypeName(nodeInfo) + " names differ", i, nodeInfo, nodeInfo2);
                return false;
            }
            CSharp.emitCode("goto case Saxon.Hej.type.Type.TEXT;");
        }
        boolean comparesEqual = atomicComparer.comparesEqual((AtomicValue) nodeInfo.atomize(), (AtomicValue) nodeInfo2.atomize());
        if (!comparesEqual && (i & 128) != 0) {
            String stringValue = nodeInfo.getStringValue();
            String stringValue2 = nodeInfo2.getStringValue();
            if (stringValue.length() != stringValue2.length()) {
                str = "lengths (" + stringValue.length() + "," + stringValue2.length() + MotionUtils.f31762d;
            } else {
                str = "";
            }
            if (stringValue.length() >= 10 || stringValue2.length() >= 10) {
                int min = Math.min(stringValue.length(), stringValue2.length());
                if (!stringValue.substring(0, min).equals(stringValue2.substring(0, min))) {
                    if (stringValue.charAt(0) == stringValue2.charAt(0)) {
                        int i2 = 0;
                        int i3 = 1;
                        while (true) {
                            if (i3 >= min) {
                                break;
                            }
                            int i4 = min;
                            if (!stringValue.substring(i2, i3).equals(stringValue2.substring(i2, i3))) {
                                StringBuilder sb = new StringBuilder();
                                sb.append(str);
                                sb.append(" different at char ");
                                int i5 = i3 - 1;
                                sb.append(i5);
                                sb.append("(\"");
                                int i6 = i3 + 10;
                                sb.append(stringValue.substring(i5, Math.min(stringValue.length(), i6)));
                                sb.append("\", \"");
                                sb.append(stringValue2.substring(i5, Math.min(stringValue2.length(), i6)));
                                sb.append("\")");
                                str = sb.toString();
                                break;
                            }
                            i3++;
                            min = i4;
                            i2 = 0;
                        }
                    } else {
                        str = str + " different at start (\"" + stringValue.substring(0, Math.min(stringValue.length(), 10)) + "\", \"" + stringValue2.substring(0, Math.min(stringValue2.length(), 10)) + "\")";
                    }
                } else {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str);
                    sb2.append(" different at char ");
                    sb2.append(min);
                    sb2.append("(\"");
                    if (stringValue.length() <= stringValue2.length()) {
                        stringValue = stringValue2;
                    }
                    sb2.append(StringTool.diagnosticDisplay(stringValue.substring(min)));
                    sb2.append("\")");
                    str = sb2.toString();
                }
            } else {
                str = " (\"" + stringValue + "\" vs \"" + stringValue2 + "\")";
            }
            m62971b(errorReporter, Type.displayTypeName(nodeInfo) + " values differ (" + Navigator.getPath(nodeInfo) + ", " + Navigator.getPath(nodeInfo2) + "): " + str, i, nodeInfo, nodeInfo2);
        }
        return comparesEqual;
        AxisIterator iterateAxis2 = nodeInfo.iterateAxis(3);
        AxisIterator iterateAxis3 = nodeInfo2.iterateAxis(3);
        do {
            next3 = iterateAxis2.next();
            while (next3 != null && m62972c(next3, i)) {
                next3 = iterateAxis2.next();
            }
            next4 = iterateAxis3.next();
            while (next4 != null && m62972c(next4, i)) {
                next4 = iterateAxis3.next();
            }
            if (next3 == null || next4 == null) {
                boolean z2 = next3 == next4;
                if (!z2) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("the first operand contains a node with ");
                    sb3.append(next3 == null ? "fewer" : "more");
                    sb3.append(" children than the second");
                    String sb4 = sb3.toString();
                    if ((next3 instanceof WhitespaceTextImpl) || (next4 instanceof WhitespaceTextImpl)) {
                        sb4 = sb4 + " (the first extra child is whitespace text)";
                    }
                    m62971b(errorReporter, sb4, i, nodeInfo, nodeInfo2);
                }
                return z2;
            }
        } while (deepEquals(next3, next4, atomicComparer, xPathContext, i));
        return false;
    }

    /* renamed from: e */
    public static String m62974e(Item item) {
        return ((item instanceof NodeInfo) && ((NodeInfo) item).getNodeKind() == 3 && Whitespace.isAllWhite(item.getUnicodeStringValue())) ? "whitespace text() node" : Type.displayTypeName(item);
    }

    /* renamed from: f */
    public static String m62975f(HashSet<NamespaceBinding> hashSet) {
        StringBuilder sb = new StringBuilder(256);
        Iterator<NamespaceBinding> it2 = hashSet.iterator();
        while (it2.hasNext()) {
            NamespaceBinding next = it2.next();
            sb.append(next.getPrefix());
            sb.append("=");
            sb.append(next.getURI());
            sb.append(" ");
        }
        sb.setLength(sb.length() - 1);
        return sb.toString();
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getStreamerName() {
        return "DeepEqual";
    }

    @Override // net.p110sf.saxon.expr.Callable
    public BooleanValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return BooleanValue.get(deepEqual(sequenceArr[0].iterate(), sequenceArr[1].iterate(), new GenericAtomicComparer(getStringCollator(), xPathContext), xPathContext, 0));
    }
}
