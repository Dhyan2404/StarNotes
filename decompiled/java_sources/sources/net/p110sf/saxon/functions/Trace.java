package net.p110sf.saxon.functions;

import androidx.core.app.C0619b;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.util.HashMap;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.lib.Logger;
import net.p110sf.saxon.lib.TraceListener;
import net.p110sf.saxon.ma.arrays.ArrayItem;
import net.p110sf.saxon.ma.map.MapItem;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Genre;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.trace.Traceable;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.util.Navigator;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.ObjectValue;

/* loaded from: classes11.dex */
public class Trace extends SystemFunction implements Traceable {

    /* renamed from: h */
    public Location f100324h = Loc.NONE;

    /* renamed from: net.sf.saxon.functions.Trace$a */
    /* loaded from: classes11.dex */
    public class C18378a implements SequenceIterator {

        /* renamed from: e */
        public final SequenceIterator f100325e;

        /* renamed from: f */
        public final String f100326f;

        /* renamed from: g */
        public final Logger f100327g;

        /* renamed from: h */
        public boolean f100328h = true;

        /* renamed from: i */
        public int f100329i = 0;

        public C18378a(SequenceIterator sequenceIterator, String str, Logger logger) {
            this.f100325e = sequenceIterator;
            this.f100326f = str;
            this.f100327g = logger;
        }

        @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f100325e.close();
        }

        @Override // net.p110sf.saxon.om.SequenceIterator
        public void discharge() {
            this.f100325e.discharge();
        }

        @Override // net.p110sf.saxon.om.SequenceIterator
        public Item next() {
            Item next = this.f100325e.next();
            this.f100329i++;
            if (next != null) {
                Trace.traceItem(next, this.f100326f + " [" + this.f100329i + ']', this.f100327g);
                this.f100328h = false;
            } else if (this.f100328h) {
                Trace.traceItem(null, this.f100326f + ": empty sequence", this.f100327g);
            }
            return next;
        }
    }

    public static void traceItem(Item item, String str, Logger logger) {
        if (item == null) {
            logger.info(str);
            return;
        }
        if (item instanceof NodeInfo) {
            logger.info(str + ": " + Type.displayTypeName(item) + ": " + Navigator.getPath((NodeInfo) item));
            return;
        }
        if (item instanceof AtomicValue) {
            logger.info(str + ": " + Type.displayTypeName(item) + ": " + item.getUnicodeStringValue());
            return;
        }
        if ((item instanceof ArrayItem) || (item instanceof MapItem)) {
            logger.info(str + ": " + item.toShortString());
            return;
        }
        if (item instanceof Function) {
            Function function = (Function) item;
            StructuredQName functionName = function.getFunctionName();
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(": function ");
            sb.append(functionName == null ? "(anon)" : functionName.getDisplayName());
            sb.append("#");
            sb.append(function.getArity());
            logger.info(sb.toString());
            return;
        }
        if (item.getGenre() != Genre.EXTERNAL) {
            logger.info(str + ": " + item.toShortString());
            return;
        }
        Object object = ((ObjectValue) item).getObject();
        logger.info(str + ": " + object.getClass().getName() + CloudStorageConstants.OPERATION_EQUAL + Err.truncate30(StringView.tidy(object.toString())));
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        Controller controller = xPathContext.getController();
        String stringValue = sequenceArr.length == 1 ? "*" : sequenceArr[1].head().getStringValue();
        if (!controller.isTracing()) {
            Logger traceFunctionDestination = controller.getTraceFunctionDestination();
            return traceFunctionDestination == null ? sequenceArr[0] : SequenceTool.toLazySequence(new C18378a(sequenceArr[0].iterate(), stringValue, traceFunctionDestination));
        }
        GroundedValue groundedValue = SequenceTool.toGroundedValue(sequenceArr[0].iterate());
        notifyListener(stringValue, groundedValue, xPathContext);
        return groundedValue;
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public int getCardinality(Expression[] expressionArr) {
        return expressionArr[0].getCardinality();
    }

    @Override // net.p110sf.saxon.expr.Locatable
    public Location getLocation() {
        return this.f100324h;
    }

    @Override // net.p110sf.saxon.trace.Traceable
    public StructuredQName getObjectName() {
        return null;
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public int getSpecialProperties(Expression[] expressionArr) {
        return expressionArr[0].getSpecialProperties();
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getStreamerName() {
        return androidx.tracing.Trace.f10464a;
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeFunctionCall(Expression... expressionArr) {
        Expression makeFunctionCall = super.makeFunctionCall(expressionArr);
        this.f100324h = makeFunctionCall.getLocation();
        return makeFunctionCall;
    }

    public void notifyListener(String str, Sequence sequence, XPathContext xPathContext) {
        HashMap hashMap = new HashMap();
        hashMap.put(C0619b.f5199k, str);
        hashMap.put("value", sequence);
        TraceListener traceListener = xPathContext.getController().getTraceListener();
        traceListener.enter(this, hashMap, xPathContext);
        traceListener.leave(this);
    }
}
