package org.apache.xmlbeans;

import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import java.util.HashMap;
import java.util.Map;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes13.dex */
public class XmlOptionCharEscapeMap {
    public static final int DECIMAL = 1;
    public static final int HEXADECIMAL = 2;
    public static final int PREDEF_ENTITY = 0;
    private static final Map<Character, String> _predefEntities;
    private final Map<Character, String> _charMap = new HashMap();

    static {
        HashMap hashMap = new HashMap();
        _predefEntities = hashMap;
        hashMap.put('<', "&lt;");
        hashMap.put('>', "&gt;");
        hashMap.put('&', "&amp;");
        hashMap.put(Character.valueOf(Chars.QUOTE), "&apos;");
        hashMap.put('\"', SerializerConstants.ENTITY_QUOT);
    }

    public void addMapping(char c, int i) throws XmlException {
        Character valueOf = Character.valueOf(c);
        if (i == 0) {
            String str = _predefEntities.get(valueOf);
            if (str == null) {
                throw new XmlException("XmlOptionCharEscapeMap.addMapping(): the PREDEF_ENTITY mode can only be used for the following characters: <, >, &, \" and '");
            }
            this._charMap.put(valueOf, str);
            return;
        }
        if (i == 1) {
            this._charMap.put(valueOf, "&#" + ((int) c) + AndroidTreeView.f47214k);
            return;
        }
        if (i != 2) {
            throw new XmlException("XmlOptionCharEscapeMap.addMapping(): mode must be PREDEF_ENTITY, DECIMAL or HEXADECIMAL");
        }
        String hexString = Integer.toHexString(c);
        this._charMap.put(valueOf, "&#x" + hexString + AndroidTreeView.f47214k);
    }

    public void addMappings(char c, char c2, int i) throws XmlException {
        if (c > c2) {
            throw new XmlException("XmlOptionCharEscapeMap.addMappings(): ch1 must be <= ch2");
        }
        while (c <= c2) {
            addMapping(c, i);
            c = (char) (c + 1);
        }
    }

    public boolean containsChar(char c) {
        return this._charMap.containsKey(Character.valueOf(c));
    }

    public String getEscapedString(char c) {
        return this._charMap.get(Character.valueOf(c));
    }
}
