package org.apache.xerces.impl.p117xs.traversers;

import com.sunia.HTREnginev2.tmo;
import java.util.Locale;
import org.apache.xerces.impl.p117xs.SchemaGrammar;
import org.apache.xerces.impl.p117xs.SchemaSymbols;
import org.apache.xerces.impl.p117xs.XSDeclarationPool;
import org.apache.xerces.impl.p117xs.XSElementDecl;
import org.apache.xerces.impl.p117xs.XSParticleDecl;
import org.apache.xerces.p118xs.XSObject;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.util.XMLChar;
import org.w3c.dom.Attr;
import org.w3c.dom.Element;

/* renamed from: org.apache.xerces.impl.xs.traversers.c */
/* loaded from: classes13.dex */
public class C20058c extends AbstractC20056a {

    /* renamed from: o */
    public final XSElementDecl f113227o;

    /* renamed from: p */
    public boolean f113228p;

    public C20058c(XSDHandler xSDHandler, XSAttributeChecker xSAttributeChecker) {
        super(xSDHandler, xSAttributeChecker);
        this.f113227o = new XSElementDecl();
    }

    @Override // org.apache.xerces.impl.p117xs.traversers.AbstractC20056a
    /* renamed from: l */
    public void mo70453l(SymbolTable symbolTable, boolean z, Locale locale) {
        super.mo70453l(symbolTable, z, locale);
        this.f113228p = true;
    }

    /* renamed from: q */
    public XSElementDecl m70463q(Element element, tmo tmoVar, SchemaGrammar schemaGrammar) {
        Object[] checkAttributes = this.f113218c.checkAttributes(element, true, tmoVar);
        XSElementDecl m70466t = m70466t(element, checkAttributes, tmoVar, schemaGrammar, true, null);
        this.f113218c.returnAttrArray(checkAttributes, tmoVar);
        return m70466t;
    }

    /* renamed from: r */
    public XSParticleDecl m70464r(Element element, tmo tmoVar, SchemaGrammar schemaGrammar, int i, XSObject xSObject) {
        XSDeclarationPool xSDeclarationPool = this.f113216a.fDeclPool;
        XSParticleDecl particleDecl = xSDeclarationPool != null ? xSDeclarationPool.getParticleDecl() : new XSParticleDecl();
        if (!this.f113228p) {
            m70465s(particleDecl, element, tmoVar, schemaGrammar, i, xSObject, null);
            if (particleDecl.fType == 0) {
                return null;
            }
            return particleDecl;
        }
        particleDecl.fType = (short) 1;
        Attr attributeNode = element.getAttributeNode(SchemaSymbols.ATT_MINOCCURS);
        if (attributeNode != null) {
            try {
                int parseInt = Integer.parseInt(XMLChar.trim(attributeNode.getValue()));
                if (parseInt >= 0) {
                    particleDecl.fMinOccurs = parseInt;
                }
            } catch (NumberFormatException unused) {
            }
        }
        this.f113216a.m70388a0(element, tmoVar, i, xSObject, particleDecl);
        return particleDecl;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00b4  */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m70465s(org.apache.xerces.impl.p117xs.XSParticleDecl r19, org.w3c.dom.Element r20, com.sunia.HTREnginev2.tmo r21, org.apache.xerces.impl.p117xs.SchemaGrammar r22, int r23, org.apache.xerces.p118xs.XSObject r24, java.lang.String[] r25) {
        /*
            Method dump skipped, instructions count: 238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.p117xs.traversers.C20058c.m70465s(org.apache.xerces.impl.xs.XSParticleDecl, org.w3c.dom.Element, com.sunia.HTREnginev2.tmo, org.apache.xerces.impl.xs.SchemaGrammar, int, org.apache.xerces.xs.XSObject, java.lang.String[]):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0313  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0348  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x037d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x037e  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x02b2  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0188 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x027e  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x029a  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x02b5  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x02c6 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x02d3 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x02e5  */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v17, types: [org.apache.xerces.xs.XSObject] */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v22, types: [org.apache.xerces.xs.XSTypeDefinition] */
    /* JADX WARN: Type inference failed for: r0v30, types: [org.apache.xerces.impl.xs.XSComplexTypeDecl] */
    /* JADX WARN: Type inference failed for: r0v31, types: [org.apache.xerces.xs.XSTypeDefinition] */
    /* JADX WARN: Type inference failed for: r0v56 */
    /* JADX WARN: Type inference failed for: r0v57 */
    /* JADX WARN: Type inference failed for: r0v61 */
    /* JADX WARN: Type inference failed for: r0v62 */
    /* JADX WARN: Type inference failed for: r0v63 */
    /* JADX WARN: Type inference failed for: r1v32, types: [org.apache.xerces.impl.xs.util.XSObjectListImpl] */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.lang.Object[], org.apache.xerces.impl.dv.ValidatedInfo, org.apache.xerces.impl.xs.XSElementDecl] */
    /* JADX WARN: Type inference failed for: r21v0, types: [org.apache.xerces.impl.xs.traversers.c, org.apache.xerces.impl.xs.traversers.a] */
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.xerces.impl.p117xs.XSElementDecl m70466t(org.w3c.dom.Element r22, java.lang.Object[] r23, com.sunia.HTREnginev2.tmo r24, org.apache.xerces.impl.p117xs.SchemaGrammar r25, boolean r26, org.apache.xerces.p118xs.XSObject r27) {
        /*
            Method dump skipped, instructions count: 946
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.p117xs.traversers.C20058c.m70466t(org.w3c.dom.Element, java.lang.Object[], com.sunia.HTREnginev2.tmo, org.apache.xerces.impl.xs.SchemaGrammar, boolean, org.apache.xerces.xs.XSObject):org.apache.xerces.impl.xs.XSElementDecl");
    }
}
