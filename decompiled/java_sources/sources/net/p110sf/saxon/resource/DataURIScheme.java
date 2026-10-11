package net.p110sf.saxon.resource;

import com.bumptech.glide.load.model.DataUrlLoader;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import java.net.URI;
import java.nio.charset.StandardCharsets;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.lib.Resource;
import net.p110sf.saxon.resource.AbstractResourceCollection;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.Base64BinaryValue;

/* loaded from: classes11.dex */
public class DataURIScheme {

    /* renamed from: a */
    public static final /* synthetic */ boolean f101277a = false;

    /* renamed from: a */
    public static String m63619a(String str) {
        for (String str2 : str.split(AndroidTreeView.f47214k)) {
            if (str2.startsWith("charset=")) {
                return str2.substring(8);
            }
        }
        return null;
    }

    /* renamed from: b */
    public static String m63620b(String str) {
        int indexOf = str.indexOf(59);
        return indexOf < 0 ? str : str.substring(0, indexOf);
    }

    /* renamed from: c */
    public static byte[] m63621c(String str) {
        return str.getBytes(StandardCharsets.UTF_8);
    }

    public static Resource decode(URI uri) throws XPathException {
        String schemeSpecificPart = uri.getSchemeSpecificPart();
        int indexOf = schemeSpecificPart.indexOf(44);
        if (indexOf < 0) {
            throw new IllegalArgumentException("Missing comma in data URI");
        }
        String substring = schemeSpecificPart.substring(0, indexOf);
        String substring2 = schemeSpecificPart.substring(indexOf + 1);
        boolean endsWith = substring.endsWith(DataUrlLoader.f14861c);
        if (endsWith) {
            indexOf -= 7;
        }
        String substring3 = substring.substring(0, indexOf);
        if (endsWith) {
            try {
                byte[] decode = Base64BinaryValue.decode(StringView.tidy(substring2));
                BinaryResource binaryResource = new BinaryResource(uri.toString(), substring3, decode);
                binaryResource.setData(decode);
                return binaryResource;
            } catch (XPathException e) {
                throw new IllegalArgumentException(e.getMessage());
            }
        }
        String m63619a = m63619a(substring3);
        if (m63619a == null) {
            m63619a = "US-ASCII";
        }
        byte[] m63621c = m63621c(substring2);
        AbstractResourceCollection.InputDetails inputDetails = new AbstractResourceCollection.InputDetails();
        inputDetails.resourceUri = uri.toString();
        inputDetails.contentType = m63620b(substring3);
        inputDetails.encoding = m63619a;
        inputDetails.binaryContent = m63621c;
        inputDetails.onError = 1;
        inputDetails.parseOptions = new ParseOptions();
        return new UnparsedTextResource(inputDetails);
    }
}
