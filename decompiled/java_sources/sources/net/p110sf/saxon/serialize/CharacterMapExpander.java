package net.p110sf.saxon.serialize;

import java.util.ArrayList;
import net.p110sf.saxon.event.ProxyReceiver;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.ReceiverOption;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public class CharacterMapExpander extends ProxyReceiver {

    /* renamed from: e */
    public CharacterMap f101498e;

    /* renamed from: f */
    public boolean f101499f;

    public CharacterMapExpander(Receiver receiver) {
        super(receiver);
        this.f101499f = true;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (ReceiverOption.contains(i, 2)) {
            this.nextReceiver.characters(unicodeString, location, i);
            return;
        }
        UnicodeString map = this.f101498e.map(unicodeString, this.f101499f);
        if (map != unicodeString) {
            i = (i | 256) & (-5);
        }
        this.nextReceiver.characters(map, location, i);
    }

    public CharacterMap getCharacterMap() {
        return this.f101498e;
    }

    public void setCharacterMap(CharacterMap characterMap) {
        this.f101498e = characterMap;
    }

    public void setUseNullMarkers(boolean z) {
        this.f101499f = z;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        ArrayList arrayList = new ArrayList(attributeMap.size());
        for (AttributeInfo attributeInfo : attributeMap) {
            UnicodeString tidy = StringView.m63901of(attributeInfo.getValue()).tidy();
            if (ReceiverOption.contains(attributeInfo.getProperties(), 2)) {
                arrayList.add(attributeInfo);
            } else {
                UnicodeString map = this.f101498e.map(tidy, this.f101499f);
                if (map != tidy) {
                    arrayList.add(new AttributeInfo(attributeInfo.getNodeName(), attributeInfo.getType(), map.toString(), attributeInfo.getLocation(), (attributeInfo.getProperties() | 256) & (-5)));
                } else {
                    arrayList.add(attributeInfo);
                }
            }
        }
        this.nextReceiver.startElement(nodeName, schemaType, SequenceTool.attributeMapFromList(arrayList), namespaceMap, location, i);
    }
}
