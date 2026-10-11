package net.p110sf.saxon.serialize;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.StringTokenizer;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.lib.SerializerFactory;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class CharacterMapIndex implements Iterable<CharacterMap> {

    /* renamed from: e */
    public HashMap<StructuredQName, CharacterMap> f101500e = new HashMap<>(10);

    public CharacterMapIndex copy() {
        CharacterMapIndex characterMapIndex = new CharacterMapIndex();
        characterMapIndex.f101500e = new HashMap<>(this.f101500e);
        return characterMapIndex;
    }

    public CharacterMap getCharacterMap(StructuredQName structuredQName) {
        return this.f101500e.get(structuredQName);
    }

    public boolean isEmpty() {
        return this.f101500e.isEmpty();
    }

    @Override // java.lang.Iterable
    public Iterator<CharacterMap> iterator() {
        return this.f101500e.values().iterator();
    }

    public CharacterMapExpander makeCharacterMapExpander(String str, Receiver receiver, SerializerFactory serializerFactory) throws XPathException {
        ArrayList arrayList = new ArrayList(5);
        StringTokenizer stringTokenizer = new StringTokenizer(str, " \t\n\r", false);
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            CharacterMap characterMap = getCharacterMap(StructuredQName.fromClarkName(nextToken));
            if (characterMap == null) {
                throw new XPathException("Character map '" + nextToken + "' has not been defined", "SEPM0016");
            }
            arrayList.add(characterMap);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        CharacterMapExpander newCharacterMapExpander = serializerFactory.newCharacterMapExpander(receiver);
        if (arrayList.size() == 1) {
            newCharacterMapExpander.setCharacterMap((CharacterMap) arrayList.get(0));
            return newCharacterMapExpander;
        }
        newCharacterMapExpander.setCharacterMap(new CharacterMap(arrayList));
        return newCharacterMapExpander;
    }

    public void putCharacterMap(StructuredQName structuredQName, CharacterMap characterMap) {
        this.f101500e.put(structuredQName, characterMap);
    }
}
