package net.p110sf.saxon.expr.accum;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.om.TreeInfo;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.tiny.TinyTree;
import net.p110sf.saxon.tree.wrapper.VirtualCopy;
import net.p110sf.saxon.tree.wrapper.VirtualTreeInfo;

/* loaded from: classes11.dex */
public class AccumulatorManager {

    /* renamed from: c */
    public static final AccumulatorData f99461c = new AccumulatorData(null);

    /* renamed from: a */
    public final transient WeakHashMap<TreeInfo, Map<Accumulator, IAccumulatorData>> f99462a = new WeakHashMap<>();

    /* renamed from: b */
    public final transient WeakHashMap<TreeInfo, Set<? extends Accumulator>> f99463b = new WeakHashMap<>();

    public synchronized void addAccumulatorData(TreeInfo treeInfo, Accumulator accumulator, IAccumulatorData iAccumulatorData) {
        Map<Accumulator, IAccumulatorData> map = this.f99462a.get(treeInfo);
        if (map == null) {
            map = new HashMap<>();
            this.f99462a.put(treeInfo, map);
        } else if (map.get(accumulator) != null) {
            return;
        }
        map.put(accumulator, iAccumulatorData);
    }

    public synchronized IAccumulatorData getAccumulatorData(TreeInfo treeInfo, Accumulator accumulator, XPathContext xPathContext) throws XPathException {
        Map<Accumulator, IAccumulatorData> map = this.f99462a.get(treeInfo);
        if (map != null) {
            IAccumulatorData iAccumulatorData = map.get(accumulator);
            if (iAccumulatorData != null) {
                if (iAccumulatorData != f99461c) {
                    return iAccumulatorData;
                }
                throw new XPathException("Accumulator " + accumulator.getAccumulatorName().getDisplayName() + " requires access to its own value", "XTDE3400");
            }
        } else {
            map = new HashMap<>();
            this.f99462a.put(treeInfo, map);
        }
        map.put(accumulator, f99461c);
        if ((treeInfo instanceof VirtualTreeInfo) && ((VirtualTreeInfo) treeInfo).isCopyAccumulators()) {
            VirtualAccumulatorData virtualAccumulatorData = new VirtualAccumulatorData(getAccumulatorData(((VirtualCopy) treeInfo.getRootNode()).getOriginalNode().getTreeInfo(), accumulator, xPathContext));
            map.put(accumulator, virtualAccumulatorData);
            return virtualAccumulatorData;
        }
        if ((treeInfo instanceof TinyTree) && ((TinyTree) treeInfo).getCopiedFrom() != null) {
            return new PathMappedAccumulatorData(getAccumulatorData(((TinyTree) treeInfo).getCopiedFrom().getTreeInfo(), accumulator, xPathContext), ((TinyTree) treeInfo).getCopiedFrom());
        }
        AccumulatorData accumulatorData = new AccumulatorData(accumulator);
        XPathContextMajor newCleanContext = xPathContext.newCleanContext();
        newCleanContext.setCurrentComponent(accumulator.getDeclaringComponent());
        try {
            accumulatorData.buildIndex(treeInfo.getRootNode(), newCleanContext);
            map.put(accumulator, accumulatorData);
            return accumulatorData;
        } catch (XPathException e) {
            FailedAccumulatorData failedAccumulatorData = new FailedAccumulatorData(accumulator, e);
            map.put(accumulator, failedAccumulatorData);
            return failedAccumulatorData;
        }
    }

    public Set<? extends Accumulator> getApplicableAccumulators(TreeInfo treeInfo) {
        return this.f99463b.get(treeInfo);
    }

    public boolean isApplicable(TreeInfo treeInfo, Accumulator accumulator) {
        Set<? extends Accumulator> set = this.f99463b.get(treeInfo);
        return set == null || set.contains(accumulator);
    }

    public void setApplicableAccumulators(TreeInfo treeInfo, Set<? extends Accumulator> set) {
        this.f99463b.put(treeInfo, set);
    }
}
