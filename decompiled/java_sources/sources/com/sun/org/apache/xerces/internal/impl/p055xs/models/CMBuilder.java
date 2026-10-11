package com.sun.org.apache.xerces.internal.impl.p055xs.models;

import com.sun.org.apache.xerces.internal.impl.dtd.models.CMNode;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSComplexTypeDecl;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSDeclarationPool;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSElementDecl;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSModelGroupImpl;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSParticleDecl;
import com.sun.org.apache.xerces.internal.p056xs.XSTerm;

/* loaded from: classes10.dex */
public class CMBuilder {
    private static XSEmptyCM fEmptyCM = new XSEmptyCM();
    private XSDeclarationPool fDeclPool = null;
    private int fLeafCount;
    private CMNodeFactory fNodeFactory;
    private int fParticleCount;

    public CMBuilder(CMNodeFactory cMNodeFactory) {
        this.fNodeFactory = cMNodeFactory;
    }

    private CMNode buildSyntaxTree(XSParticleDecl xSParticleDecl) {
        int i;
        int i2 = xSParticleDecl.fMaxOccurs;
        int i3 = xSParticleDecl.fMinOccurs;
        short s = xSParticleDecl.fType;
        if (s == 2 || s == 1) {
            CMNodeFactory cMNodeFactory = this.fNodeFactory;
            XSTerm xSTerm = xSParticleDecl.fValue;
            int i4 = this.fParticleCount;
            this.fParticleCount = i4 + 1;
            int i5 = this.fLeafCount;
            this.fLeafCount = i5 + 1;
            return expandContentModel(cMNodeFactory.getCMLeafNode(s, xSTerm, i4, i5), i3, i2);
        }
        CMNode cMNode = null;
        if (s != 3) {
            return null;
        }
        XSModelGroupImpl xSModelGroupImpl = (XSModelGroupImpl) xSParticleDecl.fValue;
        int i6 = 0;
        boolean z = false;
        while (true) {
            i = xSModelGroupImpl.fParticleCount;
            if (i6 >= i) {
                break;
            }
            CMNode buildSyntaxTree = buildSyntaxTree(xSModelGroupImpl.fParticles[i6]);
            if (buildSyntaxTree != null) {
                if (cMNode == null) {
                    cMNode = buildSyntaxTree;
                } else {
                    cMNode = this.fNodeFactory.getCMBinOpNode(xSModelGroupImpl.fCompositor, cMNode, buildSyntaxTree);
                    z = true;
                }
            }
            i6++;
        }
        if (cMNode == null) {
            return cMNode;
        }
        if (xSModelGroupImpl.fCompositor == 101 && !z && i > 1) {
            cMNode = this.fNodeFactory.getCMUniOpNode(5, cMNode);
        }
        return expandContentModel(cMNode, i3, i2);
    }

    private CMNode copyNode(CMNode cMNode) {
        int type = cMNode.type();
        if (type == 101 || type == 102) {
            XSCMBinOp xSCMBinOp = (XSCMBinOp) cMNode;
            return this.fNodeFactory.getCMBinOpNode(type, copyNode(xSCMBinOp.getLeft()), copyNode(xSCMBinOp.getRight()));
        }
        if (type == 4 || type == 6 || type == 5) {
            return this.fNodeFactory.getCMUniOpNode(type, copyNode(((XSCMUniOp) cMNode).getChild()));
        }
        if (type != 1 && type != 2) {
            return cMNode;
        }
        XSCMLeaf xSCMLeaf = (XSCMLeaf) cMNode;
        CMNodeFactory cMNodeFactory = this.fNodeFactory;
        int type2 = xSCMLeaf.type();
        Object leaf = xSCMLeaf.getLeaf();
        int particleId = xSCMLeaf.getParticleId();
        int i = this.fLeafCount;
        this.fLeafCount = i + 1;
        return cMNodeFactory.getCMLeafNode(type2, leaf, particleId, i);
    }

    private CMNode expandContentModel(CMNode cMNode, int i, int i2) {
        if (i == 1 && i2 == 1) {
            return cMNode;
        }
        if (i == 0 && i2 == 1) {
            return this.fNodeFactory.getCMUniOpNode(5, cMNode);
        }
        if (i == 0 && i2 == -1) {
            return this.fNodeFactory.getCMUniOpNode(4, cMNode);
        }
        if (i == 1 && i2 == -1) {
            return this.fNodeFactory.getCMUniOpNode(6, cMNode);
        }
        if (i2 == -1) {
            return this.fNodeFactory.getCMBinOpNode(102, multiNodes(cMNode, i - 1, true), this.fNodeFactory.getCMUniOpNode(6, cMNode));
        }
        CMNode multiNodes = i > 0 ? multiNodes(cMNode, i, false) : null;
        if (i2 <= i) {
            return multiNodes;
        }
        CMNode cMUniOpNode = this.fNodeFactory.getCMUniOpNode(5, cMNode);
        return multiNodes == null ? multiNodes(cMUniOpNode, i2 - i, false) : this.fNodeFactory.getCMBinOpNode(102, multiNodes, multiNodes(cMUniOpNode, i2 - i, true));
    }

    private CMNode multiNodes(CMNode cMNode, int i, boolean z) {
        if (i == 0) {
            return null;
        }
        if (i == 1) {
            return z ? copyNode(cMNode) : cMNode;
        }
        int i2 = i / 2;
        return this.fNodeFactory.getCMBinOpNode(102, multiNodes(cMNode, i2, z), multiNodes(cMNode, i - i2, true));
    }

    public XSCMValidator createAllCM(XSParticleDecl xSParticleDecl) {
        if (xSParticleDecl.fMaxOccurs == 0) {
            return null;
        }
        XSModelGroupImpl xSModelGroupImpl = (XSModelGroupImpl) xSParticleDecl.fValue;
        XSAllCM xSAllCM = new XSAllCM(xSParticleDecl.fMinOccurs == 0, xSModelGroupImpl.fParticleCount);
        for (int i = 0; i < xSModelGroupImpl.fParticleCount; i++) {
            XSParticleDecl xSParticleDecl2 = xSModelGroupImpl.fParticles[i];
            xSAllCM.addElement((XSElementDecl) xSParticleDecl2.fValue, xSParticleDecl2.fMinOccurs == 0);
        }
        return xSAllCM;
    }

    public XSCMValidator createDFACM(XSParticleDecl xSParticleDecl) {
        this.fLeafCount = 0;
        this.fParticleCount = 0;
        CMNode buildSyntaxTree = buildSyntaxTree(xSParticleDecl);
        if (buildSyntaxTree == null) {
            return null;
        }
        return new XSDFACM(buildSyntaxTree, this.fLeafCount);
    }

    public XSCMValidator getContentModel(XSComplexTypeDecl xSComplexTypeDecl) {
        short contentType = xSComplexTypeDecl.getContentType();
        if (contentType == 1 || contentType == 0) {
            return null;
        }
        XSParticleDecl xSParticleDecl = (XSParticleDecl) xSComplexTypeDecl.getParticle();
        if (xSParticleDecl == null) {
            return fEmptyCM;
        }
        XSCMValidator createAllCM = (xSParticleDecl.fType == 3 && ((XSModelGroupImpl) xSParticleDecl.fValue).fCompositor == 103) ? createAllCM(xSParticleDecl) : createDFACM(xSParticleDecl);
        this.fNodeFactory.resetNodeCount();
        return createAllCM == null ? fEmptyCM : createAllCM;
    }

    public void setDeclPool(XSDeclarationPool xSDeclarationPool) {
        this.fDeclPool = xSDeclarationPool;
    }
}
