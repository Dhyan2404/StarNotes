package net.p110sf.saxon.event;

import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Iterator;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.SequenceReceiver;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.ma.arrays.ArrayItem;
import net.p110sf.saxon.ma.map.MapItem;
import net.p110sf.saxon.om.Genre;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.ItemConsumer;
import net.p110sf.saxon.om.NamePool;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.StringConstants;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.util.Orphan;

/* loaded from: classes11.dex */
public abstract class SequenceReceiver implements Receiver {
    protected PipelineConfiguration pipelineConfiguration;
    protected boolean previousAtomic = false;
    protected String systemId = null;

    /* renamed from: net.sf.saxon.event.SequenceReceiver$a */
    /* loaded from: classes11.dex */
    public static /* synthetic */ class C18280a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f99101a;

        static {
            int[] iArr = new int[Genre.values().length];
            f99101a = iArr;
            try {
                iArr[Genre.ATOMIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f99101a[Genre.EXTERNAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f99101a[Genre.ARRAY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f99101a[Genre.MAP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f99101a[Genre.FUNCTION.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f99101a[Genre.NODE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public SequenceReceiver(PipelineConfiguration pipelineConfiguration) {
        this.pipelineConfiguration = pipelineConfiguration;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void append(Item item) throws XPathException {
        m62516b(item, Loc.NONE, 524288);
    }

    @Override // net.p110sf.saxon.event.Receiver
    /* renamed from: append, reason: merged with bridge method [inline-methods] */
    public abstract void m62516b(Item item, Location location, int i) throws XPathException;

    public void decompose(Item item, Location location, int i) throws XPathException {
        if (item != null) {
            int i2 = C18280a.f99101a[item.getGenre().ordinal()];
            if (i2 == 1 || i2 == 2) {
                if (this.previousAtomic) {
                    characters(StringConstants.SINGLE_SPACE, location, 0);
                }
                characters(item.getUnicodeStringValue(), location, 0);
                this.previousAtomic = true;
                return;
            }
            if (i2 == 3) {
                flatten((ArrayItem) item, location, i);
                return;
            }
            if (i2 == 4 || i2 == 5) {
                String str = item instanceof MapItem ? Constant.MAP_TAG : "function item";
                String errorCodeForDecomposingFunctionItems = getErrorCodeForDecomposingFunctionItems();
                if (errorCodeForDecomposingFunctionItems.startsWith("SENR")) {
                    throw new XPathException("Cannot serialize a " + str + " using this output method", errorCodeForDecomposingFunctionItems, location);
                }
                throw new XPathException("Cannot add a " + str + " to an XDM node tree", errorCodeForDecomposingFunctionItems, location);
            }
            NodeInfo nodeInfo = (NodeInfo) item;
            int nodeKind = nodeInfo.getNodeKind();
            if ((nodeInfo instanceof Orphan) && ((Orphan) nodeInfo).isDisableOutputEscaping()) {
                characters(item.getUnicodeStringValue(), location, 1);
                this.previousAtomic = false;
                return;
            }
            if (nodeKind == 9) {
                startDocument(0);
                Iterator<? extends NodeInfo> it2 = nodeInfo.children().iterator();
                while (it2.hasNext()) {
                    m62516b(it2.next(), location, i);
                }
                this.previousAtomic = false;
                endDocument();
                return;
            }
            if (nodeKind != 2 && nodeKind != 13) {
                nodeInfo.copy(this, ReceiverOption.contains(i, 524288) ? 6 : 4, location);
                this.previousAtomic = false;
                return;
            }
            throw new XPathException("Sequence normalization: Cannot process free-standing " + (nodeKind == 2 ? "attribute" : Constants.ATTRNAME_NAMESPACE) + " node (" + nodeInfo.getDisplayName() + MotionUtils.f31762d, "SENR0001", location);
        }
    }

    public void flatten(ArrayItem arrayItem, final Location location, final int i) throws XPathException {
        Iterator<GroundedValue> it2 = arrayItem.members().iterator();
        while (it2.hasNext()) {
            SequenceTool.supply(it2.next().iterate(), new ItemConsumer() { // from class: com.sunia.HTREnginev2.zgm
                @Override // net.p110sf.saxon.om.ItemConsumer
                public final void accept(Item item) {
                    SequenceReceiver.this.m62516b(location, i, item);
                }
            });
        }
    }

    public final Configuration getConfiguration() {
        return this.pipelineConfiguration.getConfiguration();
    }

    public String getErrorCodeForDecomposingFunctionItems() {
        return getPipelineConfiguration().isXSLT() ? "XTDE0450" : "XQTY0105";
    }

    public NamePool getNamePool() {
        return this.pipelineConfiguration.getConfiguration().getNamePool();
    }

    @Override // net.p110sf.saxon.event.Receiver
    public final PipelineConfiguration getPipelineConfiguration() {
        return this.pipelineConfiguration;
    }

    @Override // javax.xml.transform.Result
    public String getSystemId() {
        return this.systemId;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public boolean handlesAppend() {
        return true;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void open() throws XPathException {
        this.previousAtomic = false;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void setPipelineConfiguration(PipelineConfiguration pipelineConfiguration) {
        this.pipelineConfiguration = pipelineConfiguration;
    }

    @Override // javax.xml.transform.Result
    public void setSystemId(String str) {
        this.systemId = str;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void setUnparsedEntity(String str, String str2, String str3) throws XPathException {
    }
}
