package net.p110sf.saxon.lib;

import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public interface Resource {
    String getContentType();

    Item getItem() throws XPathException;

    String getResourceURI();
}
