package org.openxmlformats.schemas.drawingml.x2006.diagram;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlinx.coroutines.DebugKt;
import org.apache.commons.compress.archivers.ArchiveStreamFactory;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STParameterId extends XmlToken {
    public static final Enum ALIGN_TX;

    /* renamed from: AR */
    public static final Enum f115705AR;
    public static final Enum AUTO_TX_ROT;
    public static final Enum BEG_PTS;
    public static final Enum BEG_STY;
    public static final Enum BEND_PT;
    public static final Enum BKPT;
    public static final Enum BK_PT_FIXED_VAL;
    public static final Enum CH_ALIGN;
    public static final Enum CH_DIR;
    public static final Enum CONN_ROUT;
    public static final Enum CONT_DIR;
    public static final Enum CTR_SHP_MAP;
    public static final Enum DIM;
    public static final Enum DST_NODE;
    public static final Enum END_PTS;
    public static final Enum END_STY;
    public static final Enum FALLBACK;
    public static final Enum FLOW_DIR;
    public static final SimpleTypeFactory<STParameterId> Factory;
    public static final Enum GR_DIR;
    public static final Enum HIER_ALIGN;
    public static final Enum HORZ_ALIGN;
    public static final int INT_ALIGN_TX = 48;
    public static final int INT_AR = 42;
    public static final int INT_AUTO_TX_ROT = 31;
    public static final int INT_BEG_PTS = 54;
    public static final int INT_BEG_STY = 11;
    public static final int INT_BEND_PT = 9;
    public static final int INT_BKPT = 35;
    public static final int INT_BK_PT_FIXED_VAL = 38;
    public static final int INT_CH_ALIGN = 4;
    public static final int INT_CH_DIR = 3;
    public static final int INT_CONN_ROUT = 10;
    public static final int INT_CONT_DIR = 34;
    public static final int INT_CTR_SHP_MAP = 15;
    public static final int INT_DIM = 13;
    public static final int INT_DST_NODE = 53;
    public static final int INT_END_PTS = 55;
    public static final int INT_END_STY = 12;
    public static final int INT_FALLBACK = 18;
    public static final int INT_FLOW_DIR = 33;
    public static final int INT_GR_DIR = 32;
    public static final int INT_HIER_ALIGN = 37;
    public static final int INT_HORZ_ALIGN = 1;
    public static final int INT_LIN_DIR = 6;
    public static final int INT_LN_SP_AF_CH_P = 46;
    public static final int INT_LN_SP_AF_PAR_P = 44;
    public static final int INT_LN_SP_CH = 45;
    public static final int INT_LN_SP_PAR = 43;
    public static final int INT_NODE_HORZ_ALIGN = 16;
    public static final int INT_NODE_VERT_ALIGN = 17;
    public static final int INT_OFF = 36;
    public static final int INT_PAR_TX_LTR_ALIGN = 27;
    public static final int INT_PAR_TX_RTL_ALIGN = 28;
    public static final int INT_PYRA_ACCT_BKGD_NODE = 50;
    public static final int INT_PYRA_ACCT_POS = 20;
    public static final int INT_PYRA_ACCT_TX_MAR = 21;
    public static final int INT_PYRA_ACCT_TX_NODE = 51;
    public static final int INT_PYRA_LVL_NODE = 49;
    public static final int INT_ROT_PATH = 14;
    public static final int INT_RT_SHORT_DIST = 47;
    public static final int INT_SEC_CH_ALIGN = 5;
    public static final int INT_SEC_LIN_DIR = 7;
    public static final int INT_SHP_TX_LTR_ALIGN_CH = 29;
    public static final int INT_SHP_TX_RTL_ALIGN_CH = 30;
    public static final int INT_SPAN_ANG = 41;
    public static final int INT_SRC_NODE = 52;
    public static final int INT_ST_ANG = 40;
    public static final int INT_ST_BULLET_LVL = 39;
    public static final int INT_ST_ELEM = 8;
    public static final int INT_TX_ANCHOR_HORZ = 23;
    public static final int INT_TX_ANCHOR_HORZ_CH = 25;
    public static final int INT_TX_ANCHOR_VERT = 24;
    public static final int INT_TX_ANCHOR_VERT_CH = 26;
    public static final int INT_TX_BL_DIR = 22;
    public static final int INT_TX_DIR = 19;
    public static final int INT_VERT_ALIGN = 2;
    public static final Enum LIN_DIR;
    public static final Enum LN_SP_AF_CH_P;
    public static final Enum LN_SP_AF_PAR_P;
    public static final Enum LN_SP_CH;
    public static final Enum LN_SP_PAR;
    public static final Enum NODE_HORZ_ALIGN;
    public static final Enum NODE_VERT_ALIGN;
    public static final Enum OFF;
    public static final Enum PAR_TX_LTR_ALIGN;
    public static final Enum PAR_TX_RTL_ALIGN;
    public static final Enum PYRA_ACCT_BKGD_NODE;
    public static final Enum PYRA_ACCT_POS;
    public static final Enum PYRA_ACCT_TX_MAR;
    public static final Enum PYRA_ACCT_TX_NODE;
    public static final Enum PYRA_LVL_NODE;
    public static final Enum ROT_PATH;
    public static final Enum RT_SHORT_DIST;
    public static final Enum SEC_CH_ALIGN;
    public static final Enum SEC_LIN_DIR;
    public static final Enum SHP_TX_LTR_ALIGN_CH;
    public static final Enum SHP_TX_RTL_ALIGN_CH;
    public static final Enum SPAN_ANG;
    public static final Enum SRC_NODE;
    public static final Enum ST_ANG;
    public static final Enum ST_BULLET_LVL;
    public static final Enum ST_ELEM;
    public static final Enum TX_ANCHOR_HORZ;
    public static final Enum TX_ANCHOR_HORZ_CH;
    public static final Enum TX_ANCHOR_VERT;
    public static final Enum TX_ANCHOR_VERT_CH;
    public static final Enum TX_BL_DIR;
    public static final Enum TX_DIR;
    public static final Enum VERT_ALIGN;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_ALIGN_TX = 48;
        static final int INT_AR = 42;
        static final int INT_AUTO_TX_ROT = 31;
        static final int INT_BEG_PTS = 54;
        static final int INT_BEG_STY = 11;
        static final int INT_BEND_PT = 9;
        static final int INT_BKPT = 35;
        static final int INT_BK_PT_FIXED_VAL = 38;
        static final int INT_CH_ALIGN = 4;
        static final int INT_CH_DIR = 3;
        static final int INT_CONN_ROUT = 10;
        static final int INT_CONT_DIR = 34;
        static final int INT_CTR_SHP_MAP = 15;
        static final int INT_DIM = 13;
        static final int INT_DST_NODE = 53;
        static final int INT_END_PTS = 55;
        static final int INT_END_STY = 12;
        static final int INT_FALLBACK = 18;
        static final int INT_FLOW_DIR = 33;
        static final int INT_GR_DIR = 32;
        static final int INT_HIER_ALIGN = 37;
        static final int INT_HORZ_ALIGN = 1;
        static final int INT_LIN_DIR = 6;
        static final int INT_LN_SP_AF_CH_P = 46;
        static final int INT_LN_SP_AF_PAR_P = 44;
        static final int INT_LN_SP_CH = 45;
        static final int INT_LN_SP_PAR = 43;
        static final int INT_NODE_HORZ_ALIGN = 16;
        static final int INT_NODE_VERT_ALIGN = 17;
        static final int INT_OFF = 36;
        static final int INT_PAR_TX_LTR_ALIGN = 27;
        static final int INT_PAR_TX_RTL_ALIGN = 28;
        static final int INT_PYRA_ACCT_BKGD_NODE = 50;
        static final int INT_PYRA_ACCT_POS = 20;
        static final int INT_PYRA_ACCT_TX_MAR = 21;
        static final int INT_PYRA_ACCT_TX_NODE = 51;
        static final int INT_PYRA_LVL_NODE = 49;
        static final int INT_ROT_PATH = 14;
        static final int INT_RT_SHORT_DIST = 47;
        static final int INT_SEC_CH_ALIGN = 5;
        static final int INT_SEC_LIN_DIR = 7;
        static final int INT_SHP_TX_LTR_ALIGN_CH = 29;
        static final int INT_SHP_TX_RTL_ALIGN_CH = 30;
        static final int INT_SPAN_ANG = 41;
        static final int INT_SRC_NODE = 52;
        static final int INT_ST_ANG = 40;
        static final int INT_ST_BULLET_LVL = 39;
        static final int INT_ST_ELEM = 8;
        static final int INT_TX_ANCHOR_HORZ = 23;
        static final int INT_TX_ANCHOR_HORZ_CH = 25;
        static final int INT_TX_ANCHOR_VERT = 24;
        static final int INT_TX_ANCHOR_VERT_CH = 26;
        static final int INT_TX_BL_DIR = 22;
        static final int INT_TX_DIR = 19;
        static final int INT_VERT_ALIGN = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("horzAlign", 1), new Enum("vertAlign", 2), new Enum("chDir", 3), new Enum("chAlign", 4), new Enum("secChAlign", 5), new Enum("linDir", 6), new Enum("secLinDir", 7), new Enum("stElem", 8), new Enum("bendPt", 9), new Enum("connRout", 10), new Enum("begSty", 11), new Enum("endSty", 12), new Enum("dim", 13), new Enum("rotPath", 14), new Enum("ctrShpMap", 15), new Enum("nodeHorzAlign", 16), new Enum("nodeVertAlign", 17), new Enum(Constants.ELEMNAME_FALLBACK_STRING, 18), new Enum("txDir", 19), new Enum("pyraAcctPos", 20), new Enum("pyraAcctTxMar", 21), new Enum("txBlDir", 22), new Enum("txAnchorHorz", 23), new Enum("txAnchorVert", 24), new Enum("txAnchorHorzCh", 25), new Enum("txAnchorVertCh", 26), new Enum("parTxLTRAlign", 27), new Enum("parTxRTLAlign", 28), new Enum("shpTxLTRAlignCh", 29), new Enum("shpTxRTLAlignCh", 30), new Enum("autoTxRot", 31), new Enum("grDir", 32), new Enum("flowDir", 33), new Enum("contDir", 34), new Enum("bkpt", 35), new Enum(DebugKt.DEBUG_PROPERTY_VALUE_OFF, 36), new Enum("hierAlign", 37), new Enum("bkPtFixedVal", 38), new Enum("stBulletLvl", 39), new Enum("stAng", 40), new Enum("spanAng", 41), new Enum(ArchiveStreamFactory.f105352AR, 42), new Enum("lnSpPar", 43), new Enum("lnSpAfParP", 44), new Enum("lnSpCh", 45), new Enum("lnSpAfChP", 46), new Enum("rtShortDist", 47), new Enum("alignTx", 48), new Enum("pyraLvlNode", 49), new Enum("pyraAcctBkgdNode", 50), new Enum("pyraAcctTxNode", 51), new Enum("srcNode", 52), new Enum("dstNode", 53), new Enum("begPts", 54), new Enum("endPts", 55)});

        private Enum(String str, int i) {
            super(str, i);
        }

        public static Enum forInt(int i) {
            return (Enum) table.forInt(i);
        }

        public static Enum forString(String str) {
            return (Enum) table.forString(str);
        }

        private Object readResolve() {
            return forInt(intValue());
        }
    }

    static {
        SimpleTypeFactory<STParameterId> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stparameterid4fc7type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        HORZ_ALIGN = Enum.forString("horzAlign");
        VERT_ALIGN = Enum.forString("vertAlign");
        CH_DIR = Enum.forString("chDir");
        CH_ALIGN = Enum.forString("chAlign");
        SEC_CH_ALIGN = Enum.forString("secChAlign");
        LIN_DIR = Enum.forString("linDir");
        SEC_LIN_DIR = Enum.forString("secLinDir");
        ST_ELEM = Enum.forString("stElem");
        BEND_PT = Enum.forString("bendPt");
        CONN_ROUT = Enum.forString("connRout");
        BEG_STY = Enum.forString("begSty");
        END_STY = Enum.forString("endSty");
        DIM = Enum.forString("dim");
        ROT_PATH = Enum.forString("rotPath");
        CTR_SHP_MAP = Enum.forString("ctrShpMap");
        NODE_HORZ_ALIGN = Enum.forString("nodeHorzAlign");
        NODE_VERT_ALIGN = Enum.forString("nodeVertAlign");
        FALLBACK = Enum.forString(Constants.ELEMNAME_FALLBACK_STRING);
        TX_DIR = Enum.forString("txDir");
        PYRA_ACCT_POS = Enum.forString("pyraAcctPos");
        PYRA_ACCT_TX_MAR = Enum.forString("pyraAcctTxMar");
        TX_BL_DIR = Enum.forString("txBlDir");
        TX_ANCHOR_HORZ = Enum.forString("txAnchorHorz");
        TX_ANCHOR_VERT = Enum.forString("txAnchorVert");
        TX_ANCHOR_HORZ_CH = Enum.forString("txAnchorHorzCh");
        TX_ANCHOR_VERT_CH = Enum.forString("txAnchorVertCh");
        PAR_TX_LTR_ALIGN = Enum.forString("parTxLTRAlign");
        PAR_TX_RTL_ALIGN = Enum.forString("parTxRTLAlign");
        SHP_TX_LTR_ALIGN_CH = Enum.forString("shpTxLTRAlignCh");
        SHP_TX_RTL_ALIGN_CH = Enum.forString("shpTxRTLAlignCh");
        AUTO_TX_ROT = Enum.forString("autoTxRot");
        GR_DIR = Enum.forString("grDir");
        FLOW_DIR = Enum.forString("flowDir");
        CONT_DIR = Enum.forString("contDir");
        BKPT = Enum.forString("bkpt");
        OFF = Enum.forString(DebugKt.DEBUG_PROPERTY_VALUE_OFF);
        HIER_ALIGN = Enum.forString("hierAlign");
        BK_PT_FIXED_VAL = Enum.forString("bkPtFixedVal");
        ST_BULLET_LVL = Enum.forString("stBulletLvl");
        ST_ANG = Enum.forString("stAng");
        SPAN_ANG = Enum.forString("spanAng");
        f115705AR = Enum.forString(ArchiveStreamFactory.f105352AR);
        LN_SP_PAR = Enum.forString("lnSpPar");
        LN_SP_AF_PAR_P = Enum.forString("lnSpAfParP");
        LN_SP_CH = Enum.forString("lnSpCh");
        LN_SP_AF_CH_P = Enum.forString("lnSpAfChP");
        RT_SHORT_DIST = Enum.forString("rtShortDist");
        ALIGN_TX = Enum.forString("alignTx");
        PYRA_LVL_NODE = Enum.forString("pyraLvlNode");
        PYRA_ACCT_BKGD_NODE = Enum.forString("pyraAcctBkgdNode");
        PYRA_ACCT_TX_NODE = Enum.forString("pyraAcctTxNode");
        SRC_NODE = Enum.forString("srcNode");
        DST_NODE = Enum.forString("dstNode");
        BEG_PTS = Enum.forString("begPts");
        END_PTS = Enum.forString("endPts");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
