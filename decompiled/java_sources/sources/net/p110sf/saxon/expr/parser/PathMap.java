package net.p110sf.saxon.expr.parser;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlinx.coroutines.CoroutineContextKt;
import net.p110sf.saxon.expr.Binding;
import net.p110sf.saxon.expr.ContextItemExpression;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.RootExpression;
import net.p110sf.saxon.lib.Logger;
import net.p110sf.saxon.om.AxisInfo;
import net.p110sf.saxon.pattern.AnyNodeTest;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.transpile.CSharp;
import net.p110sf.saxon.tree.util.IndexedStack;

/* loaded from: classes11.dex */
public class PathMap {

    /* renamed from: a */
    public final List<PathMapRoot> f99943a = new ArrayList();

    /* renamed from: b */
    public final HashMap<Binding, PathMapNodeSet> f99944b = new HashMap<>();

    /* loaded from: classes11.dex */
    public static class PathMapArc {

        /* renamed from: a */
        public final PathMapNode f99945a;

        /* renamed from: b */
        public final int f99946b;

        /* renamed from: c */
        public final NodeTest f99947c;

        public PathMapArc(int i, NodeTest nodeTest, PathMapNode pathMapNode) {
            this.f99946b = i;
            this.f99947c = nodeTest;
            this.f99945a = pathMapNode;
        }

        public int getAxis() {
            return this.f99946b;
        }

        public NodeTest getNodeTest() {
            return this.f99947c;
        }

        public PathMapNode getTarget() {
            return this.f99945a;
        }
    }

    /* loaded from: classes11.dex */
    public static class PathMapNodeSet extends HashSet<PathMapNode> {
        public PathMapNodeSet() {
        }

        public void addDescendants() {
            Iterator<PathMapNode> it2 = iterator();
            while (it2.hasNext()) {
                it2.next().createArc(4, AnyNodeTest.getInstance());
            }
        }

        public void addNodeSet(PathMapNodeSet pathMapNodeSet) {
            if (pathMapNodeSet != null) {
                Iterator<PathMapNode> it2 = pathMapNodeSet.iterator();
                while (it2.hasNext()) {
                    add(it2.next());
                }
            }
        }

        public boolean allPathsAreWithinStreamableSnapshot() {
            Iterator<PathMapNode> it2 = iterator();
            while (it2.hasNext()) {
                if (!it2.next().allPathsAreWithinStreamableSnapshot()) {
                    return false;
                }
            }
            return true;
        }

        public PathMapNodeSet createArc(int i, NodeTest nodeTest) {
            PathMapNodeSet pathMapNodeSet = new PathMapNodeSet();
            Iterator<PathMapNode> it2 = iterator();
            while (it2.hasNext()) {
                pathMapNodeSet.add(it2.next().createArc(i, nodeTest));
            }
            return pathMapNodeSet;
        }

        public boolean hasReachableReturnables() {
            Iterator<PathMapNode> it2 = iterator();
            while (it2.hasNext()) {
                if (it2.next().hasReachableReturnables()) {
                    return true;
                }
            }
            return false;
        }

        public void setAtomized() {
            Iterator<PathMapNode> it2 = iterator();
            while (it2.hasNext()) {
                it2.next().setAtomized();
            }
        }

        public void setHasUnknownDependencies() {
            Iterator<PathMapNode> it2 = iterator();
            while (it2.hasNext()) {
                it2.next().setHasUnknownDependencies();
            }
        }

        public void setReturnable(boolean z) {
            Iterator<PathMapNode> it2 = iterator();
            while (it2.hasNext()) {
                it2.next().setReturnable(z);
            }
        }

        public PathMapNodeSet(PathMapNode pathMapNode) {
            add(pathMapNode);
        }
    }

    /* loaded from: classes11.dex */
    public static class PathMapRoot extends PathMapNode {

        /* renamed from: e */
        public final Expression f99952e;
        public boolean isDownwardsOnly;

        public PathMapRoot(Expression expression) {
            this.f99952e = expression;
        }

        public Expression getRootExpression() {
            return this.f99952e;
        }
    }

    public PathMap(Expression expression) {
        PathMapNodeSet addToPathMap = expression.addToPathMap(this, null);
        if (addToPathMap != null) {
            Iterator<PathMapNode> it2 = addToPathMap.iterator();
            while (it2.hasNext()) {
                it2.next().setReturnable(true);
            }
        }
    }

    /* renamed from: a */
    public final void m62843a(PathMapRoot pathMapRoot, IndexedStack<PathMapNode> indexedStack) {
        PathMapNode peek = indexedStack.peek();
        if (peek.hasUnknownDependencies()) {
            pathMapRoot.setHasUnknownDependencies();
        }
        for (int i = 0; i < peek.f99948a.size(); i++) {
            indexedStack.push(peek.f99948a.get(i).getTarget());
            m62843a(pathMapRoot, indexedStack);
            indexedStack.pop();
        }
        for (int size = peek.f99948a.size() - 1; size >= 0; size--) {
            PathMapArc pathMapArc = peek.f99948a.get(size);
            PathMapNode pathMapNode = indexedStack.size() < 2 ? null : indexedStack.get(indexedStack.size() - 2);
            int i2 = -1;
            if (pathMapNode != null) {
                for (PathMapArc pathMapArc2 : pathMapNode.f99948a) {
                    if (pathMapArc2.getTarget() == peek) {
                        i2 = pathMapArc2.getAxis();
                    }
                }
            }
            int axis = pathMapArc.getAxis();
            if (axis != 0) {
                if (axis == 1 || axis == 5) {
                    if (pathMapArc.getNodeTest() == NodeKindTest.DOCUMENT) {
                        peek.f99948a.remove(size);
                        Iterator<PathMapArc> it2 = pathMapArc.getTarget().f99948a.iterator();
                        while (it2.hasNext()) {
                            pathMapRoot.f99948a.add(it2.next());
                        }
                    } else {
                        CSharp.emitCode("goto case Saxon.Hej.om.AxisInfo.ANCESTOR;");
                    }
                } else if (axis != 6) {
                    if (axis != 7) {
                        switch (axis) {
                            case 9:
                                if (i2 != 3 && i2 != 2 && i2 != 8) {
                                    if (i2 == 4) {
                                        if (pathMapArc.getTarget().f99948a.isEmpty()) {
                                            pathMapNode.createArc(5, pathMapArc.getNodeTest());
                                        } else {
                                            pathMapNode.createArc(5, pathMapArc.getNodeTest(), pathMapArc.getTarget());
                                        }
                                        peek.f99948a.remove(size);
                                        break;
                                    } else {
                                        if (pathMapArc.getTarget().f99948a.isEmpty()) {
                                            pathMapRoot.createArc(5, pathMapArc.getNodeTest());
                                        } else {
                                            pathMapRoot.createArc(5, pathMapArc.getNodeTest(), pathMapArc.getTarget());
                                        }
                                        peek.f99948a.remove(size);
                                        break;
                                    }
                                } else {
                                    if (peek.isReturnable()) {
                                        pathMapNode.setReturnable(true);
                                    }
                                    PathMapNode target = pathMapArc.getTarget();
                                    for (int i3 = 0; i3 < target.f99948a.size(); i3++) {
                                        pathMapNode.f99948a.add(target.f99948a.get(i3));
                                    }
                                    peek.f99948a.remove(size);
                                    break;
                                }
                            case 12:
                                peek.f99948a.remove(size);
                                break;
                        }
                    }
                    if (pathMapNode != null) {
                        pathMapNode.createArc(i2, pathMapArc.getNodeTest(), pathMapArc.getTarget());
                        peek.f99948a.remove(size);
                    } else {
                        pathMapRoot.createArc(3, pathMapArc.getNodeTest(), pathMapArc.getTarget());
                        peek.f99948a.remove(size);
                    }
                }
            }
            if (pathMapArc.getAxis() != 5) {
                pathMapRoot.createArc(5, pathMapArc.getNodeTest(), pathMapArc.getTarget());
                peek.f99948a.remove(size);
            }
        }
    }

    /* renamed from: b */
    public final void m62844b(Logger logger, PathMapNode pathMapNode, int i) {
        String substring = "                                           ".substring(0, i);
        for (PathMapArc pathMapArc : pathMapNode.f99948a) {
            StringBuilder sb = new StringBuilder();
            sb.append(substring);
            sb.append(AxisInfo.axisName[pathMapArc.getAxis()]);
            sb.append("::");
            sb.append(pathMapArc.getNodeTest().toString());
            String str = "";
            sb.append(pathMapArc.getTarget().isAtomized() ? CoroutineContextKt.f98133a : "");
            sb.append(pathMapArc.getTarget().isReturnable() ? " #" : "");
            if (pathMapArc.getTarget().hasUnknownDependencies()) {
                str = " ...??";
            }
            sb.append(str);
            logger.info(sb.toString());
            m62844b(logger, pathMapArc.getTarget(), i + 2);
        }
    }

    public PathMapRoot getContextDocumentRoot() {
        PathMapRoot pathMapRoot = null;
        for (PathMapRoot pathMapRoot2 : getPathMapRoots()) {
            PathMapRoot reduceToDownwardsAxes = reduceToDownwardsAxes(pathMapRoot2);
            if (reduceToDownwardsAxes.getRootExpression() instanceof RootExpression) {
                if (pathMapRoot != null) {
                    throw new IllegalStateException("More than one context document root found in path map");
                }
                pathMapRoot = reduceToDownwardsAxes;
            }
        }
        return pathMapRoot;
    }

    public PathMapRoot getContextItemRoot() {
        PathMapRoot pathMapRoot = null;
        for (PathMapRoot pathMapRoot2 : getPathMapRoots()) {
            if (pathMapRoot2.getRootExpression() instanceof ContextItemExpression) {
                if (pathMapRoot != null) {
                    throw new IllegalStateException("More than one context document root found in path map");
                }
                pathMapRoot = pathMapRoot2;
            }
        }
        return pathMapRoot;
    }

    public PathMapNodeSet getPathForVariable(Binding binding) {
        return this.f99944b.get(binding);
    }

    public PathMapRoot[] getPathMapRoots() {
        List<PathMapRoot> list = this.f99943a;
        return (PathMapRoot[]) list.toArray(new PathMapRoot[list.size()]);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x007f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public net.sf.saxon.expr.parser.PathMap.PathMapRoot getRootForDocument(java.lang.String r11) {
        /*
            r10 = this;
            net.sf.saxon.expr.parser.PathMap$PathMapRoot[] r0 = r10.getPathMapRoots()
            int r1 = r0.length
            r2 = 0
            r3 = 0
            r5 = r2
            r4 = r3
        L9:
            if (r4 >= r1) goto L82
            r6 = r0[r4]
            net.sf.saxon.expr.parser.PathMap$PathMapRoot r6 = r10.reduceToDownwardsAxes(r6)
            net.sf.saxon.expr.Expression r7 = r6.getRootExpression()
            java.lang.Class<net.sf.saxon.functions.Doc> r8 = net.p110sf.saxon.functions.Doc.class
            boolean r8 = r7.isCallOn(r8)
            if (r8 == 0) goto L22
            java.lang.String r8 = r7.getStaticBaseURIString()
            goto L2e
        L22:
            java.lang.Class<net.sf.saxon.functions.DocumentFn> r8 = net.p110sf.saxon.functions.DocumentFn.class
            boolean r8 = r7.isCallOn(r8)
            if (r8 == 0) goto L7f
            java.lang.String r8 = r7.getStaticBaseURIString()
        L2e:
            net.sf.saxon.expr.SystemFunctionCall r7 = (net.p110sf.saxon.expr.SystemFunctionCall) r7
            net.sf.saxon.expr.Expression r7 = r7.getArg(r3)
            boolean r9 = r7 instanceof net.p110sf.saxon.expr.Literal
            if (r9 == 0) goto L5d
            net.sf.saxon.expr.Literal r7 = (net.p110sf.saxon.expr.Literal) r7     // Catch: java.lang.Throwable -> L5d
            net.sf.saxon.om.GroundedValue r7 = r7.getGroundedValue()     // Catch: java.lang.Throwable -> L5d
            net.sf.saxon.str.UnicodeString r7 = r7.getUnicodeStringValue()     // Catch: java.lang.Throwable -> L5d
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Throwable -> L5d
            if (r8 != 0) goto L54
            java.net.URI r8 = new java.net.URI     // Catch: java.lang.Throwable -> L5d
            r8.<init>(r7)     // Catch: java.lang.Throwable -> L5d
            boolean r8 = r8.isAbsolute()     // Catch: java.lang.Throwable -> L5d
            if (r8 == 0) goto L5d
            goto L5e
        L54:
            java.net.URI r7 = net.p110sf.saxon.functions.ResolveURI.makeAbsolute(r7, r8)     // Catch: java.lang.Throwable -> L5d
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Throwable -> L5d
            goto L5e
        L5d:
            r7 = r2
        L5e:
            boolean r7 = r11.equals(r7)
            if (r7 == 0) goto L7f
            if (r5 != 0) goto L68
            r5 = r6
            goto L7f
        L68:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "More than one document root found in path map for "
            r0.append(r1)
            r0.append(r11)
            java.lang.String r11 = r0.toString()
            r10.<init>(r11)
            throw r10
        L7f:
            int r4 = r4 + 1
            goto L9
        L82:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.expr.parser.PathMap.getRootForDocument(java.lang.String):net.sf.saxon.expr.parser.PathMap$PathMapRoot");
    }

    public PathMapRoot makeNewRoot(Expression expression) {
        for (PathMapRoot pathMapRoot : this.f99943a) {
            if (expression.isEqual(pathMapRoot.getRootExpression())) {
                return pathMapRoot;
            }
        }
        PathMapRoot pathMapRoot2 = new PathMapRoot(expression);
        this.f99943a.add(pathMapRoot2);
        return pathMapRoot2;
    }

    public PathMapRoot reduceToDownwardsAxes(PathMapRoot pathMapRoot) {
        if (pathMapRoot.isDownwardsOnly) {
            return pathMapRoot;
        }
        if (pathMapRoot.getRootExpression() instanceof ContextItemExpression) {
            PathMapRoot makeNewRoot = makeNewRoot(new RootExpression());
            for (int size = pathMapRoot.f99948a.size() - 1; size >= 0; size--) {
                PathMapArc pathMapArc = pathMapRoot.f99948a.get(size);
                int axis = pathMapArc.getAxis();
                if (axis == 2 || axis == 8) {
                    PathMapNode pathMapNode = new PathMapNode();
                    pathMapNode.f99948a.add(pathMapArc);
                    makeNewRoot.createArc(4, NodeKindTest.ELEMENT, pathMapNode);
                } else {
                    makeNewRoot.createArc(5, pathMapArc.getNodeTest(), pathMapArc.getTarget());
                }
            }
            int i = 0;
            while (true) {
                if (i >= this.f99943a.size()) {
                    break;
                }
                if (this.f99943a.get(i) == pathMapRoot) {
                    this.f99943a.remove(i);
                    break;
                }
                i++;
            }
            pathMapRoot = makeNewRoot;
        }
        IndexedStack<PathMapNode> indexedStack = new IndexedStack<>();
        indexedStack.push(pathMapRoot);
        m62843a(pathMapRoot, indexedStack);
        pathMapRoot.isDownwardsOnly = true;
        return pathMapRoot;
    }

    public void registerPathForVariable(Binding binding, PathMapNodeSet pathMapNodeSet) {
        this.f99944b.put(binding, pathMapNodeSet);
    }

    /* loaded from: classes11.dex */
    public static class PathMapNode {

        /* renamed from: a */
        public List<PathMapArc> f99948a = new ArrayList();

        /* renamed from: b */
        public boolean f99949b;

        /* renamed from: c */
        public boolean f99950c;

        /* renamed from: d */
        public boolean f99951d;

        public boolean allPathsAreWithinStreamableSnapshot() {
            if (hasUnknownDependencies() || isReturnable() || isAtomized()) {
                return false;
            }
            for (PathMapArc pathMapArc : this.f99948a) {
                int axis = pathMapArc.getAxis();
                if (axis == 2) {
                    PathMapNode target = pathMapArc.getTarget();
                    if (target.isReturnable()) {
                        return false;
                    }
                    if (target.getArcs().length != 0 && !target.allPathsAreWithinStreamableSnapshot()) {
                        return false;
                    }
                } else {
                    if (axis != 12 && axis != 0 && axis != 1 && axis != 9) {
                        return false;
                    }
                    PathMapNode target2 = pathMapArc.getTarget();
                    if (target2.isAtomized() || !target2.allPathsAreWithinStreamableSnapshot()) {
                        return false;
                    }
                }
            }
            return true;
        }

        public PathMapNode createArc(int i, NodeTest nodeTest) {
            for (PathMapArc pathMapArc : this.f99948a) {
                if (pathMapArc.getAxis() == i && pathMapArc.getNodeTest().equals(nodeTest)) {
                    return pathMapArc.getTarget();
                }
            }
            PathMapNode pathMapNode = new PathMapNode();
            this.f99948a.add(new PathMapArc(i, nodeTest, pathMapNode));
            return pathMapNode;
        }

        public PathMapArc[] getArcs() {
            List<PathMapArc> list = this.f99948a;
            return (PathMapArc[]) list.toArray(new PathMapArc[list.size()]);
        }

        public boolean hasReachableReturnables() {
            if (isReturnable()) {
                return true;
            }
            Iterator<PathMapArc> it2 = this.f99948a.iterator();
            while (it2.hasNext()) {
                if (it2.next().getTarget().hasReachableReturnables()) {
                    return true;
                }
            }
            return false;
        }

        public boolean hasUnknownDependencies() {
            return this.f99951d;
        }

        public boolean isAtomized() {
            return this.f99950c;
        }

        public boolean isReturnable() {
            return this.f99949b;
        }

        public void setAtomized() {
            this.f99950c = true;
        }

        public void setHasUnknownDependencies() {
            this.f99951d = true;
        }

        public void setReturnable(boolean z) {
            this.f99949b = z;
        }

        public void createArc(int i, NodeTest nodeTest, PathMapNode pathMapNode) {
            for (PathMapArc pathMapArc : this.f99948a) {
                if (pathMapArc.getAxis() == i && pathMapArc.getNodeTest().equals(nodeTest) && pathMapArc.getTarget() == pathMapNode) {
                    pathMapArc.getTarget().setReturnable(pathMapArc.getTarget().isReturnable() || pathMapNode.isReturnable());
                    if (pathMapNode.isAtomized()) {
                        pathMapArc.getTarget().setAtomized();
                        return;
                    }
                    return;
                }
            }
            this.f99948a.add(new PathMapArc(i, nodeTest, pathMapNode));
        }
    }
}
