package net.p110sf.saxon.serialize;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import java.io.IOException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.str.StringConstants;

/* loaded from: classes11.dex */
public class XHTML1Emitter extends XMLEmitter {

    /* renamed from: q */
    public static Set<String> f101616q;

    /* renamed from: r */
    public static final String[] f101617r;

    static {
        HashSet hashSet = new HashSet(31);
        f101616q = hashSet;
        String[] strArr = {"area", gon.f71271X, "basefont", "br", "col", "embed", TypedValues.AttributesType.S_FRAME, "hr", "img", "input", "isindex", "link", "meta", Constants.ELEMNAME_PARAMVARIABLE_STRING};
        f101617r = strArr;
        Collections.addAll(hashSet, strArr);
    }

    /* renamed from: l */
    public final boolean m63856l(NodeName nodeName) {
        return nodeName.hasURI("http://www.w3.org/1999/xhtml");
    }

    @Override // net.p110sf.saxon.serialize.XMLEmitter
    public void writeEmptyElementTagCloser(String str, NodeName nodeName) throws IOException {
        if (m63856l(nodeName) && f101616q.contains(nodeName.getLocalPart())) {
            this.writer.writeAscii(StringConstants.EMPTY_TAG_END_XHTML);
            return;
        }
        this.writer.writeAscii(StringConstants.EMPTY_TAG_MIDDLE);
        this.writer.write(str);
        this.writer.writeCodePoint(62);
    }
}
