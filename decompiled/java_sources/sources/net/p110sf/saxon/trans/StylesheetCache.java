package net.p110sf.saxon.trans;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.s9api.XsltExecutable;

/* loaded from: classes11.dex */
public class StylesheetCache {

    /* renamed from: a */
    public final Map<String, XsltExecutable> f102352a = new ConcurrentHashMap();

    /* renamed from: b */
    public final Map<String, XsltExecutable> f102353b = new ConcurrentHashMap();

    /* renamed from: c */
    public final Map<NodeInfo, XsltExecutable> f102354c = new ConcurrentHashMap();

    public XsltExecutable getStylesheetByLocation(String str) {
        return this.f102353b.get(str);
    }

    public XsltExecutable getStylesheetByNode(NodeInfo nodeInfo) {
        return this.f102354c.get(nodeInfo);
    }

    public XsltExecutable getStylesheetByText(String str) {
        return this.f102352a.get(str);
    }

    public void setStylesheetByLocation(String str, XsltExecutable xsltExecutable) {
        this.f102353b.put(str, xsltExecutable);
    }

    public void setStylesheetByNode(NodeInfo nodeInfo, XsltExecutable xsltExecutable) {
        this.f102354c.put(nodeInfo, xsltExecutable);
    }

    public void setStylesheetByText(String str, XsltExecutable xsltExecutable) {
        this.f102352a.put(str, xsltExecutable);
    }
}
