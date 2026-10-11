package org.jsoup.nodes;

import com.sunia.HTREnginev2.bzo;
import java.io.IOException;
import org.jsoup.helper.Validate;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Document;

/* loaded from: classes13.dex */
public class DocumentType extends bzo {
    public static final String PUBLIC_KEY = "PUBLIC";
    public static final String SYSTEM_KEY = "SYSTEM";

    /* renamed from: o */
    public static final String f114072o = "name";

    /* renamed from: p */
    public static final String f114073p = "pubSysKey";

    /* renamed from: q */
    public static final String f114074q = "publicId";

    /* renamed from: r */
    public static final String f114075r = "systemId";

    public DocumentType(String str, String str2, String str3) {
        Validate.notNull(str);
        Validate.notNull(str2);
        Validate.notNull(str3);
        attr("name", str);
        attr(f114074q, str2);
        attr(f114075r, str3);
        m71123b();
    }

    /* renamed from: b */
    private void m71123b() {
        String str;
        if (m71124j(f114074q)) {
            str = PUBLIC_KEY;
        } else if (!m71124j(f114075r)) {
            return;
        } else {
            str = SYSTEM_KEY;
        }
        attr(f114073p, str);
    }

    @Override // com.sunia.HTREnginev2.bzo, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ String absUrl(String str) {
        return super.absUrl(str);
    }

    @Override // com.sunia.HTREnginev2.bzo, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ String attr(String str) {
        return super.attr(str);
    }

    @Override // com.sunia.HTREnginev2.bzo, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ String baseUri() {
        return super.baseUri();
    }

    @Override // com.sunia.HTREnginev2.bzo, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ int childNodeSize() {
        return super.childNodeSize();
    }

    @Override // com.sunia.HTREnginev2.bzo, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ Node empty() {
        return super.empty();
    }

    @Override // org.jsoup.nodes.Node
    /* renamed from: f */
    public void mo71115f(Appendable appendable, int i, Document.OutputSettings outputSettings) throws IOException {
        appendable.append((outputSettings.syntax() != Document.OutputSettings.Syntax.html || m71124j(f114074q) || m71124j(f114075r)) ? "<!DOCTYPE" : "<!doctype");
        if (m71124j("name")) {
            appendable.append(" ").append(attr("name"));
        }
        if (m71124j(f114073p)) {
            appendable.append(" ").append(attr(f114073p));
        }
        if (m71124j(f114074q)) {
            appendable.append(" \"").append(attr(f114074q)).append('\"');
        }
        if (m71124j(f114075r)) {
            appendable.append(" \"").append(attr(f114075r)).append('\"');
        }
        appendable.append('>');
    }

    @Override // org.jsoup.nodes.Node
    /* renamed from: g */
    public void mo71116g(Appendable appendable, int i, Document.OutputSettings outputSettings) {
    }

    @Override // com.sunia.HTREnginev2.bzo, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ boolean hasAttr(String str) {
        return super.hasAttr(str);
    }

    /* renamed from: j */
    public final boolean m71124j(String str) {
        return !StringUtil.isBlank(attr(str));
    }

    public String name() {
        return attr("name");
    }

    @Override // org.jsoup.nodes.Node
    public String nodeName() {
        return "#doctype";
    }

    public String publicId() {
        return attr(f114074q);
    }

    @Override // com.sunia.HTREnginev2.bzo, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ Node removeAttr(String str) {
        return super.removeAttr(str);
    }

    public void setPubSysKey(String str) {
        if (str != null) {
            attr(f114073p, str);
        }
    }

    public String systemId() {
        return attr(f114075r);
    }

    @Override // com.sunia.HTREnginev2.bzo, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ Node attr(String str, String str2) {
        return super.attr(str, str2);
    }
}
