package net.p110sf.saxon.trans.packages;

import javax.xml.transform.Source;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.style.StylesheetPackage;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public interface IPackageLoader {
    StylesheetPackage loadPackage(Source source) throws XPathException;

    StylesheetPackage loadPackageDoc(NodeInfo nodeInfo) throws XPathException;
}
