package net.p110sf.saxon.om;

import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.xml.transform.Source;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.tree.util.DocumentNumberAllocator;

/* loaded from: classes11.dex */
public class GenericTreeInfo implements TreeInfo, Source {

    /* renamed from: e */
    public Configuration f100793e;

    /* renamed from: f */
    public String f100794f;

    /* renamed from: g */
    public Map<String, Object> f100795g;

    /* renamed from: h */
    public long f100796h = -1;

    /* renamed from: i */
    public SpaceStrippingRule f100797i = NoElementsSpaceStrippingRule.getInstance();
    protected NodeInfo root;

    public GenericTreeInfo(Configuration configuration) {
        this.f100793e = configuration;
    }

    @Override // net.p110sf.saxon.om.TreeInfo
    public Configuration getConfiguration() {
        return this.f100793e;
    }

    @Override // net.p110sf.saxon.om.TreeInfo
    public long getDocumentNumber() {
        if (this.f100796h == -1) {
            DocumentNumberAllocator documentNumberAllocator = this.f100793e.getDocumentNumberAllocator();
            synchronized (this) {
                if (this.f100796h == -1) {
                    this.f100796h = documentNumberAllocator.allocateDocumentNumber();
                }
            }
        }
        return this.f100796h;
    }

    public String getPublicId() {
        return null;
    }

    @Override // net.p110sf.saxon.om.TreeInfo
    public NodeInfo getRootNode() {
        return this.root;
    }

    @Override // net.p110sf.saxon.om.TreeInfo
    public SpaceStrippingRule getSpaceStrippingRule() {
        return this.f100797i;
    }

    @Override // javax.xml.transform.Source
    public String getSystemId() {
        return this.f100794f;
    }

    @Override // net.p110sf.saxon.om.TreeInfo
    public String[] getUnparsedEntity(String str) {
        return null;
    }

    @Override // net.p110sf.saxon.om.TreeInfo
    public Iterator<String> getUnparsedEntityNames() {
        return Collections.emptyIterator();
    }

    @Override // net.p110sf.saxon.om.TreeInfo
    public Object getUserData(String str) {
        Map<String, Object> map = this.f100795g;
        return map == null ? map : map.get(str);
    }

    public boolean isStreamed() {
        return false;
    }

    @Override // net.p110sf.saxon.om.TreeInfo
    public NodeInfo selectID(String str, boolean z) {
        return null;
    }

    public void setConfiguration(Configuration configuration) {
        this.f100793e = configuration;
    }

    public synchronized void setDocumentNumber(long j) {
        this.f100796h = j;
    }

    public void setRootNode(NodeInfo nodeInfo) {
        if (nodeInfo.getParent() != null) {
            throw new IllegalArgumentException("The root node of a tree must be parentless");
        }
        this.root = nodeInfo;
    }

    @Override // net.p110sf.saxon.om.TreeInfo
    public void setSpaceStrippingRule(SpaceStrippingRule spaceStrippingRule) {
        this.f100797i = spaceStrippingRule;
    }

    @Override // javax.xml.transform.Source
    public void setSystemId(String str) {
        this.f100794f = str;
    }

    @Override // net.p110sf.saxon.om.TreeInfo
    public void setUserData(String str, Object obj) {
        if (this.f100795g == null) {
            this.f100795g = new HashMap();
        }
        this.f100795g.put(str, obj);
    }

    public GenericTreeInfo(Configuration configuration, NodeInfo nodeInfo) {
        this.f100793e = configuration;
        setRootNode(nodeInfo);
    }
}
