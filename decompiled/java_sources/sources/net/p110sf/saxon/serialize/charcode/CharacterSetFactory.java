package net.p110sf.saxon.serialize.charcode;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.nio.charset.Charset;
import java.nio.charset.IllegalCharsetNameException;
import java.nio.charset.UnsupportedCharsetException;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.transpile.CSharp;
import org.apache.commons.collections4.MapUtils;

/* loaded from: classes11.dex */
public class CharacterSetFactory {

    /* renamed from: a */
    public final HashMap<String, CharacterSet> f101645a;

    public CharacterSetFactory() {
        HashMap<String, CharacterSet> hashMap = new HashMap<>(10);
        this.f101645a = hashMap;
        hashMap.put("utf8", UTF8CharacterSet.getInstance());
        hashMap.put("utf16", UTF16CharacterSet.getInstance());
        ASCIICharacterSet aSCIICharacterSet = ASCIICharacterSet.getInstance();
        hashMap.put("ascii", aSCIICharacterSet);
        hashMap.put("iso646", aSCIICharacterSet);
        hashMap.put("usascii", aSCIICharacterSet);
        hashMap.put("iso88591", ISO88591CharacterSet.getInstance());
    }

    /* renamed from: a */
    public static String m63876a(String str) {
        return str.replace("-", "").replace("_", "").toLowerCase();
    }

    public static void main(String[] strArr) throws Exception {
        System.err.println("Available Character Sets in the java.nio package for this Java VM:");
        for (String str : Charset.availableCharsets().keySet()) {
            System.err.println(MapUtils.f104930a + str);
        }
        System.err.println("Registered Character Sets in Saxon:");
        for (Map.Entry<String, CharacterSet> entry : new CharacterSetFactory().f101645a.entrySet()) {
            System.err.println(MapUtils.f104930a + ((Object) entry.getKey()) + CloudStorageConstants.OPERATION_EQUAL + entry.getValue().getClass().getName());
        }
    }

    public CharacterSet getCharacterSet(Properties properties) throws XPathException {
        String property = properties.getProperty("encoding");
        if (property == null) {
            return UTF8CharacterSet.getInstance();
        }
        return getCharacterSet(property);
    }

    public void setCharacterSetImplementation(String str, CharacterSet characterSet) {
        this.f101645a.put(m63876a(str), characterSet);
    }

    public CharacterSet getCharacterSet(String str) throws XPathException {
        if (str == null) {
            return UTF8CharacterSet.getInstance();
        }
        String m63876a = m63876a(str);
        CharacterSet characterSet = this.f101645a.get(m63876a);
        if (characterSet != null) {
            return characterSet;
        }
        CSharp.emitCode("return unknownEncoding(encoding);");
        try {
            JavaCharacterSet makeCharSet = JavaCharacterSet.makeCharSet(Charset.forName(str));
            this.f101645a.put(m63876a, makeCharSet);
            return makeCharSet;
        } catch (IllegalCharsetNameException unused) {
            throw new XPathException("Invalid encoding name: " + str, "SESU0007");
        } catch (UnsupportedCharsetException unused2) {
            throw new XPathException("Unknown encoding requested: " + str, "SESU0007");
        }
    }
}
