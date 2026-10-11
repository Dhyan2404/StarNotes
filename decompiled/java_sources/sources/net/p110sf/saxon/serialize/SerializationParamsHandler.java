package net.p110sf.saxon.serialize;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Properties;
import net.p110sf.saxon.lib.SaxonOutputKeys;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class SerializationParamsHandler {
    public static final String NAMESPACE = "http://www.w3.org/2010/xslt-xquery-serialization";

    /* renamed from: a */
    public Properties f101588a;

    /* renamed from: b */
    public CharacterMap f101589b;

    /* renamed from: c */
    public Location f101590c;

    public SerializationParamsHandler() {
    }

    /* renamed from: a */
    public static String m63848a(NodeInfo nodeInfo, String str) throws XPathException {
        String attributeValue = nodeInfo.getAttributeValue("", str);
        if (attributeValue != null) {
            return attributeValue;
        }
        throw new XPathException("In serialization parameters, attribute @" + str + " is missing on element " + nodeInfo.getDisplayName());
    }

    /* renamed from: b */
    public static void m63849b(NodeInfo nodeInfo, String... strArr) throws XPathException {
        Iterator<AttributeInfo> it2 = nodeInfo.attributes().iterator();
        while (it2.hasNext()) {
            NodeName nodeName = it2.next().getNodeName();
            if ("".equals(nodeName.getURI()) && Arrays.binarySearch(strArr, nodeName.getLocalPart()) < 0) {
                throw new XPathException("In serialization parameters, attribute @" + nodeName.getLocalPart() + " must not appear on element " + nodeInfo.getDisplayName(), "SEPM0017");
            }
        }
    }

    public CharacterMap getCharacterMap() {
        return this.f101589b;
    }

    public SerializationProperties getSerializationProperties() {
        CharacterMapIndex characterMapIndex = new CharacterMapIndex();
        if (this.f101589b != null) {
            characterMapIndex.putCharacterMap(new StructuredQName("", "", "charMap"), this.f101589b);
            this.f101588a.setProperty(SaxonOutputKeys.USE_CHARACTER_MAPS, "charMap");
        }
        return new SerializationProperties(this.f101588a, characterMapIndex);
    }

    public void setLocator(Location location) {
        this.f101590c = location;
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x0146, code lost:
    
        throw new net.p110sf.saxon.trans.XPathException("Invalid child of use-character-maps: " + r10.getDisplayName(), "SEPM0017");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setSerializationParams(net.p110sf.saxon.om.NodeInfo r20) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 541
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.serialize.SerializationParamsHandler.setSerializationParams(net.sf.saxon.om.NodeInfo):void");
    }

    public SerializationParamsHandler(Properties properties) {
        this.f101588a = properties;
    }
}
